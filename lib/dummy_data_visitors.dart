import './models/rented_parking.dart';
import 'package:flutter/material.dart';
import './ScreenList.dart';
import './models/category_parking.dart';

List<Category_parking> dummy_categories = [
  Category_parking(
    id: 'c1',
    title: 'NO:1',
    color: Colors.grey,
  ),

  Category_parking(
    id: 'c2',
    title: 'NO:2',
    color: Colors.lightGreen,
  ),
  Category_parking(
    id: 'c3',
    title: 'NO:3',
    color: Colors.lightGreen,
  ),
  Category_parking(
    id: 'c4',
    title: 'NO:4',
    color: Colors.lightGreen,
  ),
  Category_parking(
    id: 'c5',
    title: 'NO:5',
    color: Colors.lightGreen,
  ),
  Category_parking(
    id: 'c6',
    title: 'NO:6',
    color: Colors.grey,
  ),
  Category_parking(
    id: 'c7',
    title: 'NO:7',
    color: Colors.grey,
  ),
  Category_parking(
    id: 'c8',
    title: 'NO:8',
    color: Colors.lightGreen,
  ),
  Category_parking(
    id: 'c9',
    title: 'NO:9',
    color: Colors.grey,
  ),
  Category_parking(
    id: 'c10',
    title: 'NO:10',
    color: Colors.lightGreen,
  ),
];
List<RentedParking> rentedParking=[
  RentedParking(
    id: 'r1',
    name: 'Saksham Mittal',
    dateOfRenting: '20-11-19',
    rentedTimeInterval: '1pm - 3pm',
    amountPaid: 60.0,
    details: '777589123, A-12, 2nd floor, Saket, Delhi',
  ),
  RentedParking(
    id: 'r1',
    name: 'Gagan Raghav',
    dateOfRenting: '21-11-19',
    rentedTimeInterval: '2pm - 3pm',
    amountPaid: 40.0,
    details: '677565123, B-16, 4th floor, Green Park, Delhi',
  ),
  RentedParking(
    id: 'r1',
    name: 'Jayant Arora',
    dateOfRenting: '22-11-19',
    rentedTimeInterval: '1pm - 3.30pm',
    amountPaid: 60.0,
    details: '977565123, Seelampur, Delhi',
  ),
];

