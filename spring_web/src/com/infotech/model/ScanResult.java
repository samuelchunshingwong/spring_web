package com.infotech.model;
import org.springframework.http.HttpStatus;
import lombok.ToString;

@ToString
public class ScanResult{
	private String fileName;
	private HttpStatus respCode;
	private String errMsg;
	
	public ScanResult(String fileName, HttpStatus respCode, String errMsg) {
		this.fileName = fileName;
		this.respCode = respCode;
		this.errMsg = errMsg;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public HttpStatus getRespCode() {
		return respCode;
	}

	public void setRespCode(HttpStatus respCode) {
		this.respCode = respCode;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
	
}