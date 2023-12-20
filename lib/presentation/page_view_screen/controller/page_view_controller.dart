import 'package:samuel_s_application3/core/app_export.dart';
import 'package:samuel_s_application3/presentation/page_view_screen/models/page_view_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PageViewScreen.
///
/// This class manages the state of the PageViewScreen, including the
/// current pageViewModelObj
class PageViewController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<PageViewModel> pageViewModelObj = PageViewModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
