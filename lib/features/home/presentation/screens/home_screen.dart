import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/features/home/presentation/widgets/custom_blue_container.dart';
import 'package:doc_doc/features/home/presentation/widgets/custom_doctor_speciality_section.dart';
import 'package:doc_doc/features/home/presentation/widgets/custom_header_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeaderTag(),
              16.h.ph,
              CustomBlueContainer(),
              16.h.ph,
              CustomDoctorSpecialitySection(),
            ],
          ),
        ),
      ),
    );
  }
}
