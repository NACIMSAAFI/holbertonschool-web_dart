double calculateArea(double height, double base){
    double area = (height * base) / 2;
    String str = area.toStringAsFixed(2);
    double result = double.parse(str);
    return result;
}