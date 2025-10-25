import 'package:car_rental_app/data/models/cars_model.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Image.asset("assets/car_image.png", height: 120),
          Text(
            car.model,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/gps.png'),
                      Text(' ${car.distance.toStringAsFixed(0)}km'),
                    ],
                  ),
                  SizedBox(width: 3),
                  Row(
                    children: [
                      Image.asset('assets/pump.png'),
                      Text(' ${car.fuelCapacity.toStringAsFixed(0)}L'),
                    ],
                  ),
                ],
              ),
              Text(
                '\$${car.pricePerHour.toStringAsFixed(2)}/h',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
