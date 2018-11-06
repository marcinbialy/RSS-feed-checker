<?php
$html = "";
$back = "<h3><a href='index.php' style='text-decoration:none; color:red;'>Back</a></h3>";
if (isset($_GET['rmf24'])) {
	@$url = "https://www.rmf24.pl/sport/feed";
	@$xml = simplexml_load_file($url);
	if ($xml) {
		// loop - limit to 5 items
		for($i = 0; $i < 5; $i++){
			$title = $xml->channel->item[$i]->title;
			$link = $xml->channel->item[$i]->link;
			$description = $xml->channel->item[$i]->description;
			$pubDate = $xml->channel->item[$i]->pubDate;

			// output data
			$html .= "<a href='$link'><h3>$title</h3></a>";
			$html .= "$description<br />";
			$html .= "<br />$pubDate<br />";

			//form for database
			$html .= "<form action='query.php' method='post'>";
		    $html .= "<input type='text' placeholder='$title' name='title' value='$title' hidden/><br/>";
			$html .= "<input type='text' placeholder='$description' name='description' value='$description' hidden/><br />";
			$html .= "<br /><input type='text'placeholder='$pubDate' name='pubDate' value='$pubDate' hidden/><br /><br/>";
			$html .="<input type='submit' value='Add to database'><hr />";
			$html .= "</form>";		
		}
		echo $html;
		echo $back;	
		exit();
	}else echo "Error: We can't load this website!<br/>".$back;
	
		
}else if(isset($_GET['komputerswiat'])){
	@$url = "https://www.komputerswiat.pl/.feed";
	@$xml = simplexml_load_file($url);
	if ($xml) {
		for($i = 0; $i < 5; $i++){
			$title = $xml->entry[$i]->title;
			$link = $xml->entry[$i]->link['href'];
			$description = $xml->entry[$i]->summary;
			$pubDate = $xml->entry[$i]->published;

		    $html .= "<a href='$link'><h3>$title</h3></a>";
			$html .= "$description<br />";
			$html .= "<br />$pubDate<br />";

			$html .= "<form action='query.php' method='post'>";
		    $html .= "<input type='text' placeholder='$title' name='title' value='$title' hidden/><br/>";
			$html .= "<input type='text' placeholder='$description' name='description' value='$description' hidden/><br />";
			$html .= "<br /><input type='text'placeholder='$pubDate' name='pubDate' value='$pubDate' hidden/><br /><br/>";
			$html .="<input type='submit' value='Add to database'><hr />";
			$html .= "</form>";		
		}
	echo $html;
	echo $back;	
	exit();
	}else echo "Error: We can't load this website!<br/>".$back;
		
}else if(isset($_GET['xmoon'])){
	@$url = "http://xmoon.pl/rss/moto.xml";
	@$xml = simplexml_load_file($url);
	if ($xml) {
		for($i = 0; $i < 5; $i++){
			$title = $xml->entry[$i]->title;
			$link = $xml->entry[$i]->link['href'];
			$description = $xml->entry[$i]->content;
			$pubDate = $xml->entry[$i]->published;
			
		    $html .= "<a href='$link'><h3>$title</h3></a>";
			$html .= "$description <br />";
			$html .= "<br />$pubDate<br />";

			$html .= "<form action='query.php' method='post'>";
		    $html .= "<input type='text' placeholder='$title' name='title' value='$title' hidden/><br/>";
			$html .= "<input type='text' placeholder='$description' name='description' value='$description' hidden/><br />";
			$html .= "<br /><input type='text'placeholder='$pubDate' name='pubDate' value='$pubDate' hidden/><br /><br/>";
			$html .="<input type='submit' value='Add to database'><hr />";
			$html .= "</form>";		
		}
	echo $html;
	echo $back;	
	exit();
	}else echo "Error: We can't load this website!<br/>".$back;
		
}else echo "NOT FOUND";

?>