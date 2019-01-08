package com.niit.domain;

public class Address {
	
	private String addLine;
	private String city;
	private String state;
	private int pin;
	public String getAddLine() {
		return addLine;
	}
	public void setAddLine(String addLine) {
		this.addLine = addLine;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	
	public Address() {
		super();
	}

	
	
}
