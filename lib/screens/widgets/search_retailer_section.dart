import 'package:flutter/material.dart';
import '../../provider/retailer_provider.dart';
import '../../utilities/custom_validator.dart';
import '../RetailerBillScreens/addRetailerBillScreen/add_retailer_bill_screen.dart';
import 'custom_inkwell_button.dart';
import 'custom_textformfield.dart';

class SearchRetailerBillSection extends StatelessWidget {
  SearchRetailerBillSection({required this.retailer, Key? key})
      : super(key: key);
  final RetailerProvider retailer;
  final TextEditingController _billNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 420,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomTextFormField(
                  title: 'Bill No',
                  hint: 'Retailer bill no',
                  controller: _billNo,
                  validator: (String? value) =>
                      CustomValidator.lessThen3(value),
                ),
                CustomInkWellButton(
                  onTap: () {
                    retailer.searchBill(billNo: _billNo.text);
                  },
                  child: const Text('Search'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (retailer.retailer!.name != null)
                  SizedBox(
                    width: 320,
                    child: Text(
                      '  Retailer: ${retailer.retailer!.name}',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                else
                  const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 26, bottom: 10),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AddRetailerBillScreen.routeName);
                    },
                    child: const Text('Add Bill'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
