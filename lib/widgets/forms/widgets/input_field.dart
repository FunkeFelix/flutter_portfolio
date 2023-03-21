import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';

class InputField extends StatefulWidget {
  final String label;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final int maxLines;
  final int minLines;
  final bool enabled;
  final bool autofocus;
  final bool readOnly;
  final bool showCursor;
  final bool expands;
  final bool enableInteractiveSele;
  final int? maxLength;

  const InputField({
    super.key,
    required this.label,
    this.validator,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.minLines = 1,
    this.enabled = true,
    this.autofocus = false,
    this.readOnly = false,
    this.showCursor = true,
    this.expands = false,
    this.enableInteractiveSele = true,
    this.maxLength,
  });

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.brown[800]),
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      maxLength: widget.maxLength ?? null,
      enabled: widget.enabled,
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      showCursor: widget.showCursor,
      expands: widget.expands,
      enableInteractiveSelection: widget.enableInteractiveSele,
      decoration: InputDecoration(
        helperStyle: TextStyle(color: Colors.brown[800]),
        labelStyle: TextStyle(color: Colors.brown[800]),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.brown[800]!, width: 2.0),
          borderRadius: const BorderRadius.all(
            Radius.circular(24.0),
          ),
        ),
        labelText: widget.label,
        fillColor: Colors.brown[800],
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24.0),
          ),
        ),
      ),
    ).paddingAll(24);
  }
}
