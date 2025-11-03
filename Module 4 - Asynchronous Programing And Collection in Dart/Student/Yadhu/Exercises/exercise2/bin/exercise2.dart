void main()
{
    List<int>Numbers = [1,2,3,4,3,2,5,6,7,8,7,9,10];
    print('Original List: $Numbers');
    
    // ignore: non_constant_identifier_names
    Set<int> Unique = Numbers.toSet();
    //Set.from(Unique);
    print('Unique Element: $Unique');
}