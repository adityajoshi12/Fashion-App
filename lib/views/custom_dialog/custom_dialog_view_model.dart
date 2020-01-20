import 'package:mvvm_flutter/core/base/base_view_model.dart';
import 'package:mvvm_flutter/core/locator.dart';
import 'package:mvvm_flutter/core/services/navigator_service.dart';

class CustomDialogViewModel extends BaseViewModel {
  CustomDialogViewModel();

  // Add ViewModel specific code here
  final NavigatorService _navigationService = locator<NavigatorService>();
  void secondaryButtonClicked() {
    _navigationService.goBack();
  }

  void primaryButtonClicked(String primaryButtonRoute) {
    _navigationService.navigateTo(primaryButtonRoute);
  }
}
