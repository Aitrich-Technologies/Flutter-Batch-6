void main()
{
    var num = "Madam";
    var orgnum = num;
    var reversed = 0;
    var reminder;

    while(num>0)
    {
        reminder = num % 10;
        reversed = reversed * 10 + reminder;
        num = num~/10;
    }
    if(orgnum == reversed)
    {
        print("It is a palindrome number");
    }
    else
    {
        print("It is not a palindrome number");
    }
}