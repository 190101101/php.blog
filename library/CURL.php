<?php 

namespace library;

class CURL
{
    public static function get($url)
    {
        $CURL = CURL_INIT($url);
        
        CURL_SETOPT($CURL, CURLOPT_SSL_VERIFYPEER, FALSE);
        
        CURL_SETOPT($CURL, CURLOPT_RETURNTRANSFER, TRUE);
        
        CURL_SETOPT($CURL, CURLOPT_HEADER, FALSE);
        
        $EXEC = CURL_EXEC($CURL);
        
        CURL_CLOSE($CURL);
        
        return $EXEC;
    }    
    
    public static function post($url, $data = [])
    {
        $CURL = CURL_INIT($url);

        CURL_SETOPT($CURL, CURLOPT_POST, 1);
        
        CURL_SETOPT($CURL, CURLOPT_POSTFIELDS, http_build_query($data));
        
        CURL_SETOPT($CURL, CURLOPT_SSL_VERIFYPEER, TRUE);
        
        CURL_SETOPT($CURL, CURLOPT_RETURNTRANSFER, TRUE);

        CURL_SETOPT($CURL, CURLOPT_HEADER, FALSE);

        CURL_SETOPT($CURL, CURLOPT_COOKIEJAR, 'cookie.txt'); 

        CURL_SETOPT($CURL, CURLOPT_COOKIEFILE, 'cookie.txt');

        $exec = CURL_EXEC($CURL);
        
        CURL_CLOSE($CURL);

        return $exec;
    }
}

/*

$CURL = new \library\CURL;

dd(library\CURL::post('https://textbelt.com/text', [
    'phone' => '+994519886699',
    'message' => 'meni saxlamaq olaaaar qaqaşşşşşş?...',
    'key' => '6afd8f514da99a125a6cd6fa14fa54c1955fa135Pv5cjKHcx4f0PbPVOmF4Ik0tM',
]));


$CURL = new \library\CURL;

$json = $CURL->get('https://www.donationalerts.com/api/getisswidgetdata?callback=jQuery1121043241643668003604_1671985471258&widget_id=1470394&token=Gep6zs79rUvK1r4rJWFD&_=1671985471259');


dd($json);
*/


