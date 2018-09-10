require_relative 'bank'

class Statement
    def initialize(bank = Bank.new)
        @bank = bank 
    end 

    def print
        puts "date || credit || debit || balance"
        @bank.transactions.each do | transactions |
            puts "#{transactions[:date]} || #{transactions[:credit]} || #{transactions[:debit]} || #{transactions[:balance]}" 
        end
    end
end
