import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medimeet/core/Themes/colors.dart';
import 'package:medimeet/core/Themes/styles.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor:
              isCheck
                  ? WidgetStateProperty.all(ColorsManager.mainBlue)
                  : WidgetStateProperty.all(ColorsManager.moreLightGray),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          side: BorderSide(color: ColorsManager.lightGrey, width: 1.w),
          value: isCheck,
          onChanged: (_) {
            setState(() {
              isCheck = !isCheck;
            });
          },
        ),
        Text(
          'Remember me',
          style: TextStyles.font13GreyReguler.copyWith(
            color: ColorsManager.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
