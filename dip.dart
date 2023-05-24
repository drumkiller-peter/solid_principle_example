// High-level modules should not depend on low-level modules. Both should depend on abstractions.



abstract class Engine {
  void start();
  void stop();
  void accelerate();
  void brake();
}

class GasEngine implements Engine {
  @override
  void start() {
    print('Starting gas engine');
  }

  @override
  void stop() {
    print('Stopping gas engine');
  }

  @override
  void accelerate() {
    print('Accelerating gas engine');
  }

  @override
  void brake() {
    print('Braking gas engine');
  }
}

class ElectricEngine implements Engine {
  @override
  void start() {
    print('Starting electric engine');
  }

  @override
  void stop() {
    print('Stopping electric engine');
  }

  @override
  void accelerate() {
    print('Accelerating electric engine');
  }

  @override
  void brake() {
    print('Braking electric engine');
  }
}


// In this code, the Car class depends on the Engine abstraction.
//This means that the Car class does not know or care about the specific implementation of the Engine.
// It only knows that it needs an Engine.

// The Engine abstraction is implemented by the GasEngine and ElectricEngine classes.
// These classes provide concrete implementations of the Engine abstraction.

// When you run the code, the Car class will start the engine, accelerate, brake, and stop.
// The specific implementation of the Engine that is used will depend on the value of the engine variable.

// This makes the Car class more flexible and reusable.
//If you decide later that you want to use a different kind of engine,
// you can just change the value of the engine variable. You do not have to change the Car class.

class Car {
  final Engine engine;

  Car(this.engine);

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
  final car = Car(GasEngine());
  car.start();
  car.accelerate();
  car.brake();
  car.stop();
}
