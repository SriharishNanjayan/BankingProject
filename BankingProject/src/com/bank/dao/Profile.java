package com.bank.dao;

import java.util.List;
import java.util.Map;
public class Profile {
	protected long accountNumber;
	private String name;
	private String dob;
	private String PhoneNo;
	private String email;
	private String proofId;
	private String gender;
	private String accountType;
	protected double balance;
	private Map<String,Address> address;
	private Transaction login;
	private List<TransactionDetail> transaction;
	public Profile(long accountNumber, String name, String dob, String phoneNo, String email, String proofId,
			String gender, String accountType, double balance, Map<String, Address> address, Transaction login,
			List<TransactionDetail> transaction) {
		super();
		this.accountNumber = accountNumber;
		this.name = name;
		this.dob = dob;
		this.PhoneNo = phoneNo;
		this.email = email;
		this.proofId = proofId;
		this.gender = gender;
		this.accountType = accountType;
		this.balance = balance;
		this.address = address;
		this.login = login;
		this.transaction = transaction;
	}
	public long getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPhoneNo() {
		return PhoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProofId() {
		return proofId;
	}
	public void setProofId(String proofId) {
		this.proofId = proofId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public void addAddress(String type, Address address){
		this.address.put(type,address);
	}
	public void removeAddress(String type, Address address){
		this.address.remove(type, null);
	}
	public Transaction getLoginInfo(){
		return login;
	}
	public List<TransactionDetail> getTransactionInfo(){
		return transaction;
	}
	public void withdraw(double amount){
		this.balance -= amount;
	}
	public void deposit(double amount){
		this.balance += amount;
	}
}
