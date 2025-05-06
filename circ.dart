import 'dart:ffi';
import 'dart:io';

import '../analysis_options.yaml';

void main() {
  print("Enter a number:");
  int? n = int.parse(stdin.readLineSync()!);

  String d = c.toString();
  int c = d.length;
  int f = c;
  int flag = 0;
  while (c > 0) {
    String e = d[0];
    for (int i = f - 1; i > 0; i--) {
      d[i - 1] = d[i];
    }
    d[0] = e;
    int g = int.parse(d);
    if (!prime(g)) {
      print("Not ");
      int flag = 1;
      break;
    }
    c--;
  }
  if (flag == 0) {
    print("Circular Prime");
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
