double celsiusToFahrenheit(double celsius) {
  return (celsius * 9/5) + 32;
}

void main() {
  double celsius = 25;
  print('$celsius°C is ${celsiusToFahrenheit(celsius)}°F');
}