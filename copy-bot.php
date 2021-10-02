<?php // callback.php

require "vendor/autoload.php";
require_once('vendor/linecorp/line-bot-sdk/line-bot-sdk-tiny/LINEBotTiny.php');

$servername = "localhost";
 $username = "root";
 $password = "";
 $dbname = "db_systemgarage";
 $mysql = new mysqli($servername, $username, $password, $dbname);
 mysqli_set_charset($mysql, "utf8");
 
 if ($mysql->connect_error){
 $errorcode = $mysql->connect_error;
 print("MySQL(Connection)> ".$errorcode);
 }

$access_token = 'Yc7epxagkTDtxlDZVmNicqE921hrLs3jn6fH/IWym3c1Wf7wHTuG7CfHoSuROOXiq0QGv37GiIHuMZvYVbAfcySjFifvh2kFd4/5azEHb1ZzyFvkFI6gQKR9JfBN1gdxwopvrIqeGf2hS1JD1BJ2eQdB04t89/1O/w1cDnyilFU=';

// Get POST body content
$content = file_get_contents('php://input');
// Parse JSON
$events = json_decode($content, true);
// Validate parsed JSON data
if (!is_null($events['events'])) {
	// Loop through each event
	foreach ($events['events'] as $event) {
		// Reply only when message sent is in 'text' format
		if ($event['type'] == 'message' && $event['message']['type'] == 'text') {
			// Get text sent
			$text = $event["message"]["text"];
			$getText = $mysql->query("SELECT * FROM `fixcar` WHERE `f_tel`='$text' or f_line = '$text'");
 			$getuserNum = $getText->num_rows;
			// Get replyToken
			$replyToken = $event['replyToken'];

			// Build message to reply back
			if ($getuserNum == "0"){
			     $messages = [
			     "type" => "text",
			     "text" => "ไม่มีข้อมูลที่ต้องการ"
			     ];
			 } else {

// 			   while($row = mysqli_fetch_array($getText)){
// 				$Textcar = $row[0];
// 			   }
// 			   $sql_findCar = $mysql->query("SELECT * FROM `car` WHERE `id_fix`='$Textcar'");
// 				 while($row_car = mysqli_fetch_array($getText)){
// 					if($rowcar['type_idfix'] == 1 ){
// 						$messages = [
// 						"type" => "text",
// 						"text" => "รอดำเนินการ"
// 						];
// 					}
// 					else if($rowcar['type_idfix'] == 2 ){
// 						$messages = [
// 						"type" => "text",
// 						"text" => "กำลังซ่อม"
// 						];
// 					}
// 					else if($rowcar['type_idfix'] == 3 ){
// 						$messages = [
// 						"type" => "text",
// 						"text" => "รอการชำระ"
// 						];
// 					}
// 					else if($rowcar['type_idfix'] == 4 ){
// 						$messages = [
// 						"type" => "text",
// 						"text" => "ชำระเรียบร้อย"
// 						];
// 					}
// 					else if($rowcar['type_idfix'] == 5 ){
// 						$messages = [
// 						"type" => "text",
// 						"text" => "ระงับ"
// 						];
// 					}
// 				 }
// 			 }
			$messages = [
			     "type" => "text",
			     "text" => "ไม่มีข้อมูลที่ต้องการ"
			     ];
			
			// Make a POST Request to Messaging API to reply to sender
			$url = 'https://api.line.me/v2/bot/message/reply';
			$data = [
				'replyToken' => $replyToken,
				'messages' => [$messages],
			];
			$post = json_encode($data);
			$headers = array('Content-Type: application/json', 'Authorization: Bearer ' . $access_token);

			$ch = curl_init($url);
			curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
			curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
			curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
			$result = curl_exec($ch);
			curl_close($ch);

			echo $result . "\r\n";
		}
	}
}
echo "OK";
