import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../../firebase_ref/references.dart';
import '../../models/questions_paper_model.dart';
import '../../services/firebase_storage_service.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;
  final allPapers = <QuestionPaperModel>[].obs;

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgName = [
      "biology",
      "chemistry",
      "maths",
      "physics",
    ];
    try {
      QuerySnapshot<Map<String, dynamic>> data = await questionPaperRF.get();
      for (var img in imgName) {
        final imgUrl = await Get.find<FirebaseStorageService>().getImage(img);
        allPaperImages.add(imgUrl!);
      }
    } catch (e) {
      print(e);
    }
  }
}
