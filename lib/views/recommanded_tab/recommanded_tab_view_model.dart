import 'package:mvvm_flutter/core/base/base_view_model.dart';
import 'package:mvvm_flutter/core/locator.dart';
import 'package:mvvm_flutter/core/models/product.model.dart';
import 'package:mvvm_flutter/core/services/navigator_service.dart';

class RecommandedTabViewModel extends BaseViewModel {
  RecommandedTabViewModel();

  final NavigatorService _navigationService = locator<NavigatorService>();

  void nav(Product product) {
    _navigationService.navigateTo("details", arguments: product);
  }
}
