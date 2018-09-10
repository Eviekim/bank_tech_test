# Bank Tech Test
==================


## Instructions:
### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

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


## To use

Clone the directory:
```
> git clone git@github.com:Eviekim/bank_tech_test.git
> cd bank_tech_test
```
In Pry:

To make a deposit:

To make a withdrawal:

To print the bank statement: 

## Tech stack
```
Ruby
Rspec
Pry
Rails
```

## Process

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

