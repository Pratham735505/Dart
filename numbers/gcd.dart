int gcd(int a, int b) {
  if (b == 0) return a;
  return gcd(b, a % b);
}

int lcm(int a, int b) {
  return (a * b) ~/ gcd(a, b);
}

void main() {
  int num1 = 12, num2 = 18;
  print('LCM of $num1 and $num2 is ${lcm(num1, num2)}');
}