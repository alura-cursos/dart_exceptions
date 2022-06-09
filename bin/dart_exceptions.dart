// void main() {
//   // Criando o banco
//   BankController bankController = BankController();
//
//   // Adicionando contas
//   bankController.addAccount(
//       id: "Ricarth",
//       account:
//           Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));
//
//   bankController.addAccount(
//       id: "Kako",
//       account:
//           Account(name: "Caio Couto", balance: 600, isAuthenticated: true));
//
//   // Fazendo transferência
//   bool result = bankController.makeTransfer(
//       idSender: "Kako", idReceiver: "Ricarth", amount: 700);
//
//   // Observando resultado
//   print(result);
// }

void main() {
  print("Started Main");
  functionOne();
  print("Finished Main");
}

functionOne() {
  print("Started F01");
  functionTwo();
  print("Finished F01");
}

functionTwo() {
  print("Started F02");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
  print("Finished F02");
}
