//  Each class has a single responsibility. 


enum PaymentMode {
  card,
  cash,
  giftCard,
  others,
}

class CabFareCalculation {
  double distance = 0;
  PaymentMode paymentMode = PaymentMode.card;

  int pk = 0;
  String tableName = "";

  double calculateFarePrice() {
    // do something with the calculation
    return 15;
  }

  double registerPaymentWithDiscount(
    double discountPrice,
    PaymentMode paymentMode,
  ) {
    //handle logic for discount and register;
    return 184;
  }

  void generateInvoiceAndSaveToDb() {
    // do something with the generateInvoice and save
  }
}

///
///
///
///
///
///
///
///
// SRP
class CabFareCalculationSRP {
  double distance = 0;

  double calculateFarePrice() {
    // do something with the calculation
    return 15;
  }
}

abstract class PaymentProcessor {
  double registerPaymentWithDiscount(double discountPrice);
}

class CardPaymentProcessor implements PaymentProcessor {
  @override
  double registerPaymentWithDiscount(double discountPrice) {
    // handle logic for card payment with discount
    return 184;
  }
}

class CashPaymentProcessor implements PaymentProcessor {
  @override
  double registerPaymentWithDiscount(double discountPrice) {
    // handle logic for cash payment with discount
    return 184;
  }
}
