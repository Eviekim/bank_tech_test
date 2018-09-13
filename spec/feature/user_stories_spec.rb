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
    bank.deposit(1000.00)
    expect(bank.balance).to eq(1000.00)
  end

  # As a customer,
  # So that I can access the deposit in my accouunt,
  # I need to be able to make a withdrawal.

  it 'can make a withdrawal' do
    bank = Bank.new
    bank.deposit(1000.00)
    bank.withdrawal(500.00)
    expect(bank.balance).to eq(500.00)
  end

  # As a customer,
  # So that I can see my previous trasactions and account,
  # I need to be able to print my account statement.

  it 'can see the time of the deposit' do
    bank = Bank.new
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
