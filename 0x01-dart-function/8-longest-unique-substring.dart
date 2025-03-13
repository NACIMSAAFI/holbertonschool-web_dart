String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return "";
  }

  Set<String> uniqueChars = {};
  int start = 0;
  int maxLength = 0;
  int maxStart = 0;

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    while (uniqueChars.contains(currentChar)) {
      uniqueChars.remove(str[start]);
      start++;
    }


    uniqueChars.add(currentChar);

    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      maxStart = start;
    }
  }

  return str.substring(maxStart, maxStart + maxLength);
}
