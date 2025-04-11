import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medimeet/Features/login/UI/widgets/text_form_field_for_password.dart';
import 'package:medimeet/core/Themes/styles.dart';
import 'package:medimeet/core/Widgets/custom_button.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
   final TextEditingController confirmpasswordController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
           spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
          children: [
           
          Text(
            "Password reset",
            style: TextStyles.font32BlueBold,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Your password has been successfully reset. click confirm to set a new password",
            style: TextStyles.font14GreyReguler
          ),
          Text(
            'Password',
            style: TextStyles.font14GreyReguler
          ),
          TextFormFieldForPassword(),
          Text(
            'Confirm Password',
            style: TextStyles.font14GreyReguler
          ),
          TextFormFieldForPassword(),
          SizedBox(height: 15,),
          CustomButton(
              text: 'Update Password',
             onPressed: () {
                // Add your confirm button action here
              },
      )
      ]),
      ),
    );
  }
}
