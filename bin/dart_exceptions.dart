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

import 'dart:io';

void main() {
  int i = 0;
  print("Started Main");
  function01();
  print("Finished Main");
}

function01() {
  int j = 25;
  print("Started F01");
  try {
    function02(j);
  } on FormatException catch (e) {
    print("------------------");
    print(e.message);
    print(e.source);
    print(e.toString());
    print("------------------");
  } on HttpException catch (e) {
    print(e.uri);
  } on IOException catch (e) {
    print(e.toString());
  } catch (e) {
    print(e.toString());
  }

  print("Finished F01");
}

function02(int otherJ) {
  int k = 0;
  print("Started F02");

  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("Not a number.");
  }
  otherJ = 50;
  print("Finished F02");
}
