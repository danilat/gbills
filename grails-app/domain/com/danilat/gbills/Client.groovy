package com.danilat.gbills

class Client {
	static hasMany = [bills:Bill, budgets:Budget]
	
	String name
	String nif
	String address
	String zip
	String city
	String province
	String contactPerson
	String phone
	String email
	String web
}
