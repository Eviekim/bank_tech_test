require 'date'

class Bank

    attr_reader :balance, :transactions

 INITIAL_BALANCE = 0
    
 def initialize(balance = INITIAL_BALANCE)
  @balance = balance 
  @transactions = []
 end 

 def deposit(amount)
  @balance += amount
  # @balance = balance + amount
  @transactions.push(date: Date.today, credit: amount, debit: nil, balance: balance)
 end 

 def withdrawal(amount)
  @balance -= amount
  # @balance = balance - amount
  @transactions.push(date: Date.today, credit: nil, debit: -amount, balance: balance)
 end  


end 
