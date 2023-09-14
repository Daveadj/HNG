import 'package:flutter/material.dart';

Widget formField(String label, TextEditingController controller) {
  return Container(
    margin: const EdgeInsets.only(top: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Container(
          height: 52,
          margin: const EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadiusDirectional.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your $label',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
            autofocus: false,
            controller: controller,
          ),
        )
      ],
    ),
  );
}

Widget multiLineFormField(String label, TextEditingController controller) {
  return Container(
    margin: const EdgeInsets.only(top: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadiusDirectional.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your $label',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
            keyboardType: TextInputType.multiline,
            maxLines: 10,
            autofocus: false,
            controller: controller,
          ),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget SmallformField(String label, TextEditingController controller) {
  return Container(
    margin: const EdgeInsets.only(top: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Container(
          height: 52,
          margin: const EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadiusDirectional.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your $label',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
            autofocus: false,
            controller: controller,
          ),
        )
      ],
    ),
  );
}

class ExpandPanel extends StatefulWidget {
  final String title;
  final List<Widget> children;
  const ExpandPanel({super.key, required this.title, required this.children});

  @override
  State<ExpandPanel> createState() => _ExpandPanelState();
}

class _ExpandPanelState extends State<ExpandPanel> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: isExpanded ? 1 : 0,
      expandedHeaderPadding: const EdgeInsets.all(16.0),
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          this.isExpanded = !this.isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(widget.title),
            );
          },
          body: Column(
            children: widget.children,
          ),
          isExpanded: isExpanded,
        ),
      ],
    );
  }
}

// ignore: non_constant_identifier_names
Widget ContactWidget(String label, String inputfield) {
  return Row(
    children: [
      Text('$label : ', style: const TextStyle(fontSize: 15)),
      const SizedBox(
        width: 15,
      ),
      Text(
        inputfield,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            fontStyle: FontStyle.normal),
      ),
    ],
  );
}

const customTextStyle = TextStyle(
  fontSize: 16.0, // Adjust the font size as needed.
  height: 1.3, // Adjust the line spacing (height) as needed.
);
