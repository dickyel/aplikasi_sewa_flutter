import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter/material.dart';

class LastChooseDateCard extends StatefulWidget {
  const LastChooseDateCard({Key? key}) : super(key: key);

  @override
  State<LastChooseDateCard> createState() => _LastChooseDateCardState();
}

class _LastChooseDateCardState extends State<LastChooseDateCard> {
  DateTime date = DateTime(
    2022,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dimulai dari hari',
          style: greyTextStyle,
        ),
        const SizedBox(
          height: 4,
        ),
        InkWell(
          onTap: () async {
            DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: date,
              firstDate: DateTime(2022),
              lastDate: DateTime(2100),
            );

            if (newDate == null) {
              return;
            }
            setState(() {
              date = newDate;
            });
          },
          child: Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: greyColor3,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pilih hari',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          '${date.year}/${date.month}/${date.day}',
          style: greyTextStyle,
        ),
      ],
    );
  }
}
