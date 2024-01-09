import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';

class PromoCountdownClock extends StatefulWidget {
  final DateTime countdown;
  final bool hideDays;
  final bool darkMode;
  final bool showStarsCenter;
  final bool showRotatedStarsCenter;

  const PromoCountdownClock({
    Key? key,
    required this.countdown,
    this.hideDays = false,
    this.darkMode = false,
    this.showStarsCenter = false,
    this.showRotatedStarsCenter = false,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PromoCountdownClockState createState() => _PromoCountdownClockState();
}

class _PromoCountdownClockState extends State<PromoCountdownClock> {
  late DateTime currentTime;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    currentTime = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        currentTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Duration remainingTime = widget.countdown.difference(currentTime);

    int totalSeconds = remainingTime.inSeconds;
    int days = totalSeconds ~/ (60 * 60 * 24);
    int hours = widget.hideDays
        ? totalSeconds ~/ (60 * 60)
        : (totalSeconds ~/ (60 * 60)) % 24;
    int minutes = (totalSeconds ~/ 60) % 60;
    int seconds = totalSeconds % 60;

    return Center(
      child: Column(
        children: [
          if (widget.showStarsCenter)
          Center(
            child: SvgPicture.asset('assets/icons/stars.svg'),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'До конца акции осталось',
            style: TextStyle(
              color: Colors.red,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.1,
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFlipUnitCard('Days', days),
              _buildDivider(),
              _buildFlipUnitCard('Hours', hours),
              _buildDivider(),
              _buildFlipUnitCard('Minutes', minutes),
              _buildDivider(),
              _buildFlipUnitCard('Seconds', seconds),
            ],
          ),
          const SizedBox(height: 20.0),
          if (widget.showRotatedStarsCenter)
          Center(
            child: Transform.rotate(
              angle: 3.14159,
              child: SvgPicture.asset('assets/icons/stars.svg'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: VerticalDivider(
        width: 1.0,
        color: Colors.white, // You can adjust the color here
      ),
    );
  }

  Widget _buildFlipUnitCard(String label, int value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                value.toString().padLeft(2, '0'),
                style: const TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
