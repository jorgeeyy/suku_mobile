class Teacher {
  final String name;
  final String subject;
  final String imagePath; // Or imageUrl if coming from API

  Teacher({
    required this.name,
    required this.subject,
    required this.imagePath,
  });

  // Factory constructor to easily create a Teacher from JSON later
  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      name: json['name'],
      subject: json['subject'],
      imagePath: json['imagePath'],
    );
  }
}