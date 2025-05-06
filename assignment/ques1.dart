//1)Write a program to create a banking system with three classes
// - Bank, Account, SavingsAccount, and CurrentAccount.
// The bank should have a list of accounts and methods for adding them.
// Accounts should be an interface with methods to deposit, withdraw, calculate interest, and view balances.
// SavingsAccount and CurrentAccount should implement the Account interface and have their own unique methods.
class Account {
  void deposit(double amount) {}
  void withdraw(double amount) {}
  double calculateInterest() => 0;
  void viewBalance() {}
}

class Bank {
  List<Account> accounts = [];
  int capacity;

  Bank(this.capacity);

  void addAccount(Account account) {
    if (accounts.length < capacity) {
      accounts.add(account);
    } else {
      print('Bank capacity reached. Cannot add more accounts.');
    }
  }

  void showAllAccounts() {
    for (var account in accounts) {
      account.viewBalance();
    }
  }
}

class SavingsAccount extends Account {
  double balance;
  double interestRate = 0.03;

  SavingsAccount(this.balance);

  @override
  void deposit(double amount) {
    balance += amount;
  }

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print('Insufficient balance.');
    }
  }

  @override
  double calculateInterest() {
    return balance * interestRate;
  }

  @override
  void viewBalance() {
    print('Savings Account Balance: $balance, Interest: ${calculateInterest()}');
  }
}

class CurrentAccount extends Account {
  double balance;
  double overdraftLimit = 500;

  CurrentAccount(this.balance);

  @override
  void deposit(double amount) {
    balance += amount;
  }

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
    } else {
      print('Withdrawal exceeds overdraft limit.');
    }
  }

  @override
  double calculateInterest() {
    return 0;
  }

  @override
  void viewBalance() {
    print('Current Account Balance: $balance');
  }
}

void main() {
  var bank = Bank(5);

  var savings = SavingsAccount(1000);
  var current = CurrentAccount(500);

  bank.addAccount(savings);
  bank.addAccount(current);

  savings.deposit(500);
  savings.withdraw(200);
  current.deposit(300);
  current.withdraw(1000);

  bank.showAllAccounts();
}
