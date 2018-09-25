class BankAccount {
  constructor(openingBalance) {
    if(openingBalance >= 0) {
      this.balance = openingBalance;
    } else {
      throw new RangeError('balance cannot be less than 0');
    }
  }

  deposit(amount) {
    this.balance += amount;
  }

  withdraw(amount) {
    let proposedBalance = this.balance - amount;

    if(proposedBalance >= 0) {
      this.balance -= amount;
      return amount;
    } else {
      throw new RangeError('balance cannot be less than 0');
    }
  }

  get checkBalance() {
    return `$ ${this.balance}`;
  }
}

let newAccount = new BankAccount(1000);
console.log(newAccount.withdraw(100));
newAccount.deposit(300);

console.log(newAccount.checkBalance);