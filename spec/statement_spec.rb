require 'statement'

describe Statement do

  subject(:statement) { Statement.new }
  subject(:bank) { Bank.new }

  attr_reader :amount, :balance 

  it 'can print an account statement' do
    expect(statement.print).to include
    [{ date: Date.today,
       credit: amount,
       debit: amount,
       balance: balance }]
  end
end
