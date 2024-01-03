<?php


namespace App\Helpers;

use Nette\Utils\Arrays;

class jsonResponseHelper {
    protected $message, $statusCode, $header,$processStatus;
    protected  $responseMessage, $error;


    public function __construct(bool $processStatus, int $statusCode,string $responseMessage, $header=[], $error=null){
        $this->processStatus = $processStatus;
        $this->statusCode = $statusCode;
        $this->header = $header;
        $this->responseMessage = $responseMessage;
        $this->message = [
            'status' => $this->processStatus,
            'statusCode' => $this->statusCode,
            'message' => $this->responseMessage,
            'errorMsg' => $this->error
        ];
     }
     


    
     public function jsonResponse(){
        return response()->json(
            $this->message,
            $this->statusCode,
            $this->header);
     }
    
}


