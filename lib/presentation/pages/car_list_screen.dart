import 'package:car_rental_app/data/models/cars_model.dart';
import 'package:car_rental_app/presentation/widgets/car_card_widget.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<Car> cars = [
    Car(
      model: "Toyota Corolla",
      distance: 150,
      fuelCapacity: 50,
      pricePerHour: 10,
    ),
    Car(
      model: "Honda Civic",
      distance: 870,
      fuelCapacity: 45,
      pricePerHour: 12,
    ),
    Car(
      model: "Ford Mustang",
      distance: 120,
      fuelCapacity: 60,
      pricePerHour: 20,
    ),
    Car(
      model: "Tesla Model 3",
      distance: 80,
      fuelCapacity: 75,
      pricePerHour: 25,
    ),
    Car(model: "BMW X5", distance: 180, fuelCapacity: 70, pricePerHour: 22),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            final car = cars[index];
            return CarCard(car: car);
          },
        ),
      ),
    );
  }
}
