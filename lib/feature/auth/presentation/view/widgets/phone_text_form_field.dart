import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class PhoneTextFormField extends StatefulWidget {
  PhoneTextFormField({super.key});
  List<String> c = ["KW", "eg"];
  String selectedCode = "KW";
  @override
  State<PhoneTextFormField> createState() => _PhoneTextFormField();
}

class _PhoneTextFormField extends State<PhoneTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppColors.white,
        boxShadow: [BoxShadow(blurRadius: 2, color: Colors.black12)],
      ),
      child: Row(
        children: [
          PopupMenuButton<String>(
            icon: Icon(Icons.keyboard_arrow_down, size: 30, color: AppColors.grey),
            onSelected: (String newValue) {
              setState(() {
                widget.selectedCode = newValue;
              });
            },
            itemBuilder: (BuildContext context) {
              return widget.c.map((String code) {
                return PopupMenuItem<String>(value: code, child: Text(code));
              }).toList();
            },
          ),
          Text(widget.selectedCode),
          SizedBox(width: 10),
          Container(width: .3, height: 40, color: AppColors.grey),

          const SizedBox(width: 8),

          Expanded(
            child: TextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Phone Number',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
