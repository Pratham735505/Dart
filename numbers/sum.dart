int sumOfDigits(int n) {
  int sum = 0;
  while (n > 0) {
    sum += n % 10;
    n ~/= 10;
  }
  return sum;
}

void main() {
  int num = 12345;
  print('Sum of digits in $num is ${sumOfDigits(num)}');
}