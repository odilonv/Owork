String capitalize(String s) {
  if (s.isEmpty) {
    return s;
  }
  return s.replaceRange(0, 1, s[0].toUpperCase());
}
