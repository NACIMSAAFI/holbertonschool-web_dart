bool isPalindrome(String s) {
  int i = 0;
  int j = s.length - 1;
  if (s.length < 3) return false;

  while (i < j) {
    if (s[i] != s[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}

String longestPalindrome(String s) {
  if (s.length < 3){
	return 'none';
  }
  String longest = '';
  String current = '';
  for (int i = 0; i < s.length; i++) {
    for (int j = i; j < s.length; j++) {
      current = s.substring(i, j + 1);
      if (isPalindrome(current) && current.length > longest.length) {
        longest = current;
      }
    }
  }
  if(longest !=''){
	return longest;
  }
  else{
	return 'none';
  }
}
