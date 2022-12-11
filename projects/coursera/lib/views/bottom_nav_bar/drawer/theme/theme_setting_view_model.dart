import 'package:coursera/core/base/base_view_model.dart';
import 'package:hive/hive.dart';

class ThemeSettingViewModel extends IViewModel<ThemeSettingViewModel> {
  bool _darkTheme = Hive.box("themedata").get('darkmode', defaultValue: false);
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;

    Hive.box("themedata").put('darkmode', value);
    notifyListeners();
  }

  bool _isRadioSelected = false;
  bool get isRadioSelected => _isRadioSelected;

  set isRadioSelected(bool newValue) {
    _isRadioSelected = newValue;
    notifyListeners();
  }
}
