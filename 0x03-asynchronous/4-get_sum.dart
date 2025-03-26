import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userDataStr = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(userDataStr);
    String userId = userData['id'];

    String ordersData = await fetchUserOrders(userId);
    List<dynamic> ordersList = jsonDecode(ordersData);

    double total = 0.0;

    for (var order in ordersList) {
      String product = order.toString();
      String priceData = await fetchProductPrice(product);
      double productPrice = double.tryParse(priceData) ?? 0.0;
      total += productPrice;
    }

    return total;
  } catch (e) {
    print("Error in calculateTotal(): $e");
    return -1.0;
  }
}
