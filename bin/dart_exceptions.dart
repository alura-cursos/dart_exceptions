import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

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
    print(e.idSender + ": ID inválido.");
  } on ReceiverIdInvalidException catch (e) {
    print(e.idReceiver + ": ID inválido.");
  } on SenderNotAuthenticatedException catch (e) {
    print(e.idSender + " Usuário não autenticado.");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print("Saldo de ${e.idSender} inválido.");
  } catch (e) {
    print("Erro desconhecido.");
  }
}
