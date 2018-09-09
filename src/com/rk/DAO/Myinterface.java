package com.rk.DAO;

import java.util.List;

import com.rk.bean.Book;

public interface Myinterface {
	
	public int save(Book b);
	public int update(Book b);
	public int delete(Book b);
	public List<Book> getAllRecords();
	public Book getRecordById(int id);	
}
