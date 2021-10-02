<?php
 $LINEData = file_get_contents('php://input');
 $jsonData = json_decode($LINEData,true);
 $replyToken = $jsonData["events"][0]["replyToken"];
 $text = $jsonData["events"][0]["message"]["text"];
 
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
 
 function sendMessage($replyJson, $token){
   $ch = curl_init($token["URL"]);
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
   curl_setopt($ch, CURLINFO_HEADER_OUT, true);
   curl_setopt($ch, CURLOPT_POST, true);
   curl_setopt($ch, CURLOPT_HTTPHEADER, array(
       'Content-Type: application/json',
       'Authorization: Bearer ' . $token["AccessToken"])
       );
   curl_setopt($ch, CURLOPT_POSTFIELDS, $replyJson);
   $result = curl_exec($ch);
   curl_close($ch);
return $result;
}
 
 $getText = $mysql->query("SELECT * FROM `fixcar` WHERE `f_tel`='$text' or f_line = '$text'");
 $getuserNum = $getText->num_rows;
 
 if ($getuserNum == "0"){
     $message = '{
     "type" : "text",
     "text" : "ไม่มีข้อมูลที่ต้องการ"
     }';
     $replymessage = json_decode($message);
 } else {
  
   while($row = mysqli_fetch_array($getText)){
   	$Textcar = $row[0];
   }
   $sql_findCar = $mysql->query("SELECT * FROM `car` WHERE `id_fix`='$Textcar'");
	 while($row_car = mysqli_fetch_array($getText)){
	 	if($rowcar['type_idfix'] == 1 ){
			$mess_car = '{
			"type" : "text",
			"text" : "รอดำเนินการ"
			}';
			$replymessage = json_decode($mess_car);
		}
		if($rowcar['type_idfix'] == 2 ){
			$mess_car = '{
			"type" : "text",
			"text" : "กำลังซ่อม"
			}';
			$replymessage = json_decode($mess_car);
		}
		if($rowcar['type_idfix'] == 3 ){
			$mess_car = '{
			"type" : "text",
			"text" : "รอการชำระ"
			}';
			$replymessage = json_decode($mess_car);
		}
		if($rowcar['type_idfix'] == 4 ){
			$mess_car = '{
			"type" : "text",
			"text" : "ชำระเรียบร้อย"
			}';
			$replymessage = json_decode($mess_car);
		}
		if($rowcar['type_idfix'] == 5 ){
			$mess_car = '{
			"type" : "text",
			"text" : "ระงับ"
			}';
			$replymessage = json_decode($mess_car);
		}
	 }
 }
 
 $lineData['URL'] = "https://api.line.me/v2/bot/message/reply";
 $lineData['AccessToken'] = "Yc7epxagkTDtxlDZVmNicqE921hrLs3jn6fH/IWym3c1Wf7wHTuG7CfHoSuROOXiq0QGv37GiIHuMZvYVbAfcySjFifvh2kFd4/5azEHb1ZzyFvkFI6gQKR9JfBN1gdxwopvrIqeGf2hS1JD1BJ2eQdB04t89/1O/w1cDnyilFU=";
 $replyJson["replyToken"] = $replyToken;
 $replyJson["messages"][0] = $replymessage;
 
 $encodeJson = json_encode($replyJson);
 
 $results = sendMessage($encodeJson,$lineData);
 echo $results;
 http_response_code(200);
