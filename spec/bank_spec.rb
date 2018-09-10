require 'bank'

describe Bank do
 
subject(:bank){Bank.new}

context 'when initialized' do
 it 'an account has an initial balance of zero' do
    expect(bank.balance).to eq(0)
 end

 it 'has a list of transactions' do
    expect(bank.transactions).to eq []
 end
end 

context 'when making transactions' do
 it 'can make a deposit' do
    bank.deposit(1000)
    expect(bank.balance).to eq(1000)
 end 

 it 'can make a withdrawal' do
    bank.deposit(1000)
    bank.withdrawal(500)
    expect(bank.balance).to eq(500)
 end
end

context 'have a list of transactions' do
 it 'can see the time of the deposit' do
    bank.deposit(1000)
    bank.withdrawal(500)
    expect(bank.transactions).to include
    [{:date=>Date.today,
    :amount=>1000,
    :balance=>1000}] 
 end

 it 'can see a list of transactions' do
    bank = Bank.new
    bank.deposit(1000)
    bank.withdrawal(500)
    expect(bank.transactions).to include
    [{:date=>Date.today,
      :amount=>1000,
      :balance=>1000},
     {:date=>Date.today,
      :amount=>-500,
      :balance=>500}]
 end 
end
end