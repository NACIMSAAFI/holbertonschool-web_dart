bool isPalindrome(String s){
    int i = 0;
    int j = s.length - 1;
    if( s.length < 3){
        return false;
    }
     while(i < j){
            if( s[i] != s[j]){
                return false;
            }
            i++;
            j--;
        }
        return true;

}
