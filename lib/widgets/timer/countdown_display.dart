import 'package:flutter/material.dart';

/// 외부에서 seconds를 계속 전달받아 예쁘게 표시하는 타이머 위젯
class CountdownDisplay extends StatelessWidget {
  final int seconds;
  final double size;
  final Color color;
  final Color backgroundColor;

  const CountdownDisplay({
    Key? key,
    required this.seconds,
    this.size = 56,
    this.color = Colors.blue,
    this.backgroundColor = const Color(0xFFE0E0E0),
  }) : super(key: key);

  String get _formatted {
    final m = (seconds ~/ 60).toString().padLeft(2, '0');
    final s = (seconds % 60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size * 2.5,
      height: size,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Text(
          _formatted,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: size / 3,
            color: color,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
