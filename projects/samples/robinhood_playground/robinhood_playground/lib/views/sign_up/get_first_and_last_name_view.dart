import 'package:flutter/material.dart';
import 'package:robinhood_playground/core/constant/padding.dart';
import 'package:robinhood_playground/core/widget/button/general_button.dart';
import 'package:robinhood_playground/user_cache/shared_keys.dart';
import 'package:robinhood_playground/user_cache/shared_manager.dart';
import 'package:robinhood_playground/widget/signup/first_name_text_field.dart';
import 'package:robinhood_playground/widget/signup/last_name_text_field.dart';
import 'package:robinhood_playground/widget/signup/sign_up_description.dart';
import 'package:robinhood_playground/widget/signup/sign_up_title.dart';

class FirsAndLastNameView extends StatefulWidget {
  const FirsAndLastNameView({super.key});

  @override
  State<FirsAndLastNameView> createState() => _FirsAndLastNameViewState();
}

class _FirsAndLastNameViewState extends State<FirsAndLastNameView> {
  final TextEditingController _firsNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final FocusNode _firstNameFocusNode = FocusNode();
  final FocusNode _lastNameFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _firsNameController.dispose();
    _lastNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          elevation: 0,
        ),
        body: Padding(
          padding: GeneralPadding().generalHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: _FirstNameAndLastNamePadding.titleTop,
                child: SignUpTitle(title: _FirstNameAndLastNameText.title),
              ),
              const Padding(
                padding: _FirstNameAndLastNamePadding.descriptionTop,
                child: SignUpDescription(
                    description: _FirstNameAndLastNameText.description),
              ),
              Padding(
                padding: _FirstNameAndLastNamePadding.firstNameTextFieldTop,
                child: FirsNameTextField(
                    firsNameController: _firsNameController,
                    firstNameFocusNode: _firstNameFocusNode),
              ),
              Padding(
                padding: _FirstNameAndLastNamePadding.lastNameTextFieldTop,
                child: LastNameTextField(
                    lastNameController: _lastNameController,
                    lastNameFocusNode: _lastNameFocusNode),
              ),
              Padding(
                padding: _FirstNameAndLastNamePadding.continueButtonTop,
                child: GenerealButton(
                  text: _FirstNameAndLastNameText.continueButton,
                  backgroundColor: GeneralButtonColor.black.getColor(),
                  onPressed: _saveAndNavigate,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _saveAndNavigate() async {
    if (_firsNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty) {
      _saveName();
    }
  }

  void _saveName() {
    SharedManager.instance
        .setStringValue(SharedKeys.firstName, _firsNameController.text);
    SharedManager.instance
        .setStringValue(SharedKeys.lastName, _lastNameController.text);
  }
}

class _FirstNameAndLastNameText {
  static const String title = 'What\'s your legal name?';
  static const String description =
      'Enter your name as it appears on your\ngovernment ID so we can confirm your identity';
  static const continueButton = 'Continue';
}

class _FirstNameAndLastNamePadding {
  static const EdgeInsets titleTop = EdgeInsets.only(top: 10);
  static const EdgeInsets descriptionTop = EdgeInsets.only(top: 10);
  static const EdgeInsets firstNameTextFieldTop = EdgeInsets.only(top: 20);
  static const EdgeInsets lastNameTextFieldTop = EdgeInsets.only(top: 15);
  static const EdgeInsets continueButtonTop = EdgeInsets.only(top: 30);
}
