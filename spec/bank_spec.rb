require 'bank'
require 'date'

describe Bank do
  let (:bank){ Bank.new }
  let (:statement){ Statement.new }

  context 'when initialized' do
    it 'has an initial balance of zero' do
      expect(bank.balance).to eq(0)
    end

    it 'has a list of transactions' do
      expect(bank.transactions).to eq []
    end
  end

  context 'when making transactions' do
    it 'can make a deposit' do
      bank.deposit(1000.00)
      expect(bank.balance).to eq(1000.00)
    end

    it 'can make a withdrawal' do
      bank.deposit(1000.00)
      bank.withdrawal(500.00)
      expect(bank.balance).to eq(500.00)
    end
  end

  context 'have a list of transactions' do
    it 'can see the time of the deposit' do
      bank.deposit(1000.00)
      bank.withdrawal(500.00)
      expect(bank.transactions).to include
      [{ date: Date.today,
         amount: 1000.00,
         balance: 1000.00 }]
    end

    it 'can see a list of transactions' do
      bank = Bank.new
      bank.deposit(1000.00)
      bank.withdrawal(500.00)
      expect(bank.transactions).to include
      [{ date: Date.today,
         amount: 1000.00,
         balance: 1000.00 },
       { date: Date.today,
         amount: 500.00,
         balance: 500.00 }]
    end
  end
end
