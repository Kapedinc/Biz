import '../payments_page/widgets/list_item_widget.dart';
import '../payments_page/widgets/listgroupfortythree_item_widget.dart';
import '../payments_page/widgets/listiconsbackground_item_widget.dart';
import 'controller/payments_controller.dart';
import 'models/list_item_model.dart';
import 'models/listgroupfortythree_item_model.dart';
import 'models/listiconsbackground_item_model.dart';
import 'models/payments_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PaymentsPage extends StatelessWidget {
  PaymentsController controller =
      Get.put(PaymentsController(PaymentsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray100,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: double.maxFinite,
                                child: Container(
                                    width: double.maxFinite,
                                    padding: getPadding(
                                        left: 16, top: 3, right: 16, bottom: 3),
                                    decoration: AppDecoration.fillGray100,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapStackinitials();
                                                  },
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .orange500,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder18),
                                                      child: Container(
                                                          height: getSize(36),
                                                          width: getSize(36),
                                                          decoration: AppDecoration
                                                              .fillOrange500
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .circleBorder18),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                        "lbl_js"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSFProSemibold15)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child: Container(
                                                                        height: getSize(
                                                                            10),
                                                                        width: getSize(
                                                                            10),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.orange500,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(5)),
                                                                            border: Border.all(color: ColorConstant.gray100, width: getHorizontalSize(2)))))
                                                              ]))))),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Text("lbl_payments".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtSFProBold34))
                                        ]))),
                            Padding(
                                padding: getPadding(left: 32, top: 9),
                                child: Text("lbl_templates".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSFProSemibold20)),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin:
                                        getMargin(left: 16, top: 10, right: 16),
                                    padding: getPadding(top: 16, bottom: 16),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 16),
                                              child: Obx(() =>
                                                  ListView.separated(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    16));
                                                      },
                                                      itemCount: controller
                                                          .paymentsModelObj
                                                          .value
                                                          .listiconsbackgroundItemList
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        ListiconsbackgroundItemModel
                                                            model = controller
                                                                .paymentsModelObj
                                                                .value
                                                                .listiconsbackgroundItemList[index];
                                                        return ListiconsbackgroundItemWidget(
                                                            model);
                                                      })))
                                        ]))),
                            Padding(
                                padding: getPadding(left: 32, top: 24),
                                child: Text("lbl_recent".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSFProSemibold20)),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin:
                                        getMargin(left: 16, top: 11, right: 16),
                                    padding: getPadding(top: 16, bottom: 16),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 16),
                                              child: Obx(() =>
                                                  ListView.separated(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    7));
                                                      },
                                                      itemCount: controller
                                                          .paymentsModelObj
                                                          .value
                                                          .listgroupfortythreeItemList
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        ListgroupfortythreeItemModel
                                                            model = controller
                                                                .paymentsModelObj
                                                                .value
                                                                .listgroupfortythreeItemList[index];
                                                        return ListgroupfortythreeItemWidget(
                                                            model);
                                                      }))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 16, top: 16),
                                              child: Obx(() =>
                                                  ListView.separated(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    16));
                                                      },
                                                      itemCount: controller
                                                          .paymentsModelObj
                                                          .value
                                                          .listItemList
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        ListItemModel model =
                                                            controller
                                                                .paymentsModelObj
                                                                .value
                                                                .listItemList[index];
                                                        return ListItemWidget(
                                                            model);
                                                      })))
                                        ])))
                          ])
                    ]))));
  }

  onTapStackinitials() {
    Get.toNamed(AppRoutes.settingsScreen);
  }
}
