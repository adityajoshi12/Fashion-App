import 'package:mvvm_flutter/core/base/base_view_model.dart';
import 'package:mvvm_flutter/core/locator.dart';
import 'package:mvvm_flutter/core/services/navigator_service.dart';

class DetailsViewModel extends BaseViewModel {
  DetailsViewModel();

  final NavigatorService _navigationService = locator<NavigatorService>();

  void navigateBack() {
    busy = true;
    _navigationService.goBack();
    busy = false;
  }
}
