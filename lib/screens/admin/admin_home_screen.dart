import 'package:flutter/material.dart';
import 'package:pos/screens/widgets/custom_inkwell_button.dart';
import 'package:pos/utilities/utilities.dart';
import 'package:pos/utilities/window_size.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);
  static const routeName = '/AdminHomeScreen';
  @override
  _AdminHomeScreenState createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  void initState() {
    CustomWindowSize.setCustomWindowSize(
      maxHeight: double.infinity,
      maxWidth: double.infinity,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Home Screen',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: 'settings',
            splashRadius: Utilities.iconBorderRadius,
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          IconButton(
            onPressed: () {},
            tooltip: 'Log out',
            splashRadius: Utilities.iconBorderRadius,
            icon: Icon(
              Icons.logout,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(Utilities.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title('Stock'),
                  _stockButtons(),
                  _title('Reports'),
                  _reportButtons(),
                  _title('Expenses'),
                  _expenseButtons(),
                  _title('Staff'),
                  _staffButtons(),
                  _title('Retailer'),
                  _retailerButtons()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Wrap _retailerButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Add Retailer'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('View Retailer'),
        ),
      ],
    );
  }

  Wrap _expenseButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Shop Expense'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Staff Expense'),
        ),
      ],
    );
  }

  Wrap _staffButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Add Staff'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('View Staff'),
        ),
      ],
    );
  }

  Wrap _reportButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Stock Report'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Stock Entry Report'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Sale Report'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Expenses Report'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Cash Report'),
        ),
      ],
    );
  }

  Wrap _stockButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Add Product'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Sale Product'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Edit Product Detail'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Edit Product Quantity'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Edit Product Quantity'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Print Barcode'),
        ),
      ],
    );
  }

  Text _title(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.blueGrey,
        letterSpacing: 1,
        fontSize: 20,
      ),
    );
  }
}
