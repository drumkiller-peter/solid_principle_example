abstract class PaymentService {
  Future<bool> validate(Payment payment);
  Future<void> collectPayment(Payment payment);
}

abstract class FraudChecker {
  Future<bool> isFraudulent(Payment payment);
}

class DebitCardPaymentService extends PaymentService implements FraudChecker {
  @override
  Future<bool> validate(Payment payment) async {
    //do something
    return true;
  }

  @override
  Future<void> collectPayment(Payment payment) async {
    //do something
  }

  @override
  Future<bool> isFraudulent(Payment payment) async {
    //Do Something
    return true;
  }
}

class CreditCardPaymentService extends PaymentService implements FraudChecker {
  @override
  Future<bool> validate(Payment payment) async {
    //Do Something
    return true;
  }

  @override
  Future<void> collectPayment(Payment payment) async {
    //Do Something
  }

  @override
  Future<bool> isFraudulent(Payment payment) async {
    //Do Something
    return true;
  }
}

class RewardCardPaymentService extends PaymentService {
  @override
  Future<bool> validate(Payment payment) async {
    //do something
    return true;
  }

  @override
  Future<void> collectPayment(Payment payment) async {
    // Do Something
  }
}

void main() async {
  // Create a payment service.
  final PaymentService paymentService = RewardCardPaymentService();

  // Create a payment.
  final payment = Payment(
    cardNumber: '1234-5678-9012-3456',
    expirationDate: DateTime.now().add(Duration(days: 365)),
    amount: 100.0,
  );

  // Validate the payment.
  final isPaymentValid = await paymentService.validate(payment);

  // Collect the payment if it is valid.
  if (isPaymentValid) {
    await paymentService.collectPayment(payment);
  }
}

class Payment {
  final String cardNumber;
  final DateTime expirationDate;
  final double amount;

  Payment({
    required this.cardNumber,
    required this.expirationDate,
    required this.amount,
  });
}
