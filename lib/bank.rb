require 'date'

class Bank
  attr_reader :balance, :transactions, :amount
  # def balance
  #  @ balance
  # end

  INITIAL_BALANCE = 0

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    # @balance = balance + amount
    @transactions.push(date: Date.today.strftime('%d/%m/%Y'), credit: format('%.2f', amount), debit: nil, balance: format('%.2f', balance))
  end

  def withdrawal(amount)
    @balance -= amount
    # @balance = balance - amount
    @transactions.push(date: Date.today.strftime('%d/%m/%Y'), credit: nil, debit: format('%.2f', amount), balance: format('%.2f', balance))
  end
end
