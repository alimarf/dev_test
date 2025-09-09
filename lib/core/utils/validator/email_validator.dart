

import 'package:dev_test_app/core/utils/extension/string_extension.dart';

import 'base_validator.dart';

class EmailValidator extends TextFieldValidator {
  EmailValidator({required String errorText}) : super(errorText);

  @override
  bool isValid(String? value) => value?.isEmailValid() ?? false;
}
