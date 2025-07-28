// // Interface Role
// abstract class Role {
//   void displayRole();
// }
//
// // Base class Person implementing Role
// class Person implements Role {
//   String name;
//   int age;
//   String address;
//   Role? role;
//
//   Person(this.name, this.age, this.address);
//
//   String get getName => name;
//   int get getAge => age;
//   String get getAddress => address;
//
//   @override
//   void displayRole() {
//     print("Role: Unknown");
//   }
// }
//
// // Student class extending Person and implementing Role behavior
// class Student extends Person {
//   String studentID;
//   String grade;
//   List<double> courseScores;
//
//   Student(
//       String name,
//       int age,
//       String address,
//       this.studentID,
//       this.grade,
//       this.courseScores,
//       ) : super(name, age, address);
//
//   @override
//   void displayRole() {
//     print("Role: Student");
//   }
//
//   double calculateAverageScore() {
//     if (courseScores.isEmpty) return 0.0;
//     double total = courseScores.reduce((a, b) => a + b);
//     return total / courseScores.length;
//   }
//
//   void displayStudentInfo() {
//     print("\nStudent Information:\n");
//     displayRole();
//     print("Name: $name");
//     print("Age: $age");
//     print("Address: $address");
//     print("Average Score: ${calculateAverageScore().toStringAsFixed(1)}");
//   }
// }
//
// // Teacher class extending Person and implementing Role behavior
// class Teacher extends Person {
//   String teacherID;
//   List<String> coursesTaught;
//
//   Teacher(
//       String name,
//       int age,
//       String address,
//       this.teacherID,
//       this.coursesTaught,
//       ) : super(name, age, address);
//
//   @override
//   void displayRole() {
//     print("Role: Teacher");
//   }
//
//   void displayTeacherInfo() {
//     print("\nTeacher Information:\n");
//     displayRole();
//     print("Name: $name");
//     print("Age: $age");
//     print("Address: $address");
//     print("Courses Taught:");
//     for (String course in coursesTaught) {
//       print("- $course");
//     }
//   }
// }
//
// // Management System
// class StudentManagementSystem {
//   static void main() {
//     // Create a student
//     Student student = Student(
//       "John Doe",
//       20,
//       "123 Main St",
//       "S001",
//       "A",
//       [90, 85, 82],
//     );
//
//     // Create a teacher
//     Teacher teacher = Teacher(
//       "Mrs. Smith",
//       35,
//       "456 Oak St",
//       "T001",
//       ["Math", "English", "Bangla"],
//     );
//
//     // Display information
//     student.displayStudentInfo();
//     teacher.displayTeacherInfo();
//   }
// }
//
// // Entry point
// void main() {
//   StudentManagementSystem.main();
// }
import 'dart:io';

// Interface Role
abstract class Role {
  void displayRole();
}

// Base class Person implementing Role
class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print("Role: Unknown");
  }
}

// Student class
class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(
      String name,
      int age,
      String address,
      this.studentID,
      this.grade,
      this.courseScores,
      ) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    double total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }

  void displayStudentInfo() {
    print("\nStudent Information:\n");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${calculateAverageScore().toStringAsFixed(1)}");
  }
}

// Teacher class
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(
      String name,
      int age,
      String address,
      this.teacherID,
      this.coursesTaught,
      ) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayTeacherInfo() {
    print("\nTeacher Information:\n");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught:");
    for (String course in coursesTaught) {
      print("- $course");
    }
  }
}

// Management System
class StudentManagementSystem {
  static void main() {
    // Student Input
    print("Enter Student Name:");
    String studentName = stdin.readLineSync()!;
    print("Enter Student Age:");
    int studentAge = int.parse(stdin.readLineSync()!);
    print("Enter Student Address:");
    String studentAddress = stdin.readLineSync()!;
    print("Enter Student ID:");
    String studentID = stdin.readLineSync()!;
    print("Enter Student Grade:");
    String grade = stdin.readLineSync()!;
    print("How many course scores you want to enter?");
    int scoreCount = int.parse(stdin.readLineSync()!);
    List<double> scores = [];
    for (int i = 0; i < scoreCount; i++) {
      print("Enter score ${i + 1}:");
      scores.add(double.parse(stdin.readLineSync()!));
    }

    Student student = Student(
      studentName,
      studentAge,
      studentAddress,
      studentID,
      grade,
      scores,
    );

    // Teacher Input
    print("\nEnter Teacher Name:");
    String teacherName = stdin.readLineSync()!;
    print("Enter Teacher Age:");
    int teacherAge = int.parse(stdin.readLineSync()!);
    print("Enter Teacher Address:");
    String teacherAddress = stdin.readLineSync()!;
    print("Enter Teacher ID:");
    String teacherID = stdin.readLineSync()!;
    print("How many courses does the teacher teach?");
    int courseCount = int.parse(stdin.readLineSync()!);
    List<String> courses = [];
    for (int i = 0; i < courseCount; i++) {
      print("Enter course ${i + 1}:");
      courses.add(stdin.readLineSync()!);
    }

    Teacher teacher = Teacher(
      teacherName,
      teacherAge,
      teacherAddress,
      teacherID,
      courses,
    );

    // Output
    student.displayStudentInfo();
    teacher.displayTeacherInfo();
  }
}

// Main entry point
void main() {
  StudentManagementSystem.main();
}

