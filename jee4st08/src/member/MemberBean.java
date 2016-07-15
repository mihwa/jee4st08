/**
 * 
 */
package member;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 * @date   :2016. 6. 16. 
 * @author :pakjkwan@gmail.com
 * @file   :Student.java
 * @story  :
*/
public class MemberBean {
	private String id,pw,name,regDate,gender,ssn,profileImg,email; 
	private int birth;
	
	public MemberBean() {}
	
	public MemberBean(String id,String pw,String name,String ssn) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.ssn = ssn;
		String now = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis()));
		this.regDate = now;
		String[] ssnArr = ssn.split("-");
		String[] nowArr = now.split("-");
		int ssnBirth = (Integer.parseInt(ssnArr[0]));
		int ssnGender = (Integer.parseInt(ssnArr[1]));
		int thisYear= (Integer.parseInt(nowArr[0]));
		int ageResult0 = 0;
		switch ( ssnGender%2) {
		case 1: case 5: 
			this.gender="남"; 
			System.out.println("올해:"+thisYear);
			//ageResult0 = ageResult2 - 1900-(ageResult1/10000);
			//나이를 구하려고 했으나 일단보류
			this.birth =ssnBirth;
			break;
		case 3: case 7:
			this.gender="남"; 
			
			this.birth =ssnBirth;
			break;
		case 2: case 6:
			this.gender="여";
		
			this.birth =ssnBirth;
			break;
		case 4: case 8:
			this.gender="여";
		
			this.birth =ssnBirth;
			break;
		default:
			System.out.println("잘못된값이 입력됨");
		}
	}
	
	public String getEmail() {
		return email;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate() {
		String now = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis()));
		this.regDate = now;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGenderAndBirth(String snn) {
		this.gender = gender;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	
	public int getBirth() {
		return birth;
	}

	public void setBirth(int birth) {
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "MemberBean [아이디=" + id + ", 비밀번호=" + pw + ", 이름=" + name + ", regDate=" + regDate + ", gender=" + gender
				+ ", ssn=" + ssn + ", profileImg=" + profileImg + ", 이메일=" + email + ", birth=" + birth + "]";
	}

	public void setEmail(String string) {
		// TODO Auto-generated method stub
		
	}
	

}

