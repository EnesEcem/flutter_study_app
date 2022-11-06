import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study_app/controllers/question_paper/question_paper_controller.dart';
import 'package:flutter_study_app/screens/introduction/introduction.dart';
import 'package:get/get.dart';
import '../screens/home/home_screen.dart';
import '../screens/splash/splash_screens.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(
          name: "/introduction",
          page: () => AppIntroductionScreen(),
        ),
        GetPage(
            name: "/home",
            page: () => HomeScreen(),
            binding: BindingsBuilder(() {
              Get.put(QuestionPaperController());
            })),
      ];
}
