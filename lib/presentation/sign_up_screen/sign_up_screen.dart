import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/core/utils/validation_functions.dart';
import 'package:vashon_s_application20/widgets/custom_button.dart';
import 'package:vashon_s_application20/widgets/custom_text_form_field.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Container(
                    decoration: AppDecoration.fillGray100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgModal,
                          height: getVerticalSize(
                            20,
                          ),
                          width: getHorizontalSize(
                            390,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 5,
                              right: 16,
                            ),
                            child: Text(
                              "lbl_cancel".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadlineOrange500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 21,
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_sign_up".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProBold34,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    675,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 7,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: getPadding(
                            left: 16,
                            right: 16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                ),
                                child: Text(
                                  "lbl_general_details".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProSemibold20,
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                child: Container(
                                  margin: getMargin(
                                    top: 12,
                                  ),
                                  padding: getPadding(
                                    top: 11,
                                    bottom: 11,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .inputfieldsdefaController,
                                        hintText: "lbl_john_smith".tr,
                                        margin: getMargin(
                                          left: 16,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 15,
                                          top: 12,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_john_smith2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtBodyBlack900,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 9,
                                              ),
                                              child: Divider(
                                                height: getVerticalSize(
                                                  1,
                                                ),
                                                thickness: getVerticalSize(
                                                  1,
                                                ),
                                                color: ColorConstant.gray8005b,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .inputfieldsdefaOneController,
                                        hintText: "lbl_password".tr,
                                        margin: getMargin(
                                          left: 16,
                                          top: 11,
                                        ),
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText: true,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 11,
                                        ),
                                        child: Text(
                                          "msg_confirm_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtBodyGray8004c,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 23,
                                ),
                                child: Text(
                                  "lbl_address".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProSemibold20,
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                child: Container(
                                  margin: getMargin(
                                    top: 12,
                                  ),
                                  padding: getPadding(
                                    top: 11,
                                    bottom: 11,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .inputfieldsdefaTwoController,
                                        hintText: "lbl_great_street_1".tr,
                                        margin: getMargin(
                                          left: 16,
                                        ),
                                      ),
                                      CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .inputfieldsdefaThreeController,
                                        hintText: "lbl_second_line".tr,
                                        margin: getMargin(
                                          left: 16,
                                          top: 11,
                                        ),
                                      ),
                                      CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .inputfieldsdefaFourController,
                                        hintText: "lbl_city".tr,
                                        margin: getMargin(
                                          left: 16,
                                          top: 12,
                                        ),
                                      ),
                                      CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .inputfieldsdefaFiveController,
                                        hintText: "lbl_state".tr,
                                        margin: getMargin(
                                          left: 16,
                                          top: 11,
                                        ),
                                        textInputAction: TextInputAction.done,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 11,
                                        ),
                                        child: Text(
                                          "lbl_zip_code".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtBodyGray8004c,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: AppDecoration.outlineBlack9004c,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Divider(
                                height: getVerticalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: ColorConstant.gray8005b,
                              ),
                              Container(
                                width: getHorizontalSize(
                                  358,
                                ),
                                margin: getMargin(
                                  left: 16,
                                  top: 16,
                                  right: 16,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_by_signing_up_i2".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray80099,
                                          fontSize: getFontSize(
                                            13,
                                          ),
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "msg_terms_conditions".tr,
                                        style: TextStyle(
                                          color: ColorConstant.lightBlueA700,
                                          fontSize: getFontSize(
                                            13,
                                          ),
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray80099,
                                          fontSize: getFontSize(
                                            13,
                                          ),
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              CustomButton(
                                height: getVerticalSize(
                                  54,
                                ),
                                text: "lbl_sign_up".tr,
                                margin: getMargin(
                                  left: 16,
                                  top: 16,
                                  right: 16,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 17,
                                  bottom: 49,
                                ),
                                child: Text(
                                  "lbl_login".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadlineOrange500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
