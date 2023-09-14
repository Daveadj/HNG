import 'package:cv_details/cv_model.dart';
import 'package:cv_details/home.dart';
import 'package:cv_details/method.dart';
import 'package:flutter/material.dart';

class EditCvScreen extends StatefulWidget {
  final CvModel cvDetails;

  const EditCvScreen({
    super.key,
    required this.cvDetails,
  });

  @override
  State<EditCvScreen> createState() => _EditCvScreenState();
}

class _EditCvScreenState extends State<EditCvScreen> {
  late TextEditingController nameController;
  late TextEditingController jobTitleController;
  late TextEditingController slackUsernameController;
  late TextEditingController emailController;
  late TextEditingController githubController;
  late TextEditingController bioController;
  late TextEditingController skillController;
  late TextEditingController yearGraduatedController;
  late TextEditingController schoolNameController;
  late TextEditingController courseOfStudyController;
  late TextEditingController experienceStartYearController;
  late TextEditingController experienceEndYearController;
  late TextEditingController companyNameController;
  late TextEditingController jobDescriptionController;

  @override
  void initState() {
    super.initState();
    // Initialize the controllers with the current values
    nameController = TextEditingController(text: widget.cvDetails.name);

    slackUsernameController =
        TextEditingController(text: widget.cvDetails.slackUsername);
    emailController = TextEditingController(text: widget.cvDetails.email);
    githubController =
        TextEditingController(text: widget.cvDetails.githubHandle);
    bioController = TextEditingController(text: widget.cvDetails.bio);
    skillController =
        TextEditingController(text: widget.cvDetails.skills!.join(','));
    yearGraduatedController =
        TextEditingController(text: widget.cvDetails.yearGraduated);
    schoolNameController =
        TextEditingController(text: widget.cvDetails.schoolName);
    courseOfStudyController =
        TextEditingController(text: widget.cvDetails.courseOfStudy);

    experienceStartYearController =
        TextEditingController(text: widget.cvDetails.experienceStartYear);
    experienceEndYearController =
        TextEditingController(text: widget.cvDetails.experienceEndYear);
    companyNameController =
        TextEditingController(text: widget.cvDetails.companyName);
    jobDescriptionController =
        TextEditingController(text: widget.cvDetails.jobDescription);
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is removed from the tree
    nameController.dispose();
    slackUsernameController.dispose();
    emailController.dispose();
    githubController.dispose();
    bioController.dispose();
    skillController.dispose();
    yearGraduatedController.dispose();
    schoolNameController.dispose();
    courseOfStudyController.dispose();
    experienceStartYearController.dispose();
    experienceEndYearController.dispose();
    companyNameController.dispose();
    jobDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 98, 187, 101)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                fixedSize: MaterialStateProperty.all<Size>(
                  const Size(130, 50),
                ),
              ),
              onPressed: () {
                final newSkills = skillController.text.split(',');
                widget.cvDetails.skills = newSkills;
                CvModel updateCv = CvModel(
                    name: nameController.text,
                    slackUsername: slackUsernameController.text,
                    email: emailController.text,
                    githubHandle: githubController.text,
                    bio: bioController.text,
                    skills: newSkills,
                    yearGraduated: yearGraduatedController.text,
                    schoolName: schoolNameController.text,
                    courseOfStudy: courseOfStudyController.text,
                    experienceStartYear: experienceStartYearController.text,
                    experienceEndYear: experienceEndYearController.text,
                    companyName: companyNameController.text,
                    jobDescription: jobDescriptionController.text);

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => Home(cvDetails: updateCv)));
              },
              icon: const Icon(Icons.done),
              label: const Text('Save'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ExpandPanel(title: 'Profile', children: [
                formField('Name', nameController),
              ]),
              const SizedBox(
                height: 20,
              ),
              ExpandPanel(title: 'Bio', children: [
                multiLineFormField('Bio', bioController),
              ]),
              const SizedBox(
                height: 20,
              ),
              ExpandPanel(title: 'Contact', children: [
                formField('slack', slackUsernameController),
                formField('Email', emailController),
                formField('GitHub', githubController),
              ]),
              const SizedBox(
                height: 20,
              ),
              ExpandPanel(title: 'Skills', children: [
                formField('Skills: (comma separated)', skillController)
              ]),
              const SizedBox(
                height: 20,
              ),
              ExpandPanel(
                title: 'Education',
                children: [
                  formField('Year Graduated', yearGraduatedController),
                  formField('School', schoolNameController),
                  formField('Course of Study', courseOfStudyController),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ExpandPanel(title: 'Experience', children: [
                formField('Start', experienceStartYearController),
                formField('End', experienceEndYearController),
                formField('Company Name', companyNameController),
                formField('Job Description', jobDescriptionController)
              ])
            ],
          ),
        ),
      ),
    );
  }
}
