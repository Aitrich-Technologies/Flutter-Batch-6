void main(){
  var petPrices ={'Bella': 1.5,'Lucy':0.8,'Loki':1.2,'Leo':2.0,'oggy':3.5};
  print('Pet Prices: $petPrices');

  var price= petPrices.values;
  double cost=price.reduce((current,nextval)=> current+nextval);
  print('Total Cost : $cost');
  
}