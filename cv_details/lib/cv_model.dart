class CvModel {
  final String name;

  String? slackUsername;
  String? email;
  String? githubHandle;
  String? bio;
  List<String>? skills;
  String? yearGraduated;
  String? schoolName;
  String? courseOfStudy;
  String? experienceStartYear;
  String? experienceEndYear;
  String? jobDescription;
  String? companyName;

  CvModel(
      {required this.name,
      this.slackUsername,
      this.email,
      this.githubHandle,
      this.bio,
      this.skills,
      this.yearGraduated,
      this.schoolName,
      this.courseOfStudy,
      this.experienceStartYear,
      this.experienceEndYear,
      this.jobDescription,
      this.companyName});
}

CvModel cvinfo = CvModel(
    name: 'ADJERESE OGHENEOVO DAVID',
    slackUsername: 'DAVID ADJERESE',
    email: 'ovoadjerese@gmail.com',
    githubHandle: 'https://github.com/Daveadj',
    bio:
        'As a dedicated individual with a strong aptitude for analytical thinking and an unwavering passion for continuous learning, I am enthusiastic about embarking on a journey to acquire hands-on experience and put my skills into action. I am committed to personal and professional growth, and I welcome opportunities to contribute positively to the challenges that lie ahead.',
    skills: ['flutter', 'dart'],
    yearGraduated: '2020',
    schoolName: 'University of Benin',
    courseOfStudy: 'Mathematics and Economics',
    experienceStartYear: '2023',
    experienceEndYear: 'till-date',
    jobDescription:
        'Design and develop mobile applications for Android platforms using industry-standard technologies and tools.',
    companyName: 'HNGx');
