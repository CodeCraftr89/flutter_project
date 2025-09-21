class TPrincingCalculator{
  /// --- calculate price based on tax and shipping cost
  static double calculateTotalPrice(double productPrice,String location){
    double taxrate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxrate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;

  }
  /// --- calculate shipping cost based on location
  static String calculateShippingCost(String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);

  }
/// --- calculate tax based on location
  static String calculateTax(double productPrice,String location){
    double taxrate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxrate;
    return taxAmount.toStringAsFixed(2);

  }

  static double getTaxRateForLocation(String location){
    //look the tax rate for given location from a tax rate database or API
    // return the appropriate tax rate
    return 0.10; // example tax rate of 10%
  }

  static double getShippingCost(String location){
    //look the shipping cost for given location from a shipping cost database or API
    // return the appropriate shipping cost
    return 5.00; // example shipping cost of $5.00
  }
  /// --- calculate price based on tax and shipping cost
  // static double calculateCartTotal(CartMode cart){
  //   return cart.items.map((e)=>e.price).fold(0,(previousPrice,currentPrice)=>previousPrice+(currentPrice ?? 0));
  // }

}