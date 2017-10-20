package membership;

public class memDTO {
	int num;
	String mem_id;
	String mem_pwd;
	String repwd;
	String mem_email;
	String mem_name;
	String mem_gender;
	
	
	public memDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public memDTO(int num) {
		super();
		this.num = num;
	}


	public memDTO(String mem_id, String mem_pwd, String mem_email, String mem_name, String mem_gender) {
		super();
		this.mem_id = mem_id;
		this.mem_pwd = mem_pwd;
		this.mem_email = mem_email;
		this.mem_name = mem_name;
		this.mem_gender = mem_gender;
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	public String getMem_pwd() {
		return mem_pwd;
	}


	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}


	public String getMem_email() {
		return mem_email;
	}


	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}


	public String getMem_name() {
		return mem_name;
	}


	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}


	public String getRepwd() {
		return repwd;
	}


	public void setRepwd(String repwd) {
		this.repwd = repwd;
	}


	public String getMem_gender() {
		return mem_gender;
	}


	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	
	
}
