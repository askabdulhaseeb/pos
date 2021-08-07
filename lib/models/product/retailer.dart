import 'package:pos/models/product/retailer_bill.dart';

class Retailer {
  Retailer({
    this.name,
    this.id,
    this.contact,
    this.address,
    this.location,
    this.retailerBill,
  });
  String? name;
  String? id; // Auto
  String? contact;
  String? address;
  String? location;
  List<RetailerBill>? retailerBill;
}
