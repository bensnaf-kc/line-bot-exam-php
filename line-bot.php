<?php 
include('connect.php');
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
			$messages = setText($text);
			sentToLine( $replyToken , $access_token  , $messages );
		}
	}
}


function setText($text){
	$messages = '{
		"type" : "text",
		"text" : "'.$text.'"
	}';
	return $messages;
}

function setFind($text){
	if($conn->connect_errno){
		$messages = '{
		"type" : "text",
		"text" : "Failed to connect"
		}';
		return $messages;
	}else{
		$sql = "SELECT * FROM fixcar WHERE f_tel = '$text'";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				if($row['type_idfix'] == 1){
					$messages = '{
						"type" : "text",
						"text" : "รอดำเนินการ"
					}';
				}
				else if($row['type_idfix'] == 2){
					$messages = '{
						"type" : "text",
						"text" : "กำลังซ่อม"
					}';
				}
				else if($row['type_idfix'] == 3){
					$messages = '{
						"type" : "text",
						"text" : "ซ่อมสำเร็จ"
					}';
				}
				else if($row['type_idfix'] == 4){
					$messages = '{
						"type" : "text",
						"text" : "รอการชำระเงิน"
					}';
				}
				else if($row['type_idfix'] == 5){
					$messages = '{
						"type" : "text",
						"text" : "ชำระเงินเรียบร้อย"
					}';
				}
				else if($row['type_idfix'] == 6){
					$messages = '{
						"type" : "text",
						"text" : "ระงับ"
					}';
				}
			}
		} else {
			$messages = '{
				"type" : "text",
				"text" : "กรุณาพิมพ์ใหม่!"
			}';
		}
		$conn->close();
		return $message;
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
?>

