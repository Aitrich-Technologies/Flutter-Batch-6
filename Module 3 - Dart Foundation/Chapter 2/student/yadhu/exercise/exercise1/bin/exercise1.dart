void main()
{
    int num = 500;
    int orgnum = num;
    int reversed = 0;
    int reminder;

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