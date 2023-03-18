import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController inputfieldsdefaController = TextEditingController();

  TextEditingController inputfieldsdefaOneController = TextEditingController();

  TextEditingController inputfieldsdefaTwoController = TextEditingController();

  TextEditingController inputfieldsdefaThreeController =
      TextEditingController();

  TextEditingController inputfieldsdefaFourController = TextEditingController();

  TextEditingController inputfieldsdefaFiveController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputfieldsdefaController.dispose();
    inputfieldsdefaOneController.dispose();
    inputfieldsdefaTwoController.dispose();
    inputfieldsdefaThreeController.dispose();
    inputfieldsdefaFourController.dispose();
    inputfieldsdefaFiveController.dispose();
  }
}
