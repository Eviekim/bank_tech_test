describe 'User Stories' do 

 # first, the customer needs an account initialized balance of zero

 it 'has an initial balance of zero' do
  bank = Bank.new
  expect(bank.balance).to eq(0)
 end

 # second, the customer can see a list of transations

 it 'has a list of transactions' do
  bank = Bank.new
  expect(bank.transactions).to eq []
 end

 # As a customer,
 # So that I can pay in to my account,
 # I need to be able to make a deposit

 it 'can make a deposit' do
  bank = Bank.new
  bank.deposit(1000)
  expect(bank.balance).to eq(1000)
 end 

 
 end 