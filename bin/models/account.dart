class Account {
  String name;
  double balance;
  bool isAuthenticated;
  DateTime? createdAt;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated});

  editBalance({required value}) {
    balance = balance + value;
  }

  @override
  String toString() {
    return "Account from $name\nBalance: $balance\nAuthenticated: $isAuthenticated\nCreated at: $createdAt";
  }
}
