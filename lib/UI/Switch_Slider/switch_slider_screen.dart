import 'package:flutter/material.dart';

class SwitchSliderScreen extends StatefulWidget {
  const SwitchSliderScreen({super.key});

  @override
  State<SwitchSliderScreen> createState() => _SwitchSliderScreenState();
}

class _SwitchSliderScreenState extends State<SwitchSliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice with Bloc on switch and slider"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Notification"),
                Switch(value: true, onChanged: (newValue) {}),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              color: Colors.red.withOpacity(.2),
            ),
            const SizedBox(
              height: 30,
            ),
            Slider(value: .4, onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
