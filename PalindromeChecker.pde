public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String j=noSpaces(word);
  String h=onlyLetters(j);
  String t=noCapitals(h);
  String s= reverse(t);
  if(t.equals(s))
  return true;
  else
return false;
}

public String reverse(String str)
{
    String x="";
int e=str.length()-1;
for(int i=e;i>=0;i--)
  x=x+str.substring(i,i+1);
  return x;
}
public String noSpaces(String sWord){
  String s="";
  for(int i=0;i<sWord.length();i++){
    if(!sWord.substring(i,i+1).equals(" "))
    s=s+sWord.substring(i,i+1);
  }
  return s;
}
public String onlyLetters(String sString){
String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.substring(i,i+1);
  return result;
  
  
 
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
