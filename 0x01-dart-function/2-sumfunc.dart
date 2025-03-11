int add(int a, int b){
    return (a+b);
}
int sub(int a, int b){
    return(a-b);
}
String showFunc(int a, int b) {
  String c = 'Add ${a} + ${b} = ${add(a, b)}';
  String d = 'Sub ${a} - ${b} = ${sub(a, b)}';

  return '${c}\n${d}';
}