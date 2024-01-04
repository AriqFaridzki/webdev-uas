<?php


namespace App\Helpers;

use Nette\Utils\Arrays;

class jsonResponseHelper {
    protected $messages, $statusCode, $header,$processStatus;
    protected  $responsemessages, $error, $data;


    public function __construct(bool $processStatus, int $statusCode,string $responsemessages,$data=[],$header=[], $error=null){
        $this->processStatus = $processStatus;
        $this->statusCode = $statusCode;
        $this->header = $header;
        $this->responsemessages = $responsemessages;
        $this->messages = [
            'status' => $this->processStatus,
            'statusCode' => $this->statusCode,
            'messages' => $this->responsemessages,
            'errorMsg' => $this->error,
            'data' => $data,
        ];
     }
     


     public function jsonResponseWithData(){
        return response()->json(
            $this->messages,
            $this->statusCode,
            $this->header,
        );
     }

    
     public function jsonResponse(){
        return response()->json(
            $this->messages,
            $this->statusCode,
            $this->header,

        );
     }

     
    
}


