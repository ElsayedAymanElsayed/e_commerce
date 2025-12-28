class ValidatorsLoginApp {
  ValidatorsLoginApp._();

  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    if (value.contains(' ')) {
      return 'Email must not contain spaces';
    }
    if (!value.endsWith('@gmail.com')) {
      return 'Email must be a Gmail address (@gmail.com)';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.contains(' ')) {
      return 'Password must not contain spaces';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    return null;
  }
}
