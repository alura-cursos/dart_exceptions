class SenderIdInvalidException implements Exception {
  static const String report = "SenderIdInvalidException";

  String idSender;
  late String message;
  SenderIdInvalidException({required this.idSender}) {
    message = "$report\nID Sender: $idSender";
  }

  @override
  String toString() {
    return message;
  }
}

class ReceiverIdInvalidException implements Exception {
  static const String report = "ReceiverIdInvalidException";

  String idReceiver;
  late String message;
  ReceiverIdInvalidException({required this.idReceiver}) {
    message = "$report\nID Receiver: $idReceiver";
  }

  @override
  String toString() {
    return message;
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";

  String idSender;
  late String message;
  SenderNotAuthenticatedException({required this.idSender}) {
    message = "$report\nID Sender: $idSender";
  }

  @override
  String toString() {
    return message;
  }
}

class SenderBalanceLowerThanAmountException implements Exception {
  static const String report = "SenderBalanceLowerThanAmountException";

  String idSender;
  double balanceSender;
  double amount;
  late String message;

  SenderBalanceLowerThanAmountException({
    required this.idSender,
    required this.balanceSender,
    required this.amount,
  }) {
    message =
        "$report\nID Sender: $idSender\nBalance Sender: $balanceSender\nAmount: $amount";
  }

  @override
  String toString() {
    return message;
  }
}
