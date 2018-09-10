describe 'User Stories' do 

 it 'when initialized an account has an initial balance of zero' do
  bank = Bank.new
  expect(bank.balance).to eq(0)
 end

 end 