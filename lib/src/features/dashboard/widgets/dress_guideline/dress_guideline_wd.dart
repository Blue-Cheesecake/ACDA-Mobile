import 'package:flutter/material.dart';

class DressGuidelineWD extends StatelessWidget {
  const DressGuidelineWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(31)),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter, // Adjust this value to control the spread of the shadow
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Container(
                  height: 10, // Control the height to control how deep shadow goes
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.25), // Adjust opacity as needed
                        Colors.transparent,
                      ],
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22, left: 19, right: 19),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('How to dress properly...'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
