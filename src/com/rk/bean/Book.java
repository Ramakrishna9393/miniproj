package com.rk.bean;

public class Book {
	private int Id;
	private String Book_Name;
	private double Price;
	private String Author;
	private int Quantity;
	private int Pages;
	private String Publisher;
	
	public void setId(int id) {
		Id = id;
	}
	public void setBook_Name(String book_Name) {
		Book_Name = book_Name;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public void setAuthor(String author) {
		Author = author;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public void setPages(int pages) {
		Pages = pages;
	}
	public void setPublisher(String publisher) {
		Publisher = publisher;
	}
	
	public int getId() {
		return Id;
	}
	public String getBook_Name() {
		return Book_Name;
	}
	public double getPrice() {
		return Price;
	}
	public String getAuthor() {
		return Author;
	}
	public int getQuantity() {
		return Quantity;
	}
	public int getPages() {
		return Pages;
	}
	public String getPublisher() {
		return Publisher;
	}
	

}
