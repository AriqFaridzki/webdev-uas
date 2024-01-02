<?php


namespace App\Helpers;

use Illuminate\Http\Request;


class jsonResponseHelper {
    protected $message, $statusCode, $header,$processStatus;
    protected  $responseMessage;


    public function jsonResponseHelper($processStatus, $statusCode, $header, $responseMessage){
        $this->$statusCode = $statusCode;
        $this->$header = $header;
        $this->$processStatus = $processStatus;
        $this->$message = [
            'status' => $this->processStatus,
            'message' => $this->responseMessage];
    }


    
    public function response(){
            return response()->json(
                $this->message,
                $this->statusCode,
                $this->header);
    }
    
}


