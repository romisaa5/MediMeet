import 'package:flutter/material.dart';
import 'package:medimeet/Features/login/UI/widgets/text_form_field_for_email.dart';
import 'package:medimeet/core/Themes/styles.dart';
import 'package:medimeet/core/Widgets/custom_button.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
   final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              spacing: 25,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forget Password',
                  style: TextStyles.font32BlueBold,
                ),
                Text(
                  'Please enter your email to reset the password',
                  style: TextStyles.font14GreyReguler,
                ),
                Text(
                  'Your Email ',
                  style: TextStyles.font14GreyReguler,
                ),
                TextFormFieldForEmail(),
                CustomButton(
                  text: 'Reset Password',
                 onPressed: (){},
                )
              ]),
        ));
  }
}
