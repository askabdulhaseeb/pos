class RetailerBill {
  RetailerBill({
    required this.id,
    required this.rid,
    required this.totalAmount,
    required this.productCount,
    required this.date,
  }); // Bill date
  final String id; // Bill ID
  final String rid; // Retailer ID
  final double totalAmount; // Total Bill Amount
  final int productCount;
  final String date;
}
