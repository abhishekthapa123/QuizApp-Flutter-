import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapp/views/quiz_screen.dart';

class SubjectListScreen extends StatelessWidget {
  const SubjectListScreen({Key? key}) : super(key: key);
final List subjectListData = const
[
{"subject_name":"Computer","id":"1001"},
{"subject_name":"English","id":"1002"}
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      title: const Center(child:Text("Subject List")),
      automaticallyImplyLeading: false,
    
    ),
    body:  Column(
        
        children: [
          ...subjectListData.map((e) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: (){
                print(e['id']);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const QuizScreen() ));
              },
                tileColor: Colors.grey,
                textColor: Colors.black,
                title: Text(e['subject_name']),
                iconColor: Colors.white,
                trailing:Icon(Icons.arrow_forward_sharp)

              ),
          ))
            
        ]
      ),
    );
    
  }
}