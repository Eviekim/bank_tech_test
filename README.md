# Bank Tech Test

## How to use:

1. Fork this repo first on github
2. Open your terminal and clone this repo
```
git clone git@github.com:Eviekim/bank_tech_test.git
```
3. Change directory to 'bank_tech_test'
```
cd bank_tech_test
```
4. Run IRB and install bundle
```
bundle install
irb
```
5. Require file you want to use
```
require './lib/statement.rb'
```
6. Create a bank account and statement for the Account
```
bank = Bank.new
statement = Statement.new(bank)
```
7. Make your transactions
* you can make a deposit (credit) by inputting : ``` bank.deposit(amount) ```
* you can make a withdrawal (debit) by inputting : ``` bank.withdrawal(amount) ```

8. Print the statement to have a list of transactions
```
statement.print
```
9. To exit irb
```
irb
```
10. To see the number of tests and test coverage
```
rspec
```

## Tech stack
```
Ruby
Rspec
irb
```

## Approach:

1. User stories
```
As a customer,
So that I can pay in to my account,
I need to be able to make a deposit.
```
```

As a customer,
So that I can access the deposit in my accouunt,
I need to be able to make a withdrawal.
```
```
As a customer,
So that I can see my previous trasactions and account,
I need to be able to print my account statement.
```

2. Outline suspected objects and messages
3. Write feature test (failed)
4. Have the same failure at the unit level (failed)
5. Implement the behaviour (passed)
6. Refactor
7. Repeat until feature test is passed (feature is passed)
8. Refactor

### Requirements:

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria:

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
