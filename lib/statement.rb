require_relative 'bank'

class Statement
  attr_reader :balance,
              :transactions,
              :amount

  def initialize(bank = Bank.new)
    @bank = bank
  end

  def print
    puts 'date || credit || debit || balance'
    @bank.transactions.each do |transactions|
      puts "#{transactions[:date]} || #{transactions[:credit]} || #{transactions[:debit]} || #{transactions[:balance]}"
    end
  end

  # private
  # attr_writer :balance, :transactions
end
