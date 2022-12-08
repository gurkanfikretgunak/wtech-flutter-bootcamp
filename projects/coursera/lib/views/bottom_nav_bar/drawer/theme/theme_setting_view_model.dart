import 'package:coursera/core/base/base_view_model.dart';
import 'package:coursera/core/data/enum/shared_prefence_keys.dart';

import '../../../../core/init/cache/shared_manager.dart';

class ThemeSettingViewModel extends IViewModel<ThemeSettingViewModel> {
  bool _darkTheme = StorageUtil.getBool(SharedKeys.themeKey);
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    StorageUtil.setBool(SharedKeys.themeKey, value);
    notifyListeners();
  }

  bool _isRadioSelected = false;
  bool get isRadioSelected => _isRadioSelected;

  set isRadioSelected(bool newValue) {
    _isRadioSelected = newValue;
    notifyListeners();
  }
}
