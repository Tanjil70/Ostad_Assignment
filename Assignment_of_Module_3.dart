class Car {
  String brand;
  String model;
  int year;
  double milesDriven = 0;
  static int numberOfCars = 0;
  Car(this.brand, this.model, this.year);

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return getYear();
  }
}

void main() {
  // Create a car1 object
  Car car1 = new Car("Toyota", "Camry 2020", 3);
  car1.drive(10000.5);
  Car.numberOfCars++;
  print(
      "Car 1: ${car1.brand} ${car1.model} Miles:${car1.getMilesDriven()} Age:${car1.getAge()}");

  // Create a car2 object
  Car car2 = new Car("Honda", "Civic 2018", 5);
  car2.drive(8000);
  Car.numberOfCars++;
  print(
      "Car 2: ${car2.brand} ${car2.model} Miles:${car2.getMilesDriven()} Age:${car2.getAge()}");

  // Create a car3 object
  Car car3 = new Car("Toyota", "Camry 2020", 8);
  car3.drive(15000);
  Car.numberOfCars++;
   print( "Car 3: ${car3.brand} ${car3.model} Miles:${car3.getMilesDriven()} Age:${car3.getAge()}");
  print("Total number of cars created: ${Car.numberOfCars}");
}
