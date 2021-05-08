class NumberFormatter {
  static String formatter(String cases) {
    try {
      // suffix = {' ', 'k', 'M', 'B', 'T', 'P', 'E'};
      final double value = double.parse(cases);

      if (value < 1000000) {
        // less than a million
        return value.toStringAsFixed(2);
      } else if (value >= 1000000 && value < (1000000 * 10 * 100)) {
        // less than 100 million
        final double result = value / 1000000;
        return "${result.toStringAsFixed(2)}M";
      } else if (value >= (1000000 * 10 * 100) &&
          value < (1000000 * 10 * 100 * 100)) {
        // less than 100 billion
        final double result = value / (1000000 * 10 * 100);
        return "${result.toStringAsFixed(2)}B";
      } else if (value >= (1000000 * 10 * 100 * 100) &&
          value < (1000000 * 10 * 100 * 100 * 100)) {
        // less than 100 trillion
        final double result = value / (1000000 * 10 * 100 * 100);
        return "${result.toStringAsFixed(2)}T";
      } else {
        return cases;
      }
    } catch (e) {
      return 'null';
    }
  }
}
