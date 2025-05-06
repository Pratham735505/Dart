bool isArmstrong(int number) {
  int originalNumber = number;
  int sum = 0;
  int digits = number.toString().length;
  
  while (number > 0) {
    int digit = number % 10;
    sum += digit * digit * digit;
    number ~/= 10;
  }
  
  return sum == originalNumber;
}

void main() {
  int num = 153;
  print('$num is ${isArmstrong(num) ? 'an Armstrong number' : 'not an Armstrong number'}');
}