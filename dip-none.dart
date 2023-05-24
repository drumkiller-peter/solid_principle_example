import 'dip.dart';

class Car {
  final GasEngine engine;

  Car() : engine = GasEngine();

  void start() {
    engine.start();
  }

  void stop() {
    engine.stop();
  }

  void accelerate() {
    engine.accelerate();
  }

  void brake() {
    engine.brake();
  }
}

void main() {
  final car = Car();
  car.start();
  car.accelerate();
  car.brake();
  car.stop();
}
