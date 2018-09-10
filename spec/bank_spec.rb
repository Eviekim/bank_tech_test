require 'bank'

describe Bank do
    subject(:bank){Bank.new}

 it 'when initialized an account has an initial balance of zero' do
    expect(bank.balance).to eq(0)
 end
end
 