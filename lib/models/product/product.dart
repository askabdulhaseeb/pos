class Product {
  Product({
    this.name,
    this.depID,
    this.catID,
    this.barcode,
    this.retailerBillID,
    this.sid,
    this.stuff,
    this.rid,
    this.retailPrice,
    this.salePrice,
    this.shopQty,
    this.storeQty,
  });
  String? name;
  String? depID; // Department ID
  String? catID; // Category ID
  String? barcode; // Auto OR Manual
  List<String>? retailerBillID;
  String? sid; // Product Size ID
  String? stuff;
  List<String>? rid; // Retailer ID
  double? retailPrice;
  double? salePrice; // should be grater then retail price
  int? shopQty;
  int? storeQty;
}
