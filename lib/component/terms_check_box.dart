
import 'package:flutter/material.dart';

class TermsOfServiceCheckbox extends StatefulWidget {
  const TermsOfServiceCheckbox({super.key});

  @override
  State<TermsOfServiceCheckbox> createState() => _TermsOfServiceCheckboxState();
}

class _TermsOfServiceCheckboxState extends State<TermsOfServiceCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            activeColor: Colors.green, // Color when checked
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
              });
            },
            side: const BorderSide(color: Colors.grey, width: 2), // Border color when not checked
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const Text(
            "I have read and agree to the Terms of Service",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey, // Text color
            ),
          ),
        ],
      ),
    );
  }
}
