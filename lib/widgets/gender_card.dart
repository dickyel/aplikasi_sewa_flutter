import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class GenderCard extends StatefulWidget {
  const GenderCard({Key? key}) : super(key: key);

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  String dropdowngender = 'Pilih Jenis Kelamin';

  var genders = [
    'Pilih Jenis Kelamin',
    'Laki-laki',
    'Perempuan',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Pilih Jenis Kelamin',
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
          value: dropdowngender,

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),

          // Array list of items
          items: genders.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdowngender = newValue!;
            });
          },
        ),
      ),
    ]);
  }
}
