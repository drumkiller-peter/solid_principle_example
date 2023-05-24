// No client should be forced to depend on methods it does not use.

abstract class EPaymentService {
  validate();
  checkFraud();
  collectPayment();
}

class DebitCard extends EPaymentService {
  @override
  checkFraud() {
    //do something
  }

  @override
  collectPayment() {
    //do something
  }

  @override
  validate() {
    //do something
  }
}

class CreditCard extends EPaymentService {
  @override
  checkFraud() {
    //Do Something
  }

  @override
  collectPayment() {
    //Do Something
  }

  @override
  validate() {
    //Do Something
  }
}


class RewardCard extends EPaymentService {
  @override
  checkFraud() {}

  @override
  collectPayment() {
    // Do Something
  }

  @override
  validate() {
    // Do Something
  }
}

// /// Solution

// abstract class EPaymentServiceLSP {
//   validate();
//   collectPayment();
// }

// abstract class BaseClassForPayableCard extends EPaymentServiceLSP {
//   fraudCheck();
// }

// class CreditCardLSP extends BaseClassForPayableCard {
//   @override
//   collectPayment() {}

//   @override
//   fraudCheck() {}

//   @override
//   validate() {}
// }

// class DebitCardLSP extends BaseClassForPayableCard {
//   @override
//   collectPayment() {
//     //DO Something
//   }

//   @override
//   validate() {
//     //DO Something
//   }

//   @override
//   fraudCheck() {}
// }

// class RewardCardLSP extends EPaymentServiceLSP {
//   @override
//   collectPayment() {}

//   @override
//   validate() {}
// }

// void main(List<String> args) {
//   BaseClassForPayableCard service = DebitCardLSP();
//   BaseClassForPayableCard service1 = CreditCardLSP();
//   EPaymentServiceLSP service2 = RewardCardLSP();
//   service.collectPayment();
//   service1.fraudCheck();
//   service2.validate();
// }
