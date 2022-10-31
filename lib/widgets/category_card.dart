import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  String dropdownvalue = 'Pilih kategori';

  // List of items in our dropdown menu
  var items = [
    'Pilih kategori',
    'gadgets',
    'elktronik',
    'dekorasi',
    'audio',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Pilih Kategori',
        style: greyTextStyle,
      ),
      Container(
        height: 50,
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 5,
        ),
        width: double.infinity,
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 0.5, color: greyColor2),
            ),
          ),
          // Initial Value
          value: dropdownvalue,

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),

          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ),
    ]);
  }
}
