import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  
  Map<String, double> petPrices = {
    'Dog': 499.99,
    'Cat': 299.49,
    'Parrot': 149.99,
    'Hamster': 39.99
  };

  double totalCost = petPrices.values.reduce((value, element) => value + element);

  
  print('Pet Prices: $petPrices');
  print('Total Cost: \$${totalCost.toStringAsFixed(2)}');
}

