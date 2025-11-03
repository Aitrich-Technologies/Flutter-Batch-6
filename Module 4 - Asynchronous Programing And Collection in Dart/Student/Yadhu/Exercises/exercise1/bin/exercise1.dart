void main()
{
  var petprices = {'Bella': 1.5,'Lucy': 0.8,'Loki': 1.2,'Leo': 2.0,'Oggy': 3.5};
  print("Pet Prices: $petprices");

  var Prices = petprices.values;
  double total = Prices.reduce((value, element) => value + element);
  print('Total cost: $total');
}