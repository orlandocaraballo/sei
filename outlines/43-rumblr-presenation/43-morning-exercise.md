<img src="morning-exercise.jpg" />

# Morning Exercise

Create a class `BankAccount` in javascript that mirrors the behavior of a bank account. This class should accept one float value argument for the constructor representing the initial starting balance, let's called it `openingBalance`.

There should be three public methods defined `withdraw`, `deposit` and `checkBalance` which deduct from, add to and retrieve the balance respectively. 
- The `withdraw` method should return the amount withdrawn from the bank account.
- The `deposit` method should return nothing.
- The `checkBalance` method should return the current balance of the account.

```js
let newAccount = new BankAccount(1000.00);

let cashInHand = newAccount.withdraw(231.22);
console.log(cashInHand); // 231.22
newAccount.checkBalance(); // 768.78

newAccount.deposit(100);
newAccount.checkBalance(); // 868.78
```

## Sanity Checks

It would make sense to check that our balance cannot be less than 0. 

Write js code that throws a `RangeError` when: 
- the account is created and the initial balance is less than `0`
- when a withdrawal is made and the amount withdrawn would leave the balance below `0`

```js
let newAccount = new BankAccount(-100); // Range Error: balance cannot be less than 0
```

```js
let newAccount = new BankAccount(100);
newAccount.withdraw(900); // RangeError: balance cannot be less than 0
```

