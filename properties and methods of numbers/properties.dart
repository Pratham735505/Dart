import 'dart:io';

void main(){
  
  print(78.hashCode);
  //print(904878.hashCode);
  print((4/0).isFinite);
  print((-4/0).isInfinite);
  print((4/0).isInfinite);
  print(7.isNaN);
  print(0.isNegative);
  print(0.sign);
  print(2.isEven);
  print(5.isOdd);
}
