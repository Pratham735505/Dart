List<int> findFactors(int n) {
  List<int> factors = [];
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      factors.add(i);
    }
  }
  return factors;
}

void main() {
  int number = 24;
  print('Factors of $number: ${findFactors(number)}');
}