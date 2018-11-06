<?php

require_once "connect.php";

// connect with database
$connect = @new mysqli($host, $db_user, $db_password, $db_name);

// check if is connect error
if ($connect->connect_errno!=0) 
{
	echo "Error: ".$connect->connect_errno."<br />".$back;
	exit();
}else{
	// load variables to file
	$title = $_POST['title'];
	$description = $_POST['description'];
	$pubDate = $_POST['pubDate'];
	@$back = "<h3><a href='index.php' style='text-decoration:none; color:red;'>Return to RSS feed selection</a></h3>";

	// change data format before add to database
	$pubDate = date("Y-m-d h:i:s", strtotime($pubDate));

	// protect against SQL injection 
	$title = htmlentities($title, ENT_QUOTES, "UTF-8");
	$description = htmlentities($description, ENT_QUOTES, "UTF-8");
	$pubDate = htmlentities($pubDate, ENT_QUOTES, "UTF-8");

	$select = sprintf("SELECT title, pubdate FROM data WHERE title='%s' AND pubdate='%s'", $title, $pubDate);
	$sql = sprintf("INSERT INTO data (id, title, description, pubdate, savedate) VALUES (NULL,'%s', '%s', '%s', now())", $title, $description, $pubDate);
	
	// check if selected item exist in database
	if($output = @$connect->query($select)){
		$record_count = $output->num_rows;
		if ($record_count > 0) {
			echo "This article is already in the database!"."<br />".$back;
			$output->free_result();
		}else{
			// add new item to database
			if ($result = @$connect->query($sql)) {
    			echo "New record created successfully";
    			echo $back;
			} else {
	    		echo "Error: ".$connect->error."<br />".$back;
			}
		}
	}else{
		echo "Error: ".$connect->error."<br />".$back;
	}
	//close connection with database
	$connect->close();	
}

?>