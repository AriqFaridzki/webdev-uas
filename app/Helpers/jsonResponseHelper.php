<?php


namespace App\Helpers;

use Nette\Utils\Arrays;

class jsonResponseHelper {
    protected $message, $statusCode, $header,$processStatus;
    protected  $responseMessage, $error, $data;


    public function __construct(bool $processStatus, int $statusCode,string $responseMessage ,$header=[], $error=null){
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
            $this->header,
        );
     }

     public function jsonResponseWithData($data = []){
        return response()->json(
            array_merge($this->message, ['data' => $data]),
            $this->statusCode,
            $this->header,
        );
     }
    
}


