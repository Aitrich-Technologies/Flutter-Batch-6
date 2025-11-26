import 'dart:io';
class Student{
  String? id;
  String? name;
  String? address;
  String? phno;
  String? fname;
  String? mname;
  Student(this.id,this.name,this.address,this.phno,this.fname,this.mname);
  void stdlist(){
    print('');
    print('ID : $id');
    print('NAME : $name');
    print('ADDRESS : $address');
    print('MOBILE NO : $phno');
    print('FATHER NAME: $fname');
    print('MOTHER NAME :$mname');
    print('------------------------------------------');
  } 
}
void main(){
  List<Student> student=[];
  print('');
  stdout.write("Enter the Number of Students register:");
  print('');
  String? nn=stdin.readLineSync();
  int n = int.parse(nn!);

  for (int i = 0; i < n; i++){

    print('Enter Student ${i+1} details:');
    print('');
    stdout.write("Enter the ID:");
    String? id =stdin.readLineSync();
    stdout.write("Enter the Name:");
    String? name =stdin.readLineSync();
    stdout.write("Enter the Address:");
    String? address =stdin.readLineSync();
    stdout.write("Enter the Phone Number:");
    String? phno =stdin.readLineSync();
    stdout.write("Enter the Father name:");
    String? fname =stdin.readLineSync();
    stdout.write("Enter the Mother name:");
    String? mname =stdin.readLineSync();
    print('');
    
    student.add(Student(id, name, address, phno, fname, mname));
    
  }
  
  print('-----------REGISTERED STUDENTS------------');
  for (var s in student){
            s.stdlist();
          }
  print('------------------------------------------');
  

  while (true){
    print('OPTIONS');
    print('1. VIEW ALL STUDENTS');
    print('2. VIEW STUDENT BY ID');
    print('3. DELETE STUDENT BY ID');
    print('4. EXIT');
    stdout.write('Choose an Option : ');
    String? op = stdin.readLineSync();
    int option = int.parse(op!);
    switch(option){

      case 1:
        print('----------ALL STUDENTS DETAILS------------');
          if(student.isEmpty){
            print("no students found");
          }
          else{
              for (var s in student){
            s.stdlist();
          }
          }
        print('------------------------------------------');
      break;
      
      case 2:
        stdout.write('Enter student Id : ');
        String? stidview = stdin.readLineSync();
        
        if(student.isEmpty){
          print('No students available!');
        }
        else{
          try{
          Student vstd = student.firstWhere(
            (s) => s.id == stidview,
           );
        print('------------STUDENT DETAILS---------------');
          vstd.stdlist();
        print('------------------------------------------');
        }catch(e){
          print('Incorrect ID');
        }
        }
        
      break;

      case 3:
        stdout.write('Enter student Id : ');  
        print('');
        String? stidremove = stdin.readLineSync();
        int before =student.length;
        int rid = int.parse(stidremove!);
        student.removeWhere(
          (sa) => sa.id == rid.toString()
        );
        if (student.length<before)
        {
          print('Student deleted Sucessfuly');
        }
        else{
          print('Incorrect ID');
        }
        
      break;

      case 4:

        print('Exiting');
        return;
      default:
        print('');
        print('Invalid choice - Enter (1-4).');
    } 
  }
}

//int vid = int.parse(stidview!);
//student.add({'id':?id,'name':?name,'address':?address,'phno':?phno,'Father name':?fname,'Mother name': ?mname});
//student.add(id as Student);
    //student.add(Student(id!, name!, address!, phno!, fname!, mname!));
//print('\nAll users:');
  //print(student);
  