class SenderIdInvalidException implements Exception {
  String idSender;
  SenderIdInvalidException({required this.idSender});
}

class ReceiverIdInvalidException implements Exception {
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});
}

class SenderNotAuthenticatedException implements Exception {
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
}

class SenderBalanceLowerThanAmountException implements Exception {
  String idSender;
  double balanceSender;
  double amount;

  SenderBalanceLowerThanAmountException({
    required this.idSender,
    required this.balanceSender,
    required this.amount,
  });
}
