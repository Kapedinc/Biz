import '../cards_page/widgets/listiconsbackground1_item_widget.dart';
import 'controller/cards_controller.dart';
import 'models/cards_model.dart';
import 'models/listiconsbackground1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CardsPage extends StatelessWidget {
  CardsController controller = Get.put(CardsController(CardsModel().obs));

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
                                            MainAxisAlignment.center,
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
                                              padding:
                                                  getPadding(top: 8, bottom: 3),
                                              child: Text("lbl_cards".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtSFProBold34))
                                        ]))),
                            Container(
                                margin: getMargin(left: 23, top: 8, right: 23),
                                padding: getPadding(
                                    left: 11, top: 20, right: 11, bottom: 20),
                                decoration: AppDecoration.outlineYellow9000c
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: getPadding(left: 24),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        margin:
                                                            getMargin(top: 39),
                                                        decoration: AppDecoration
                                                            .fillOrange50
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              14,
                                                                          bottom:
                                                                              13),
                                                                  child: Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        SizedBox(
                                                                            width: getHorizontalSize(
                                                                                16),
                                                                            child: Divider(
                                                                                height: getVerticalSize(2),
                                                                                thickness: getVerticalSize(2),
                                                                                color: ColorConstant.whiteA700)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 12),
                                                                            child: SizedBox(width: getHorizontalSize(16), child: Divider(height: getVerticalSize(2), thickness: getVerticalSize(2), color: ColorConstant.whiteA700)))
                                                                      ])),
                                                              SizedBox(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          2),
                                                                  child: Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              43),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              43),
                                                                      color: ColorConstant
                                                                          .whiteA700)),
                                                              Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          29),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          16),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              19,
                                                                          top:
                                                                              14),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: SizedBox(width: getHorizontalSize(16), child: Divider(height: getVerticalSize(2), thickness: getVerticalSize(2), color: ColorConstant.whiteA700))),
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgMobile,
                                                                            height: getVerticalSize(29),
                                                                            width: getHorizontalSize(16),
                                                                            alignment: Alignment.center)
                                                                      ]))
                                                            ])),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUntitleddesign,
                                                        height:
                                                            getVerticalSize(40),
                                                        width:
                                                            getHorizontalSize(
                                                                134),
                                                        margin: getMargin(
                                                            bottom: 42))
                                                  ]))),
                                      Padding(
                                          padding:
                                              getPadding(left: 24, top: 16),
                                          child: Text("lbl_neeraj_chinwan".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtJetBrainsMonoRomanRegular16)),
                                      Padding(
                                          padding: getPadding(left: 26, top: 2),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant.img,
                                                height: getVerticalSize(11),
                                                width: getHorizontalSize(125),
                                                margin: getMargin(
                                                    top: 5, bottom: 5)),
                                            Padding(
                                                padding: getPadding(left: 12),
                                                child: Text("lbl_9303".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtJetBrainsMonoRomanRegular16))
                                          ])),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgG4158,
                                          height: getVerticalSize(28),
                                          width: getHorizontalSize(84),
                                          alignment: Alignment.centerRight,
                                          margin: getMargin(top: 2, right: 8))
                                    ])),
                            CustomImageView(
                                svgPath: ImageConstant.imgClose,
                                height: getVerticalSize(8),
                                width: getHorizontalSize(26),
                                margin: getMargin(top: 16)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 32, top: 25),
                                    child: Text("lbl_settings".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProSemibold20))),
                            Container(
                                margin: getMargin(left: 16, top: 10, right: 16),
                                padding: getPadding(top: 16, bottom: 16),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 16),
                                          child: Obx(() => ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height:
                                                        getVerticalSize(16));
                                              },
                                              itemCount: controller
                                                  .cardsModelObj
                                                  .value
                                                  .listiconsbackground1ItemList
                                                  .length,
                                              itemBuilder: (context, index) {
                                                Listiconsbackground1ItemModel
                                                    model = controller
                                                            .cardsModelObj
                                                            .value
                                                            .listiconsbackground1ItemList[
                                                        index];
                                                return Listiconsbackground1ItemWidget(
                                                    model);
                                              })))
                                    ]))
                          ])
                    ]))));
  }

  onTapStackinitials() {
    Get.toNamed(AppRoutes.settingsScreen);
  }
}
