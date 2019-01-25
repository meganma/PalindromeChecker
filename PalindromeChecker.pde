public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  ArrayList<String> cars = new ArrayList<String>();
  for(int i=0; i < lines.length; i++){
    
    String a=noCapitals(lines[i]);
    String b=onlyLetters(a);
    String c=noSpaces(b);
    cars.add(c);
    
  }
  
  
  for (int i=0; i < cars.size(); i++) 
  {
       
    
    if(palindrome(cars.get(i))==true)
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
  if(reverse(word).equals(word)){
    return true;
  }
  return false;
}
public String reverse(String sWord){
  String s= "";
    for(int i=sWord.length()-1;i>=0;i--){
      s= s+ sWord.charAt(i);
    }
    return s;
}


public String noSpaces(String sWord){
  String s="";
  for(int i=0; i<=sWord.length()-1;i++){
    if(sWord.charAt(i)==' '){
      s=s;
    }else{
      s=s+sWord.charAt(i);
    }
  }
  return s;
}

public String onlyLetters(String sString){
  String hola="";
  for(int i=0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))==true){
      hola=hola+sString.charAt(i);
    }
  }
  return hola;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}



