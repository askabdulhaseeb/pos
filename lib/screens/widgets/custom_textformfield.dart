import 'package:flutter/material.dart';
import 'package:pos/utilities/utilities.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    required TextEditingController controller,
    required this.title,
    this.hint,
    this.width = 280,
    this.readOnly = false,
    Key? key,
  })  : _controller = controller,
        super(key: key);
  final TextEditingController _controller;
  final String title;
  final String? hint;
  final double width;
  final bool readOnly;

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  void _onListener() => setState(() {});
  @override
  void initState() {
    widget._controller.addListener(_onListener);
    super.initState();
  }

  @override
  void dispose() {
    widget._controller.removeListener(_onListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      margin: const EdgeInsets.all(4),
      child: TextFormField(
        controller: widget._controller,
        readOnly: widget.readOnly,
        decoration: InputDecoration(
          labelText: widget.title,
          hintText: widget.hint,
          suffixIcon: (widget._controller.text.isEmpty)
              ? const SizedBox()
              : (widget.readOnly)
                  ? const SizedBox()
                  : IconButton(
                      onPressed: () =>
                          setState(() => widget._controller.clear()),
                      splashRadius: Utilities.iconBorderRadius,
                      icon: const Icon(Icons.clear),
                    ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Utilities.borderRadious),
          ),
        ),
      ),
    );
  }
}
