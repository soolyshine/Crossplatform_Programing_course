import 'package:lab4/models/resume.dart';

class ResumeRepository {
  final List<Resume> _resumes = [
    Resume(
      id: 1,
      fullName: "Anna Krasnobaieva",
      age: 19,
      hobbies: "Gaming",
      currentSituation: "Student at university",
      aboutMe: "Hello! My name is Anna. I'm from Kharkiv.",
    ),
    Resume(
      id: 2,
      fullName: "Test1",
      age: 12,
      hobbies: "Games",
      currentSituation: "University student",
      aboutMe: "Just testing profile",
    ),
  ];

  List<Resume> getAll() {
    return _resumes;
  }

  Resume? getById(int id) {
    try {
      return _resumes.firstWhere((resume) => resume.id == id);
    } catch (e) {
      return null;
    }
  }
}
