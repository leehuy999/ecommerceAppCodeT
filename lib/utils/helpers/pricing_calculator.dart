class TPricingCalculator {
  // Calculator price based a tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // calculate shipping cost
  static String calculateShippingCost (double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //Calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxtAmount = productPrice * taxRate;
    return taxtAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation (String location){
    //Lookup the tax rate for the given location from a tax rate database or APi
    // return the appropriate tax rate
    return 0.10; // example tax rate of 10%
  }

  static double getShippingCost (String location){
    //Lookup the shipping cost for the givin location using a shipping rate API
    // calculate  the shipping cost based on various factors like distance,weight , etc.
    return 5.00;// example shipiing cost of ５＄
  }
  // sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  // return cart.items.map((e) => e.price).fold(0, (previusPrice, currentPrice) => previusPrice + (currentPrice ?? 0));
  //}

}