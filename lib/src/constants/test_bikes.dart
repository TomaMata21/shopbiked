import 'package:shopbiked/src/constants/assets.dart';
import 'package:shopbiked/src/models/bike.dart';

const kTestBikes = [
  Bike(
    name: "PEUGEOT - LR01",
    image: Assets.bike1,
    category: "Road Bike",
    price: 1999.99,
    description: _description,
    isFavorite: false,
  ),
  Bike(
    name: "SMITH - Trade",
    image: Assets.hat1,
    category: "Road Helmet",
    price: 120,
    description: _description,
    isFavorite: false,
  ),
  Bike(
    name: "SMITH - Trade",
    image: Assets.hat1,
    category: "Road Helmet",
    price: 120,
    description: _description,
    isFavorite: false,
  ),
  Bike(
    name: "PILOT - Chromoly",
    image: "image",
    category: Assets.hat1,
    price: 1999.99,
    description: _description,
    isFavorite: false,
  ),
  Bike(
    name: "PEUGEOT - LR01",
    image: Assets.bike2,
    category: "Road Bike",
    price: 1999.99,
    description: _description,
    isFavorite: false,
  ),
  Bike(
    name: "SMITH - Trade",
    image: Assets.bike3,
    category: "Road Helmet",
    price: 120,
    description: _description,
    isFavorite: false,
  ),
  Bike(
    name: "PILOT - Chromoly",
    image: Assets.bike1,
    category: "Mountain Bike",
    price: 1999.99,
    description: _description,
    isFavorite: false,
  ),
];

const String _description =
    "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.";
