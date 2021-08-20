import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/screens/productScreens/saleProduct/pluto_main.dart';
import 'package:provider/provider.dart';
import '../../../models/user/stoff.dart';
import '../../../provider/stoff_provider.dart';
import '../../../utilities/utilities.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_dropdown_button.dart';
import '../../widgets/custom_textformfield.dart';

class SaleProductScreen extends StatefulWidget {
  const SaleProductScreen({Key? key}) : super(key: key);
  static const String routeName = '/SaleProductScreen';
  @override
  _SaleProductScreenState createState() => _SaleProductScreenState();
}

class _SaleProductScreenState extends State<SaleProductScreen> {
  final TextEditingController _barcode = TextEditingController();
  final TextEditingController _qty = TextEditingController(text: '1');
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Sale Product'),
      body: Padding(
        padding: EdgeInsets.all(Utilities.padding),
        child: FractionallySizedBox(
            alignment: Alignment.topCenter,
            widthFactor: 0.5,
            // ignore: avoid_unnecessary_containers
            child: Container(child: PlutoMain())),

        // Column(
        //   // crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     _shopName(size),
        //     SizedBox(
        //       height: size.height * 0.6,
        //       child: Row(
        //         children: <Widget>[
        //           Flexible(
        //             flex: 7,
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: <Widget>[
        //                 _saleInfoHeader(),
        //                 SizedBox(
        //                   height: 400,
        //                   width: 800,
        //                   child: Container(), // ploto
        //                 ),
        //                 PlutoMain(),                        // PlutoMain()
        //               ],
        //             ),
        //           ),
        //           Flexible(
        //             flex: 3,
        //             child: Container(
        //               color: Colors.yellow,
        //             ),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }

  Row _saleInfoHeader() {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Bill No: 88620'),
            Text(
              DateFormat('dd-MM-yyyy').format(
                DateTime.now(),
              ),
            ),
          ],
        ),
        const Spacer(),
        CustomTextFormField(
          title: 'Barcode',
          controller: _barcode,
          hint: 'Product Barcode to sale',
          autoFocus: true,
        ),
        CustomTextFormField(
          title: 'Item Quantity',
          controller: _qty,
          textAlign: TextAlign.end,
          keyboardType: TextInputType.number,
          hint: 'No. of items',
          width: 140,
        ),
        Consumer<StoffProvider>(
          builder: (
            BuildContext context,
            StoffProvider stoff,
            Widget? child,
          ) =>
              CustomDropdownButton(
            items: stoff.stoff
                .map((Stoff e) => DropdownMenuItem<String>(
                      value: e.uid,
                      child: Text(e.name.toString()),
                    ))
                .toList(),
            selectedItem: '111',
            hint: 'Select Salemen',
            readOnly: true,
            width: 140,
            onChange: () {},
          ),
        ),
        SizedBox(width: Utilities.padding),
      ],
    );
  }

  Padding _shopName(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Utilities.padding * 2, vertical: Utilities.padding),
      child: SizedBox(
        width: size.width * 0.6,
        height: size.height * 0.16,
        child: const FittedBox(
          child: Text(
            'Baby and Baba \nGarments',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
