package com.danilat.gbills

class BillService {

    boolean transactional = true

    public populateBill(Bill bill){
    	def taxable=0
    	bill.items.each{
    		taxable+=it.price
    	}
    	def vatPrice = taxable*bill.vat/100
    	def retentionPrice = taxable*bill.retention/100
    	bill.taxable = taxable
    	bill.total = taxable + vatPrice -retentionPrice
    	return bill
    }
}
