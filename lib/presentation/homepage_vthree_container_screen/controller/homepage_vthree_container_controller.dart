// ignore_for_file: duplicate_ignore, must_call_super

import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/homepage_vthree_container_screen/models/homepage_vthree_container_model.dart';

// ignore: duplicate_ignore
class HomepageVthreeContainerController extends GetxController {
  Rx<HomepageVthreeContainerModel> homepageVthreeContainerModelObj =
      HomepageVthreeContainerModel().obs;
  RxInt position = 0.obs;

  onChange(int index) {
    position.value = index;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // ignore: must_call_super, must_call_super, must_call_super, must_call_super, must_call_super, must_call_super, must_call_super
  @override
  void onInit() {}
}
