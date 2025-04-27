import 'package:flutter/material.dart';

class CustomTextFieldWithTitle extends StatefulWidget {
  final String title;
  final String hintText;
  final bool isObscureText; // true if it’s a password

  const CustomTextFieldWithTitle({
    super.key,
    required this.title,
    required this.hintText,
    this.isObscureText = false,
  });

  @override
  State<CustomTextFieldWithTitle> createState() => _CustomTextFieldWithTitleState();
}

class _CustomTextFieldWithTitleState extends State<CustomTextFieldWithTitle> {
  late bool _obscureText; // to toggle visibility

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isObscureText; // initial value
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            widget.title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          obscureText: _obscureText,
          onTap: () {

          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(
              fontSize: 14,
            ),
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            suffixIcon: widget.isObscureText
                ? IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            )
                : null,
          ),
        ),
      ],
    );
  }
}
