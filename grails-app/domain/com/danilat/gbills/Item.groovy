package com.danilat.gbills

class Item {
	static belongsTo = [bill:Bill]
	String description
	Float price
}
