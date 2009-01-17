package com.danilat.gbills

class Bill {
	static belongsTo = [client:Client]
	static hasMany = [items:Item]
	
	Date date = new Date()
	Float taxable
	Integer vat
	Integer retention
	Float total
	String state
	String observations
	
	static mapping = {
		columns {
			observations type:'text'
		}
	}
	
	static final DRAFT = 'DRAFT'
	static final CANCELED = 'CANCELED'
	static final COMPLETED = 'COMPLETED'
	static final STATE = [DRAFT, CANCELED, COMPLETED]
}
