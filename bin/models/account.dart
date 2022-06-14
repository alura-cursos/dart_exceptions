class Account {
  String name;
  double balance;
  bool isAuthenticated;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated})
      : assert(name.isEmpty, 'Empty Name'),
        assert(balance < 0, 'Negative Balance');

  editBalance({required value}) {
    balance = balance + value;
  }
}
