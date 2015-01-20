public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String fool = new String();
  for(int i = 0; i < word.length(); i++)
    {
      if(Character.isLetter(word.charAt(i)) == true)
      {
        fool = fool + word.charAt(i);
      }
    }
  fool = fool.toLowerCase();
  for(int i = 0; i < (fool.length()/2); i++)
  {
    if(fool.charAt(i) != fool.charAt(fool.length() - (i +1)))
    {
      return false;
    }
  }
  return true;
}