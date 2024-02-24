import 'package:couriersystems/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';

void main() =>  runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _InputBoxExampleState extends State<NinjaCard> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          onChanged: (value) {
            setState(() {
              _inputText = value;
            });
          },
          decoration: InputDecoration(
            labelText: 'Enter Text',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 100.0),
        Text(
          'Input Text: $_inputText',
          style: TextStyle(fontSize: 18.0),
        ),
        
      ],
      
    );
  }
}

class _NinjaCardState extends State<NinjaCard> {
  String _selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    String _inputText='';
    return Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar(

      title:  Text(
        'Express Courier Systems',
        style: TextStyle(
          backgroundColor: Colors.blue,
          color: Colors.black,
          letterSpacing: 2,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
      elevation: 0,
    ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            SizedBox(height: 10,),
            Text(
              'Rate your overall experience:',
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            RadioListTile(
            title: Text('1'),
            value: 'Option 1',
            groupValue: _selectedOption,
            onChanged: (value) {
            setState(() {
            _selectedOption = value!;
            });
           },
        ),
        RadioListTile(
          title: Text('2'),
          value: 'Option 2',
          groupValue: _selectedOption,
          onChanged: (value) {
          setState(() {
            _selectedOption = value!;
          });
        },
      ),
      RadioListTile(
        title: Text('3'),
        value: 'Option 3',
        groupValue: _selectedOption,
        onChanged: (value) {
          setState(() {
            _selectedOption = value!;
          });
        },
      ),
            RadioListTile(
              title: Text('4'),
              value: 'Option 4',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('5'),
              value: 'Option 5',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
            SizedBox(height: 30,),
            SizedBox(height: 10,),
            Text(
              'Any Queries:',
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                   _inputText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Your Queries',
                border: OutlineInputBorder(),
              ),
            ),Padding(
              padding: const EdgeInsets.all(50),
              child: AppButtonWidget(
                onPressed: () {
                  Navigator.pushNamed(context, "/homescreen");
                },
                title: "Submit",
                titleColor: Colors.white,
                buttonBackgroundColor: Color.fromARGB(90, 90, 90, 90),
                buttonBorderColor: Colors.black,
              ),
            ),
          ],
          
        ),
     ),
);
}
}