import 'dart:math';

abstract class Account {
  int accountNumber;
  double balance;
  Account(this.accountNumber, this.balance);
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print(
          "Deposited ${amount.toStringAsFixed(0)} tk. New balance: ${balance.toStringAsFixed(0)} tk.");
    } else {
      print("Invalid deposit amount. Amount must be greater than zero.");
    }
  }

  withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(super.accountNumber, super.balance, this.interestRate);

  @override
  withdraw(double amount) {
    if (amount > 0) {
      if (balance >= amount) {
        balance -= amount;
        balance += (balance * interestRate) / 100;
        print(
            "Withdraw ${amount.toStringAsFixed(0)} tk. New balance: ${balance.toStringAsFixed(0)} tk.");
      } else {
        print("insufficient blance funds.");
      }
    } else {
      print("Invalid deposit amount. Amount must be greater than zero.");
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;
  CurrentAccount(super.accountNumber, super.balance,
      {required this.overdraftLimit});
  @override
  withdraw(double amount) {
    if (amount > 0) {
      if (balance + overdraftLimit>=amount) {
        balance -= amount;
        print(
            "Withdraw ${amount.toStringAsFixed(0)} tk. New balance: ${balance.toStringAsFixed(0)} tk.");
      } else {
        print("indicating insufficient funds.");
      }
    } else {
      print("Invalid deposit amount. Amount must be greater than zero.");
    }
  }
}

void main() {
  print("----------Saving Account Information---------");
  SavingsAccount savingsAccount = new SavingsAccount(1110222234, 500, 10);
  savingsAccount.deposit(2000);
  savingsAccount.withdraw(1500);
  print("---------Current Account Information---------");
  CurrentAccount currentAccount = new CurrentAccount(1023100000, 2000,overdraftLimit: 100);
  currentAccount.deposit(300);
  currentAccount.withdraw(2401);
}
