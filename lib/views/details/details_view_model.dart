import 'package:mvvm_flutter/core/base/base_view_model.dart';
import 'package:mvvm_flutter/core/services/navigator_service.dart';

class DetailsViewModel extends BaseViewModel {
  DetailsViewModel();

  void navigateBack() {
    NavigatorService().goBack();
  }
}
