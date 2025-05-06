bool isPalindromeNumber(int n) {
  return n == reverseNumber(n);
}

int reverseNumber(int n) {
  int reversed = 0;
  while (n != 0) {
    int digit = n % 10;
    reversed = reversed * 10 + digit;
    n ~/= 10;
  }
  return reversed;
}

void main() {
  int num = 12321;
  print('$num is ${isPalindromeNumber(num) ? 'a palindrome' : 'not a palindrome'}');
}