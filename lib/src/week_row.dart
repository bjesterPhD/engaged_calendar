import 'package:flutter/material.dart';

class WeekRow extends StatelessWidget {
  final List<DateTime> days;
  final double width;
  final double height;

  const WeekRow({
    Key? key,
    required this.days,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(days.length, (index) {
        final date = days[index];
        final isToday = date.year == DateTime.now().year &&
            date.month == DateTime.now().month &&
            date.day == DateTime.now().day;

        return Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: isToday ? Colors.blueAccent : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          alignment: Alignment.center,
          child: Text(
            date.day.toString(),
            style: TextStyle(
              color: isToday ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }),
    );
  }
}
