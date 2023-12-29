package human.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import human.dto.MemberDTO;
import human.util.DBConnection;

public class GmarketDAO extends DBConnection{
	
	public int join(MemberDTO dto) throws SQLException{
		int result = 0;
		
		String sql = "insert into tb_member_G (m_idx, member_id, member_pw, member_name, handphone, email, "
				+ "cardnumber, carddate, member_post_number, member_post, member_post2) "
				+ "values(gmarket_seq.nextval, ?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getMember_id());
		pstmt.setString(2, dto.getMember_pw());
		pstmt.setString(3, dto.getMember_name());
		pstmt.setString(4, dto.getHandphone());
		pstmt.setString(5, dto.getEmail());
		pstmt.setString(6, dto.getCardnumber());
		pstmt.setString(7, dto.getCarddate());
		pstmt.setString(8, dto.getMember_post_number());
		pstmt.setString(9, dto.getMember_post());
		pstmt.setString(10, dto.getMember_post2());
		result = pstmt.executeUpdate();
		
		
		return result;
	}
	
	public ArrayList<MemberDTO> getMembers() throws SQLException{
		ArrayList<MemberDTO> members = new ArrayList<>();
		
		String sql = "select * from tb_member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			MemberDTO dto = new MemberDTO();
			dto.setM_idx(rs.getInt("m_idx"));
			dto.setMember_id(rs.getString("member_id"));
			dto.setMember_pw(rs.getString("member_pw"));
			dto.setMember_name(rs.getString("member_name"));
			dto.setHandphone(rs.getString("handphone"));
			dto.setEmail(rs.getString("email"));
			dto.setGrade(rs.getInt("grade"));
			dto.setReg_date(rs.getDate("reg_date"));
			dto.setLast_modified_date(rs.getDate("last_modified_date"));
			dto.setCancel_or_not(rs.getInt("cancel_or_not"));
			
			members.add(dto);
			
		}
		
		
		
		return members;
		
	}
	public MemberDTO getMember(int m_idx) throws SQLException{
		String sql = "select * from tb_member_G where m_idx = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, m_idx);
		rs = pstmt.executeQuery();
		
		MemberDTO dto = null;
		if(rs.next()) {
			dto = new MemberDTO();
			dto.setM_idx(rs.getInt("m_idx"));
			dto.setMember_id(rs.getString("member_id"));
			dto.setMember_pw(rs.getString("member_pw"));
			dto.setMember_name(rs.getString("member_name"));
			dto.setHandphone(rs.getString("handphone"));
			dto.setEmail(rs.getString("email"));
			dto.setGrade(rs.getInt("grade"));
			dto.setReg_date(rs.getDate("reg_date"));
			dto.setLast_modified_date(rs.getDate("last_modified_date"));
			dto.setCancel_or_not(rs.getInt("cancel_or_not"));
			dto.setCardnumber(rs.getString("cardnumber"));
			dto.setCarddate(rs.getString("carddate"));
			dto.setMember_post_number(rs.getString("member_post_number"));
			dto.setMember_post(rs.getString("member_post"));
			dto.setMember_post2(rs.getString("member_post2"));
		}
		return dto;
	}
	public int CheckID(String member_id) throws SQLException {
		int result = 0;
		String sql = "select count(*) from tb_member where member_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member_id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			result = rs.getInt(1);
		}
		

		return result;
	}
	

	
	public MemberDTO login(String member_id, String member_pw) throws SQLException{
		MemberDTO dto=null;
		
		String sql = "select m_idx from tb_member_G where member_id=? and member_pw=? and cancel_or_not=0";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member_id);
		pstmt.setString(2, member_pw);
		rs = pstmt.executeQuery();

		if(rs.next()) {
			int m_idx = rs.getInt(1);
			dto = getMember(m_idx);
		}
		
		return dto;
	}

	
	public MemberDTO updateMember(MemberDTO dto) throws SQLException {
		MemberDTO newDto = null;
		String sql = "update tb_member_G set member_pw=?, member_name=?, handphone=?, email=?, "
				+ "last_modified_date=sysdate"
				+ ", cardnumber=?, carddate=?, member_post_number=?, "
				+ "member_post=?, member_post2=?"
				+ " where m_idx=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getMember_pw());
		pstmt.setString(2, dto.getMember_name());
		pstmt.setString(3, dto.getHandphone());
		pstmt.setString(4, dto.getEmail());
		pstmt.setString(5, dto.getCardnumber());
		pstmt.setString(6, dto.getCarddate());
		pstmt.setString(7, dto.getMember_post_number());
		pstmt.setString(8, dto.getMember_post());
		pstmt.setString(9, dto.getMember_post2());
		pstmt.setInt(10, dto.getM_idx());
		
		
		if(pstmt.executeUpdate() == 1) {//회원정보 업데이트 성공
			newDto = getMember(dto.getM_idx());
		}else {
			
		}
		
		return newDto;
	}
	
	public MemberDTO deleteMember(MemberDTO dto) throws SQLException {
		MemberDTO newDto = null;
		
		String sql = "update tb_member_G set cancel_or_not = 1 "
				+ " where m_idx=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, dto.getM_idx());
		
		if(pstmt.executeUpdate() == 1) {//회원정보 업데이트 성공
			newDto = getMember(dto.getM_idx());
		}else {
			
		}
		
		
		return newDto;
	}

	public int checkId(String member_id) throws SQLException {
		int result = 0;
		
		String sql = "select count(*) from tb_member_G where member_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member_id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
				
		return result;
	}
	
	
	

}
