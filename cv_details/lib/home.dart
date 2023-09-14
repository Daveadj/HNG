import 'package:cv_details/cv_model.dart';
import 'package:cv_details/edit_cv.dart';
import 'package:cv_details/method.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final CvModel cvDetails;
  const Home({super.key, required this.cvDetails});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mobile cv'),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => EditCvScreen(cvDetails: widget.cvDetails),
                ),
              );
            },
            icon: const Icon(Icons.edit),
            label: const Text(
              'Edit',
              style: customTextStyle,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                thickness: 3.0,
              ),
              Center(
                child: Text(
                  widget.cvDetails.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 25.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 2.0,
              ),
              Text(
                widget.cvDetails.bio!,
                style: customTextStyle,
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Digital Contact',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              const Divider(
                thickness: 2.0,
              ),
              ContactWidget('Slack ID', widget.cvDetails.slackUsername!),
              ContactWidget('Email', widget.cvDetails.email!),
              ContactWidget('GitHub', widget.cvDetails.githubHandle!),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Education',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              const Divider(
                thickness: 2.0,
              ),
              Text(
                widget.cvDetails.yearGraduated!,
                style: customTextStyle,
              ),
              Text(
                widget.cvDetails.schoolName!,
                style: customTextStyle,
              ),
              Text(
                widget.cvDetails.courseOfStudy!,
                style: customTextStyle,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'skills',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              const Divider(
                thickness: 2.0,
              ),
              for (var item in widget.cvDetails.skills!)
                Text(
                  item,
                  style: customTextStyle,
                ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Experience',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              const Divider(
                thickness: 2.0,
              ),
              Text(
                  '${widget.cvDetails.experienceStartYear!} - ${widget.cvDetails.experienceEndYear!}',
                  style: const TextStyle(
                      fontStyle: FontStyle.italic, fontSize: 16, height: 1.3)),
              Text(
                widget.cvDetails.companyName!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, height: 1.3, fontSize: 16),
              ),
              Text(
                widget.cvDetails.jobDescription!,
                style: customTextStyle,
              ),
              const Divider(
                thickness: 3.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
