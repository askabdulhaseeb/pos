import 'package:flutter/material.dart';
import 'package:pos/utilities/utilities.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    Key? key,
    required List<DropdownMenuItem<String>> items,
    required String hint,
    required Function onChange,
    this.margin = 4,
    this.padding = 12,
  })  : _items = items,
        _hint = hint,
        _onChange = onChange,
        super(key: key);

  final List<DropdownMenuItem<String>> _items;
  final String _hint;
  final Function _onChange;
  final double margin, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: EdgeInsets.symmetric(horizontal: padding),
      margin: EdgeInsets.only(left: margin, top: 4, bottom: 4),
      decoration: BoxDecoration(
        border: Border.all(width: 1.2, color: Colors.grey),
        borderRadius: BorderRadius.circular(Utilities.borderRadious),
      ),
      child: DropdownButton<String>(
        items: _items,
        onChanged: (value) => _onChange(value),
        hint: Text(_hint),
        isExpanded: true,
        underline: const SizedBox(),
      ),
    );
  }
}
