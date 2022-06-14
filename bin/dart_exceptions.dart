import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void testingNullSafety() {
  print("My String".runtimeType);
  print(null.runtimeType);
  Null;

  String cantBeNull = "My String";
  //cantBeNull = null;
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
