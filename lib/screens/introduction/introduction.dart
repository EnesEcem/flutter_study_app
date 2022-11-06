import 'package:flutter/material.dart';
import 'package:flutter_study_app/routes/app_route.dart';
import 'package:get/get.dart';

import '../../configs/themes/app_colors.dart';
import '../../controllers/question_paper/question_paper_controller.dart';
import '../../widgets/app_circle_button.dart';
import '../home/home_screen.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController =
        Get.put(QuestionPaperController());

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient(context)),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 65,
              ),
              SizedBox(height: 40),
              Text(
                style: TextStyle(fontSize: 18, color: onSurfaceTextColor),
                "This is a study app. You can use it as you want. If you understand how this works, you would be able to scale it. With this you will master firebase backend and flutter front end.",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              AppCircleButton(
                onTap: () => null,
                child: Icon(Icons.arrow_forward, size: 35),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
