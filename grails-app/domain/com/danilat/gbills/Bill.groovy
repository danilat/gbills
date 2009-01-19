package com.danilat.gbills

class Bill {
	static belongsTo = [client:Client]
	static hasMany = [items:Item]
	
	Date date = new Date()
	Float taxable = 0
	Integer vat = 16
	Integer retention = 7
	Float total = 0
	String state = DRAFT
	String observations = ""
	
	static mapping = {
		columns {
			observations type:'text'
		}
	}
	
	public static final DRAFT = 'DRAFT'
	public static final CANCELED = 'CANCELED'
	public static final COMPLETED = 'COMPLETED'
	public static final PAYED = 'PAYED'
	public static final STATES = [DRAFT, CANCELED, COMPLETED, PAYED]
}
