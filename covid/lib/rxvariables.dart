import 'package:covid/data.dart';
import 'package:get/get.dart';

class rxVariables extends GetxController {
  RxBool addBottomSheet = false.obs;
  RxList<bool> likeBool = [false, false, false, false, false, false].obs;
  RxBool changePosition = false.obs;
  RxDouble getKeyBoardHeight = 0.0.obs;
}
