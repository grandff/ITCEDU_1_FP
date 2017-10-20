package board;

public class BoardDTO {
	int BOD_NO;
	String BOD_NAME, BOD_PWD, BOD_SUBJECT, BOD_CONTENT, BOD_IMG, BOD_LOGTIME;
	BoardDTO(){}
	
	public BoardDTO(int bOD_NO, String bOD_LOGTIME) {
		super();
		BOD_NO = bOD_NO;
		BOD_LOGTIME = bOD_LOGTIME;
	}

	public BoardDTO(String bOD_NAME, String bOD_PWD, String bOD_SUBJECT, String bOD_CONTENT, String bOD_IMG) {
		super();
		BOD_NAME = bOD_NAME;
		BOD_PWD = bOD_PWD;
		BOD_SUBJECT = bOD_SUBJECT;
		BOD_CONTENT = bOD_CONTENT;
		BOD_IMG = bOD_IMG;
	}

	public int getBOD_NO() {
		return BOD_NO;
	}

	public void setBOD_NO(int bOD_NO) {
		BOD_NO = bOD_NO;
	}

	public String getBOD_NAME() {
		return BOD_NAME;
	}

	public void setBOD_NAME(String bOD_NAME) {
		BOD_NAME = bOD_NAME;
	}

	public String getBOD_PWD() {
		return BOD_PWD;
	}

	public void setBOD_PWD(String bOD_PWD) {
		BOD_PWD = bOD_PWD;
	}

	public String getBOD_SUBJECT() {
		return BOD_SUBJECT;
	}

	public void setBOD_SUBJECT(String bOD_SUBJECT) {
		BOD_SUBJECT = bOD_SUBJECT;
	}

	public String getBOD_CONTENT() {
		return BOD_CONTENT;
	}

	public void setBOD_CONTENT(String bOD_CONTENT) {
		BOD_CONTENT = bOD_CONTENT;
	}

	public String getBOD_IMG() {
		return BOD_IMG;
	}

	public void setBOD_IMG(String bOD_IMG) {
		BOD_IMG = bOD_IMG;
	}

	public String getBOD_LOGTIME() {
		return BOD_LOGTIME;
	}

	public void setBOD_LOGTIME(String bOD_LOGTIME) {
		BOD_LOGTIME = bOD_LOGTIME;
	};
	
	
	
}
