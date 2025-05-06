import 'dart:ffi';
import 'dart:io';

void main() {
  print("Enter a number:");
  int? n = int.parse(stdin.readLineSync()!);
  if (n <= 4) {
    print("Not gold");
  } else {
    for (int i = 0; i < n / 2; i++) {
      if (prime(i) && prime(n - 1)) {
        stdout.write(i);
        stdout.write('\t');
        stdout.write(n - i);
        stdout.write('\n');
      }
    }
  }
}

bool prime(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  double d = n / 2;
  for (int i = 2; i < d; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
