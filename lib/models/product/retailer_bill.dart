class RetailerBill {
  RetailerBill({
    this.id,
    this.billNo,
    this.rid,
    this.totalAmount,
    this.productCount,
    this.date,
  });
  String? id; // Bill ID, Auto, Unique
  String? billNo;
  String? rid; // Retailer ID
  double? totalAmount; // Total Bill Amount
  int? productCount;
  String? date;
}
