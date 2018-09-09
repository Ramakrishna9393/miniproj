package com.rk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.rk.bean.Book;
import com.rk.util.DatabaseCon;

public class BookDAO implements Myinterface {

	@Override
	public int save(Book b) {
		// TODO Auto-generated method stub
		int status=0;
		
		try {
			Connection con = DatabaseCon.getconnectionFromDb();
			PreparedStatement ps = con.prepareStatement("insert into books values(book_seq.nextval,?,?,?,?,?,?)");
			ps.setString(1, b.getBook_Name());
			ps.setDouble(2, b.getPrice());
			ps.setString(3, b.getAuthor());
			ps.setInt(4, b.getQuantity());
			ps.setInt(5, b.getPages());
			ps.setString(6, b.getPublisher());
			 status = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	@Override
	public int update(Book b) {
		// TODO Auto-generated method stub
		int status=0;
		
		try {
			Connection con = DatabaseCon.getconnectionFromDb();
			PreparedStatement ps = con.prepareStatement("update books set Book_Name=?,Price=?,Author=?,Quantity=?,Pages=?,Publisher=? where Id=?");
			 status = ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	@Override
	public int delete(Book b) {
		// TODO Auto-generated method stub
		int status=0;
		
		try {
			Connection con = DatabaseCon.getconnectionFromDb();
			PreparedStatement ps = con.prepareStatement("delete from books where id=?");
			ps.setInt(1, b.getId());
			 status = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	@Override
	public List<Book> getAllRecords() {
		// TODO Auto-generated method stub
		List<Book> list=new ArrayList<Book>();
		try {
			Connection con = DatabaseCon.getconnectionFromDb();
			PreparedStatement ps = con.prepareStatement("select*from books");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Book b=new Book();
				b.setId(rs.getInt(1));
				b.setBook_Name(rs.getString(2));
				b.setPrice(rs.getDouble(3));
				b.setAuthor(rs.getString(4));
				b.setQuantity(rs.getInt(5));
				b.setPages(rs.getInt(6));
				b.setPublisher(rs.getString(7));
				list.add(b);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@SuppressWarnings("null")
	@Override
	public Book getRecordById(int id) {
		// TODO Auto-generated method stub
		Book b=null;
		try {
			Connection con = DatabaseCon.getconnectionFromDb();
			PreparedStatement ps = con.prepareStatement("select*from books where id='"+b.getId()+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				 b=new Book();
				b.setId(rs.getInt(1));
				b.setBook_Name(rs.getString(2));
				b.setPrice(rs.getDouble(3));
				b.setAuthor(rs.getString(4));
				b.setQuantity(rs.getInt(5));
				b.setPages(rs.getInt(6));
				b.setPublisher(rs.getString(7));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}
	

}
