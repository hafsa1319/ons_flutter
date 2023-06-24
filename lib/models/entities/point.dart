class Point {
  int? points;
  double? cartPriceRate;
  int? cartPointsRate;
  int? maxPointDiscount;
  int? maxProductPointDiscount;

  Point.fromJson(Map parsedJson) {
    points = parsedJson['points'];
    cartPriceRate = parsedJson['cart_price_rate'].toDouble();
    cartPointsRate = int.tryParse('${parsedJson['cart_points_rate']}');
    maxPointDiscount = int.tryParse('${parsedJson['max_point_discount']}');
    maxProductPointDiscount =
        int.tryParse('${parsedJson['max_product_point_discount']}');
  }
}
