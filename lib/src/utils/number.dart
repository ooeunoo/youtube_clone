String formatNumberUnit(int number) {
  if (number < 1000) {
    return number.toString();
  } else if (number < 1000000) {
    double num = number / 1000;
    return "${num.toStringAsFixed(num.truncateToDouble() == num ? 0 : 1)}k";
  } else {
    double num = number / 1000000;
    return "${num.toStringAsFixed(num.truncateToDouble() == num ? 0 : 1)}M";
  }
}
