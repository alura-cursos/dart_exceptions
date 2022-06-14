import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void testingNullSafety() {
  Account? myAccount =
      Account(name: "Ricarth Lima", balance: 300, isAuthenticated: true);

  Random rng = Random();
  if (rng.nextInt(10) % 2 == 0) {
    myAccount.createdAt = DateTime.now();
  }

  // Não funciona
  // print(myAccount.createdAt.day);

  // Funciona mas é má prática pois pode levantar erro
  // print(myAccount.createdAt!.day);

  if (myAccount.createdAt != null) {
    print(myAccount.createdAt?.day);
  } else {
    print("Data Nula");
  }

  // Explicar que é uma situação que válida encadear "?"
  // print(myAccount?.createdAt?.day); // Explicar warning Flow Analisys
  Account? otherAccount;
  print(otherAccount?.createdAt?.day);
}

void main() {
  testingNullSafety();

  // Criando o banco
  BankController bankController = BankController();

  Account testAccount = Account(name: "", balance: 0, isAuthenticated: true);

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 200);

    print("Transação concluída com sucesso");
  } on SenderIdInvalidException catch (e) {
    print(e.message);
  } on ReceiverIdInvalidException catch (e) {
    print(e);
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
  } catch (e) {
    print("Erro desconhecido.");
  }
}
