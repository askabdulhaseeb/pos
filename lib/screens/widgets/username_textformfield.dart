import 'package:flutter/material.dart';
import 'package:pos/utilities/utilities.dart';

class UsernameTextFormField extends StatefulWidget {
  const UsernameTextFormField({
    required TextEditingController controller,
    this.width = 280,
    Key? key,
  })  : _controller = controller,
        super(key: key);
  final TextEditingController _controller;
  final double width;

  @override
  _UsernameTextFormFieldState createState() => _UsernameTextFormFieldState();
}

class _UsernameTextFormFieldState extends State<UsernameTextFormField> {
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
    return SizedBox(
      width: widget.width,
      child: TextFormField(
        controller: widget._controller,
        decoration: InputDecoration(
          hintText: 'Username',
          prefixIcon: const Icon(Icons.person),
          suffixIcon: (widget._controller.text.isEmpty)
              ? const SizedBox()
              : IconButton(
                  onPressed: () => setState(() => widget._controller.clear()),
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
