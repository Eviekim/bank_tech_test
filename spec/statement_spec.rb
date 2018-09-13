require 'statement'
require 'bank'

 describe Statement do
  subject (:statement) { described_class.new }
  let (:bank) { Bank.new }

  # describe '#print' do
  # it 'can print an account statement' do
  #   bank.deposit(1000)
  #   expect { statement.print(bank.transactions) }.to output("date || credit || debit || balance \n#{Date.today.strftime('%d/%m/%Y')} || 1000.00 ||  || 1000.00\n").to_stdout
  #   # expect(statement.print).to output ("date || credit || debit || balance").to_stdout
  #   # [{ date: Date.today,
  #   #    credit: amount,
  #   #    debit: amount,
  #   #    balance: balance }]
  #   end
  #  end

  # specify do
  #  allow(Date).to receive(:today).and_return('12/09/2018')
  #  expect { statement.print(bank.transations) }.to output (
  #    "date || credit || debit || balance" ).to_stdout
  #  end

   # it 'can print an account statement' do
   #   expect { statement.print(transactions) }.to output("date || credit || debit || balance \n#{Date.today.strftime('%d/%m/%Y')} || 1000.00 ||  || 1000.00\n"").to_stdout
   # end

   it 'can print an account statement' do
     bank = Bank.new
     statement = Statement.new
     expect(statement.print).to include
    [{ date: Date.today,
       credit: 1000.00,
       debit: 500.00,
       balance: 500.00  }]
    end
    
  end
