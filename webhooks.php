<?php 

require "vendor/autoload.php";
// include "admin/config.php";
require_once('vendor/linecorp/line-bot-sdk/line-bot-sdk-tiny/LINEBotTiny.php');

$access_token = "Yc7epxagkTDtxlDZVmNicqE921hrLs3jn6fH/IWym3c1Wf7wHTuG7CfHoSuROOXiq0QGv37GiIHuMZvYVbAfcySjFifvh2kFd4/5azEHb1ZzyFvkFI6gQKR9JfBN1gdxwopvrIqeGf2hS1JD1BJ2eQdB04t89/1O/w1cDnyilFU=";

$content = file_get_contents('php://input');
$events = json_decode($content, true);


if (!is_null($events['events'])) {
	foreach ($events['events'] as $event) {
	
		if ($event['type'] == 'message' && $event['message']['type'] == 'text') {
			
			error_log($event['message']['text']);
			$text = $event['message']['text'];
			$replyToken = $event['replyToken'];
			## เปิดสำหรับใช้่งาน mysql message
			// $text = searchMessage($text ,$conn);
			$messages = setText($text);
			//$messages = setFlex();
			sentToLine( $replyToken , $access_token  , $messages );
		}
	}
}


function setText($text){
	$messages = '{
		"type" : "text",
		"text" : "'.$text.'"
	}';
}

function setCon($text){
	if($conn->connect_errno){
		$messages = '{
			"type" : "text",
			"text" : "Failed"
		}';
		return $messages;
	}else{
		$getText = $mysql->query("SELECT * FROM `fixcar` WHERE `f_tel`='$text'");
		$getNum = $getText->num_rows;
		
		while($row = $getText->fetch_assoc()) {
				$messages = [];
				$messages['type'] = 'text';
				$messages['text'] = $row['type_idfix'];
				return $messages;
			}
			return $messages;
	}
}

function sentToLine($replyToken , $access_token  , $messages ){
	error_log("send");
	$url = 'https://api.line.me/v2/bot/message/reply';
	
	$data = '{
		"replyToken" : "'. $replyToken .'" ,
		"messages" : ['. $messages .']
	}';
	$post = $data;

	error_log($post);
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
	error_log($result);
	error_log("send ok");
}

