<?php
    $accessToken = "kXdfls6It3lyh2WvkCr33XWEuxOHjcJdq4r8M42xNewcWom2P8yuQc6T719yC61DDpGsvrNkXWe/W4RHjexZGflI7/7L5ZYwKjCFWeRx02i6LbqMHE8qdmdcoVjcY1HmRIIsOwhNz5xJw61TJUPr1QdB04t89/1O/w1cDnyilFU=";//copy Channel access token ตอนที่ตั้งค่ามาใส่
    
    $content = file_get_contents('php://input');
    $arrayJson = json_decode($content, true);
    
    $arrayHeader = array();
    $arrayHeader[] = "Content-Type: application/json";
    $arrayHeader[] = "Authorization: Bearer {$accessToken}";
    
    //รับข้อความจากผู้ใช้
        
    $message = $arrayJson['events'][0]['message']['text'];

    $message = explode(" " , $message);


    if($message[0] == "-find"){
        $clli=$message[1];
        $res = requestURL("https://www.6touch.com/project/findloc/dblochook.php?name=" .$clli);
        $res = Json_decode ($res, true);

        if(sizeof($res)>0){
            $arrayPostData['replyToken'] = $arrayJson['events'][0]['replyToken'];
            $arrayPostData['messages'][0]['type'] = "text";
            $arrayPostData['messages'][0]['text'] = "Site Name: ".$res[0] ["site"]. ", Equipment: " .$res[0] ["equipment"]. ", Network name: " .$res[0] ["network_name"];
            $arrayPostData['messages'][1]['type'] = "text";
            $arrayPostData['messages'][1]['text'] = "CLLI: ".$res[0] ["clli"]. ", Vendor: " .$res[0] ["vendor"];
            $arrayPostData['messages'][2]['type'] = "text";
            $arrayPostData['messages'][2]['text'] = "Row: ".$res[0] ["row_"]. ", Rack: " .$res[0] ["rack"];
            $arrayPostData['messages'][3]['type'] = "text";
            $arrayPostData['messages'][3]['text'] = "Owner: ".$res[0] ["supervisor"]. ", Tel: " .$res[0] ["tel"];
            $arrayPostData['messages'][4]['type'] = "text";
            $arrayPostData['messages'][4]['text'] = "Power Source A: ".$res[0] ["source_a"]. ", Power Source B: " .$res[0] ["source_b"];

         #   $arrayPostData['messages'][3]['type'] = "location";
         #   $arrayPostData['messages'][3]['title'] = "RSU:".$res[0] ["site_name"];
         #   $arrayPostData['messages'][3]['address'] =  .$res[0] ["lati"]. " " .$res[0] ["longi"];
         #   $arrayPostData['messages'][3]['latitude'] = .$res[0] ["lati"];
         #   $arrayPostData['messages'][3]['longitude'] = .$res[0] ["longi"];
            replyMsg($arrayHeader,$arrayPostData);
        }
        else{
            $arrayPostData['replyToken'] = $arrayJson['events'][0]['replyToken'];
            $arrayPostData['messages'][0]['type'] = "text";
            $arrayPostData['messages'][0]['text'] = "ไม่เจออ่ะ";
            replyMsg($arrayHeader,$arrayPostData);
        }
    }


function replyMsg($arrayHeader,$arrayPostData){
        $strUrl = "https://api.line.me/v2/bot/message/reply";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$strUrl);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $arrayHeader);    
        curl_setopt($ch, CURLOPT_POSTFIELDS,json_encode($arrayPostData));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $result = curl_exec($ch);
        curl_close ($ch);
    }

function requestURL($url){
        $curl = curl_init();
        curl_setopt_array($curl, array(
        CURLOPT_URL => $url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMERREQUEST => "GET",
        CURLOPT_HTTPHEADER => array("Cache-Contal: no-cache",),
        ));
        $res = curl_exec($curl);
        curl_close($curl);

        return $res;
    }
   exit;
?>