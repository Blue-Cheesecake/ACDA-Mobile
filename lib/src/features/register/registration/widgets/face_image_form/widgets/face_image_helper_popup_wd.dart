import 'package:flutter/material.dart';

import '../../../../../../utils/utils.dart';
import '../utils/utils.dart';

class FaceImageHelperPopupWD extends StatelessWidget {
  const FaceImageHelperPopupWD({required this.removeOverlay, Key? key}) : super(key: key);

  final VoidCallback removeOverlay;

  @override
  Widget build(BuildContext context) {
    return ACDAHelperPopupWD(
      removeOverlay: removeOverlay,
      mainTitle: FaceImageFormMessages.helpMainTitle,
      subtitle: FaceImageFormMessages.helpSubTitle,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...FaceImageFormMessages.helperIntructions.map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: ACDABulletListTextWD(reqs: [BulletListReqModel(content: e)]),
              ),
            ),
            const SizedBox(height: 17),
            Center(child: FaceImageFormAssets.tutorialFaceImage),
          ],
        ),
      ),
    );
  }
}
