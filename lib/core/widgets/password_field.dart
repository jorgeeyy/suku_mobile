import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final String? Function(String?)? validator;

  const PasswordFormField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.validator,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),

        TextFormField(
          controller: widget.controller,
          obscureText: !_isVisible,
          validator: widget.validator,

          decoration: InputDecoration(
            hintText: widget.hintText,

            suffixIcon: IconButton(
              icon: Icon(
                _isVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() => _isVisible = !_isVisible);
              },
            ),

            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
