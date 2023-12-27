package human.dto;

import java.util.Date;

//DTO(Data Transfer Object): 데이터를 저장하고 전달하는 역할을 하는 자바클래스
//회원DTO는 tb_member테이블의 컬럼명 개수와 같이 필드 선언

public class MemberDTO {
	private int m_idx;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String handphone;
	private String email;
	private int grade;
	private Date reg_date;
	private Date last_modified_date;
	private int cancel_or_not;
	private String cardnumber;
	private String carddate;
	private String member_post_number;
	private String member_post;
	private String member_post2;
	
	
	public int getM_idx() {
		return m_idx;
	}
	public String getCardnumber() {
		return cardnumber;
	}
	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	public String getCarddate() {
		return carddate;
	}
	public void setCarddate(String carddate) {
		this.carddate = carddate;
	}
	public String getMember_post_number() {
		return member_post_number;
	}
	public void setMember_post_number(String member_post_number) {
		this.member_post_number = member_post_number;
	}
	public String getMember_post() {
		return member_post;
	}
	public void setMember_post(String member_post) {
		this.member_post = member_post;
	}
	public String getMember_post2() {
		return member_post2;
	}
	public void setMember_post2(String member_post2) {
		this.member_post2 = member_post2;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	public Date getLast_modified_date() {
		return last_modified_date;
	}
	public void setLast_modified_date(Date last_modified_date) {
		this.last_modified_date = last_modified_date;
	}
	public int getCancel_or_not() {
		return cancel_or_not;
	}
	public void setCancel_or_not(int cancel_or_not) {
		this.cancel_or_not = cancel_or_not;
	}
	public MemberDTO () {}
	public MemberDTO(String member_id, String member_pw, 
			String member_name, String handphone, String email) {
		
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.handphone = handphone;
		this.email = email;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getHandphone() {
		return handphone;
	}
	public void setHandphone(String handphone) {
		this.handphone = handphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "아이디:"+member_id+", 비밀번호:"+member_pw+", 이름:"+member_name+", 핸드폰:"+handphone+", 이메일:"+email;
	}
	
	//HashSet에서 동일한 값의 필드가 입력되어 있으면 동일한 데이터로 인식하도록
	//hashCode(), equals() 메소드를 재정의함
	@Override
	public int hashCode() {
		//String클래스는 주소값이 아니라 내용에 대한 해시코드값을 반환하도록 재정의되어 있음
		return member_id.hashCode()+member_pw.hashCode()+member_name.hashCode()+
				handphone.hashCode()+email.hashCode();
	}
	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		if(obj instanceof MemberDTO) {
			MemberDTO m = (MemberDTO)obj;
			if(member_id.equals(m.getMember_id()) && member_pw.equals(m.getMember_pw())&&
			   member_name.equals(m.getMember_name()) && handphone.equals(m.getHandphone())&&
			   email.equals(m.getEmail())) {
				
				result = true;
			}
		}
		return result;
	}
	
}
