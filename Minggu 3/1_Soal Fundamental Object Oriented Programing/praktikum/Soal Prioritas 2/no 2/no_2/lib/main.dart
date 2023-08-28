void main() {
  Course course = Course();
  Student student = Student();

  print('Courses : ');
  print(course.judul1);
  print(course.desc_judul1);
  print('');
  print(course.judul2);
  print(course.desc_judul2);

  student.nama = 'Senli Abel';
  student.kelas = '4IA04';

  print('');
  print('Students : ');
  print('nama = ${student.nama}');
  print('kelas = ${student.kelas}');

  student.courseTaken;

  print('Courses Taken :');
  student.add_literatuBahasaInggris();
  student.add_Interpreter();
  for (var index in student.courseTaken) {
    print(index);
  }

  print('');
  print('menghapus kursus Interpreter');
  student.delete_Interpreter();

  print('');
  for (var index in student.courseTaken) {
    print('course left\n$index');
  }
}

class Course {
  String judul1 = '1. Literatur Bahasa Inggris';
  String desc_judul1 =
      'Sastra Inggris merupakan disiplin ilmu yang mempelajari Bahasa Inggris dari sisi linguistik dan sastra secara mendalam';
  String judul2 = '2. Interpreter';
  String desc_judul2 =
      'Interpreter adalah orang yang memiliki rugas untuk menerjemahkan bahasa dari satu bahasa ke bahasa yang lain secara lisan';
}

class Student {
  Course course = Course();

  String? nama;
  String? kelas;
  List<String> courseTaken = [];

  void add_literatuBahasaInggris() {
    courseTaken.add(course.judul1);
  }

  void add_Interpreter() {
    courseTaken.add(course.judul2);
  }

  void delete_literaturBahasaInggris() {
    courseTaken.removeWhere((element) => element == '${course.judul1}');
  }

  void delete_Interpreter() {
    courseTaken.removeWhere((element) => element == '${course.judul2}');
  }
}
