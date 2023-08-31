import '../../../../config/config.dart';
import '../../../../utils/utils.dart';

class DashboardMessages {
  DashboardMessages._();

  static const logout = 'log out?';
  static const goodLuck = 'Good Luck with the exams!';
  static const passedTitle = 'Passed';
  static const failedTitle = 'Failed';
  static const totalTitle = 'Total';

  // Dress Guideline
  static const howToDress = 'How to dress properly...';
  static const male = 'Male';
  static const female = 'Female';
  static final maleGuideline = [
    [
      BulletListReqModel(
        content: '\u2022    White T-shirt,',
        style: TextStyles.bodyText4,
      ),
    ],
    [
      BulletListReqModel(
        content: '\u2022    Long Black/Navy slacks',
        style: TextStyles.bodyText4,
      ),
      BulletListReqModel(
        content: '     - No jeans',
        style: TextStyles.bodyText4.copyWith(
          color: DesignSystem.g9,
        ),
      ),
    ],
    [
      BulletListReqModel(
        content: '\u2022    Polite shoes',
        style: TextStyles.bodyText4,
      ),
      BulletListReqModel(
        content: '     - No flip-flops/sandals',
        style: TextStyles.bodyText4.copyWith(
          color: DesignSystem.g9,
        ),
      ),
    ],
    [
      BulletListReqModel(
        content: '\u2022    Student ID card with\n     the strap',
        style: TextStyles.bodyText4,
      ),
    ],
    [
      BulletListReqModel(
        content: '\u2022    Belt',
        style: TextStyles.bodyText4,
      )
    ]
  ];
  static final femaleGuideline = [
    [
      BulletListReqModel(
        content: '\u2022    White T-shirt,',
        style: TextStyles.bodyText4,
      ),
    ],
    [
      BulletListReqModel(
        content: '\u2022    Long Black/Navy skirt',
        style: TextStyles.bodyText4,
      ),
    ],
    [
      BulletListReqModel(
        content: '\u2022    Polite shoes',
        style: TextStyles.bodyText4,
      ),
      BulletListReqModel(
        content: '     - No flip-flops/sandals',
        style: TextStyles.bodyText4.copyWith(
          color: DesignSystem.g9,
        ),
      ),
    ],
    [
      BulletListReqModel(
        content: '\u2022    Student ID card with\n     the strap',
        style: TextStyles.bodyText4,
      ),
    ],
    [
      BulletListReqModel(
        content: '\u2022    Belt',
        style: TextStyles.bodyText4,
      )
    ]
  ];
}
