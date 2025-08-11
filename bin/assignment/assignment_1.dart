
abstract class Role {
  void displayRole();
}
class Person implements Role {
  String name;
  int age;
  String address;
  Role? roleRef;
  Person(this.name, this.age, this.address);
  String get getName => name;
  int get getAge => age;
  String get getAddress => address;
  @override
  void displayRole() {
    print("Role: Unknown");
  }
}
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
    double total = 0;
    for (double score in courseScores) {
      total += score;
    }
    return total / courseScores.length;
  }
  void displayStudentInfo() {
    print("Student Information:\n");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${calculateAverageScore().toStringAsFixed(1)}");
  }
}
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
    print("Teacher Information:\n");
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
class StudentManagementSystem {
  static void main() {
    Student student = Student(
      "John Doe",
      20,
      "123 Main St",
      "S123",
      "A",
      [90, 85, 82],
    );
    Teacher teacher = Teacher(
      "Mrs. Smith",
      35,
      "456 Oak St",
      "T456",
      ["Math", "English", "Bangla"],
    );
    student.displayStudentInfo();
    teacher.displayTeacherInfo();
  }
}
void main() {
  StudentManagementSystem.main();
}
