List<double> convertToF(List<double> temperaturesInC) {
  List<double> mappedList = temperaturesInC.map((number) {
    double fahrenheit = (number * 9 / 5) + 32;
    return double.parse(fahrenheit.toStringAsFixed(2));
  }).toList();

  return mappedList;
}
