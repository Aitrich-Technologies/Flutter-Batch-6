// ignore_for_file: constant_pattern_never_matches_value_type

import 'dart:io';

class Student
{
  int? id;
  String? Name;
  String? Address;
  int? Phone;
  String? Father;
  String? Mother;
  
  //static bool? isEmpty;
  Student({this.id,this.Name,this.Address,this.Phone,this.Father,this.Mother});

  void displayStudents()
  {
    print("");
    print("    Registered Students    ");
    print("----- Student Details -----");
    print("Student_Id : $id");
    print("Student_Name : $Name");
    print("Address : $Address");
    print("Phone_Number : $Phone");
    print("Father_Name : $Father");
    print("Mother_Name : $Mother");
    print("---------------------------");
  }

  
}

void main()
{
  List<Student>students = [];
  stdout.write("Enter The Number Of Students To Register : ");
  int? Num_s_reg = int.tryParse(stdin.readLineSync()?? "");
  for(int i = 0;i<Num_s_reg!;i++)
  {
    stdout.write("Enter The ID : ");
    int? id = int.tryParse(stdin.readLineSync()?? "");

    stdout.write("Enter The Name : ");
    String? Name = stdin.readLineSync();

    stdout.write("Enter The Address : ");
    String? Address = stdin.readLineSync();

    stdout.write("Enter The Phone Number : ");
    int? Phone = int.tryParse(stdin.readLineSync()?? "");

    stdout.write("Enter Father's Name : ");
    String? Father = stdin.readLineSync();
    
    stdout.write("Enter Mother's Name : ");
    String? Mother = stdin.readLineSync(); 

    print("");
    
    Student student1 = Student(
      id:id,
      Name:Name,
      Address:Address,
      Phone:Phone,
      Father:Father,
      Mother:Mother);
    students.add(student1);
  }
  for(var newstd in students)
  {
    newstd.displayStudents();
    print("");
  }

  {
    String choice = "";
    while(choice!= "4")
    {
      print("-----Options-----");
      print("1. View all students");
      print("2. View students by Id");
      print("3. Delete students by Id");
      print("4. Exit");
      stdout.write("Choose an Option : ");
      choice = stdin.readLineSync()?? "";
      switch(choice)
      { 
        case "1":
        if(students.isEmpty)
        {
          print("No Students found"); 
        }
        else
        {
          for(var newstd in students)
          {
            newstd.displayStudents();
            print("");
          }
        }
        break; 

        case "2":
        stdout.write("Enter Student ID to search : ");
        int? searchid = int.tryParse(stdin.readLineSync()?? "");
        var found = students.where((newstd) => newstd.id == searchid);
        if(found.isEmpty)
        {
          print("Student not found");
        }
        else
        {
          found.first.displayStudents();
        }
        break;

        case "3":
        stdout.write("Enter Student ID to delete : ");
        int? delete = int.tryParse(stdin.readLineSync()?? "");
        int before = students.length;
        students.removeWhere((newstd) => newstd.id == delete);
        if(students.length<before)
        {
          print("student deleted successfully");
        }
        else
        {
          print("Student not found");
        }
        break;

        case "4":
        print("Exit.......!!");
        break;

        default :
        print("Invalid option!");
      }
    }
  }
}