import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos/utilities/utilities.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    required Function onChange,
    required this.title,
    this.keyboardType = TextInputType.text,
    this.hint,
    this.width = 280,
    this.readOnly = false,
    Key? key,
  })  : _onChange = onChange,
        super(key: key);
  final Function _onChange;
  final TextInputType? keyboardType;
  final String title;
  final String? hint;
  final double width;
  final bool readOnly;

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      margin: const EdgeInsets.all(4),
      child: TextFormField(
        readOnly: widget.readOnly,
        onChanged: (value) => widget._onChange(value),
        keyboardType: widget.keyboardType,
        inputFormatters: (widget.keyboardType == TextInputType.number)
            ? [FilteringTextInputFormatter.digitsOnly]
            : [FilteringTextInputFormatter.deny('\n')],
        decoration: InputDecoration(
          labelText: widget.title,
          hintText: widget.hint,
          // suffixIcon: (widget.readOnly)
          //     ? const SizedBox()
          //     : IconButton(
          //         onPressed: () => widget._onChange(''),
          //         splashRadius: Utilities.iconBorderRadius,
          //         icon: const Icon(Icons.clear),
          //       ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Utilities.borderRadious),
          ),
        ),
      ),
    );
  }
}
