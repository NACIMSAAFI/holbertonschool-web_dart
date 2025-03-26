import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userDataStr = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(userDataStr);
    String userId = userData['id'];

    String ordersStr = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersStr);

    double total = 0.0;

    for (String product in orders) {
      String priceStr = await fetchProductPrice(product);
      var price = jsonDecode(priceStr);

      total += (price is int) ? price.toDouble() : price;
    }

    return total;
  } catch (e) {
    print("Error in calculateTotal(): $e");
    return -1.0;
  }
}
