class StringUtils {
  static bool isValidEmail(String email) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (email.isEmpty || !regex.hasMatch(email) || !email.contains(".")) {
      return false;
    } else {
      return true;
    }
  }

  static bool isValidName(String name) {
    name = clearNameString(name);
    String trimmedName = name.trim();
    if (trimmedName.isNotEmpty && trimmedName.length > 1) {
      return true;
    } else {
      return false;
    }
  }

  static String getFirstName(String fullName) {
    if (fullName.isNotEmpty) {
      fullName = clearNameString(fullName);
      final String firstName = fullName.trim().toLowerCase().split(" ")[0];
      return firstName.replaceFirst(firstName[0], firstName[0].toUpperCase());
    } else {
      return '';
    }
  }

  static String clearNameString(String string) {
    return string
        .trim()
        .replaceAll(RegExp(r'[^\w\s]+'), '')
        .replaceAll(RegExp(r"[0-9]+"), "");
  }

  static String generateId() {
    final now = DateTime.now();
    return now.microsecondsSinceEpoch.toString();
  }
}
