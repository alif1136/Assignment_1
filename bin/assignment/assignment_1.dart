// Interface Role
abstract class Role {
  void displayRole();
}

// Base class Person implementing Role
class Person implements Role {
  String name;
  int age;
  String address;
  Role? role;

  Person(this.name, this.age, this.address);

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    print("Role: Unknown");
  }
}

// Student class extending Person and implementing Role behavior
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

// Teacher class extending Person and implementing Role behavior
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
    // Create a student
    Student student = Student(
      "John Doe",
      20,
      "123 Main St",
      "S001",
      "A",
      [90, 85, 82],
    );

    // Create a teacher
    Teacher teacher = Teacher(
      "Mrs. Smith",
      35,
      "456 Oak St",
      "T001",
      ["Math", "English", "Bangla"],
    );

    // Display information
    student.displayStudentInfo();
    teacher.displayTeacherInfo();
  }
}

// Entry point
void main() {
  StudentManagementSystem.main();
}


