package test.file.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import test.file.dto.FileDto;
import test.util.DbcpBean;

public class FileDao {
   //static 필드
   private static FileDao dao;
   //외부에서 객체 생성하지 못하도록 생성자를 private 로
   private FileDao() {}
   //자신의 참조값을 리턴해주는 메소드
   public static FileDao getInstance() {
      if(dao==null) {
         dao=new FileDao();
      }
      return dao;
   } 
   
   public List<FileDto> getList(){
	   
	   List<FileDto> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "select num, writer, title, orgFileName,  fileSize, regdate"
					+ " from board_file"
					+ " order by num DESC";
			pstmt = conn.prepareStatement(sql);
			//실행할 sql 문이 미완성이라면 여기서 완성
	
			//select문 수행하고 결과값받아오기
			rs = pstmt.executeQuery();
			//반복문 돌면서 resultset에 담긴 내용 추출
			while (rs.next()) {
				FileDto dto = new FileDto();
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setOrgFileName(rs.getString("orgFileName"));
				dto.setFileSize(rs.getLong("fileSize"));
				dto.setRegdate(rs.getString("regdate"));
				list.add(dto);
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close(); //Connection 이 Connection Pool 에 반납된다.
			} catch (Exception e) {
			}
		}
		//회원 한명의 정보가 담긴 MemberDto객체 리턴해주기
		return list;
   }
   

   
   //getdata
   public FileDto getData(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		FileDto dto =null;
		
		
		int rowCount = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "select num, wirter, title, orgFileName, saveFileName, fileSize, regdate"
					+ " from board_file"
					+ " where num=?";
	
			pstmt = conn.prepareStatement(sql);
			//실행할 sql 문이 미완성이라면 여기서 완성
	
			//select문 수행하고 결과값받아오기
			rs = pstmt.executeQuery();
			//반복문 돌면서 resultset에 담긴 내용 추출
			while (rs.next()) {
				dto = new FileDto();
				dto.setNum(num);
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setOrgFileName(rs.getString("orgFileName"));
				dto.setSaveFileName(rs.getString("saverFileName"));
				dto.setFileSize(rs.getLong(num));
				dto.setRegdate(rs.getString("regdate"));
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close(); //Connection 이 Connection Pool 에 반납된다.
			} catch (Exception e) {
			}
		}
		//회원 한명의 정보가 담긴 Dto객체 리턴해주기
		return dto;
   }
   
   
   
   //업로드된 파일 정보를 DB 에 저장하는 메소드
   public boolean insert(FileDto dto) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      int rowCount = 0;
      try {
         conn = new DbcpBean().getConn();
         String sql = "INSERT INTO board_file"
               + " (num, writer, title, orgFileName, saveFileName, fileSize, regdate)"
               + " VALUES(board_file_seq.NEXTVAL, ?, ?, ?, ?, ?, SYSDATE)";
         pstmt = conn.prepareStatement(sql);
         // ? 에 바인딩할게 있으면 해주고
         pstmt.setString(1, dto.getWriter());
         pstmt.setString(2, dto.getTitle());
         pstmt.setString(3, dto.getOrgFileName());
         pstmt.setString(4, dto.getSaveFileName());
         pstmt.setLong(5, dto.getFileSize());
         // INSERT OR UPDATE OR DELETE 문을 수행하고 수정되거나, 삭제되거나, 추가된 ROW 의 갯수 리턴 받기
         rowCount = pstmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         try {
            if (pstmt != null)
               pstmt.close();
            if (conn != null)
               conn.close();
         } catch (Exception e) {
         }
      }
      if (rowCount > 0) {
         return true;
      } else {
         return false;
      }
   }
}