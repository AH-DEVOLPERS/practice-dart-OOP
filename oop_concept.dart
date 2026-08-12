// ABSTRACT CLASS
abstract class Person {
  String _name;
  int _age;

  // STATIC VARIABLE
  static int totalPersons = 0;

  // CONSTRUCTOR
  Person(this._name, this._age) {
    totalPersons++;
  }

  // GETTER
  String get name {
    return _name;
  }

  // GETTER
  int get age {
    return _age;
  }

  // SETTER
  set age(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    } else {
      print('Invalid age');
    }
  }

  // ABSTRACT METHOD
  void display();

  // NORMAL METHOD
  void introduce() {
    print('My name is $_name and I am $_age years old.');
  }
}

// INHERITANCE
class Student extends Person {
  String _rollNumber;
  double _cgpa;

  // CONSTRUCTOR
  Student(String name, int age, this._rollNumber, this._cgpa)
    : super(name, age);

  // GETTER
  String get rollNumber {
    return _rollNumber;
  }

  // GETTER
  double get cgpa {
    return _cgpa;
  }

  // SETTER
  set cgpa(double newCgpa) {
    if (newCgpa >= 0 && newCgpa <= 4.0) {
      _cgpa = newCgpa;
    } else {
      print('Invalid CGPA');
    }
  }

  // METHOD OVERRIDING
  @override
  void display() {
    print(
      'Student: $name | '
      'Age: $age | '
      'Roll No: $_rollNumber | '
      'CGPA: $_cgpa',
    );
  }
}

// ANOTHER CHILD CLASS
class Teacher extends Person {
  String _subject;
  double _salary;

  // CONSTRUCTOR
  Teacher(String name, int age, this._subject, this._salary) : super(name, age);

  // GETTER
  String get subject {
    return _subject;
  }

  // GETTER
  double get salary {
    return _salary;
  }

  // SETTER
  set salary(double newSalary) {
    if (newSalary > 0) {
      _salary = newSalary;
    } else {
      print('Invalid salary');
    }
  }

  // METHOD OVERRIDING
  @override
  void display() {
    print(
      'Teacher: $name | '
      'Age: $age | '
      'Subject: $_subject | '
      'Salary: Rs. $_salary',
    );
  }
}

void main() {
  // CREATING OBJECTS
  Student student1 = Student('Hanan', 21, 'SE-101', 3.85);

  Student student2 = Student('Sara', 20, 'SE-102', 3.70);

  Teacher teacher1 = Teacher('Ahmed', 45, 'Dart Programming', 120000);

  // CALLING METHODS
  student1.introduce();
  teacher1.introduce();

  // DISPLAY STUDENT INFORMATION
  student1.display();
  student2.display();

  // DISPLAY TEACHER INFORMATION
  teacher1.display();

  // USING SETTER
  student1.age = 22;
  student1.cgpa = 3.90;

  // USING GETTER
  print('Updated Age: ${student1.age}');
  print('Updated CGPA: ${student1.cgpa}');

  // POLYMORPHISM
  List<Person> people = [student1, student2, teacher1];

  print('\n--- Polymorphism ---');

  for (Person person in people) {
    person.display();
  }

  // STATIC VARIABLE
  print('\nTotal Persons: ${Person.totalPersons}');
}
