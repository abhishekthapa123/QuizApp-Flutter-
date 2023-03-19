import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapp/views/quiz_result.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  List quizListData = [
    {
        "id": 1,
        "answer": "30%",
        "answer_discription": "",
        "is_answered": 0,
        "is_answer_status_right_wrong_omitted": 0,
        "title":
            "A mine or part there of may be treated as naturally wet if the roadway dust sample \r\ncontain_______or more of moisture by weight.",
        "options": [
            {
                "option": "a",
                "value": "10%",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "b",
                "value": "15%",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "c",
                "value": "20%",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "d",
                "value": "30%",
                "color": "0xFFFFFFFF",
            },
        ],
    },
    {
        "id": 2,
        "answer": "25 cm",
        "answer_discription": "",
        "is_answered": 0,
        "is_answer_status_right_wrong_omitted": 0,
        "title":
            "The thickness of ventilation stopping constructed of masonary or brickwork shall be _______cms \r\nin thickness",
        "options": [
            {
                "option": "a",
                "value": "20 cm",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "b",
                "value": "15 cm",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "c",
                "value": "25 cm",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "d",
                "value": "10 cm",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "e",
                "value": "18 cm",
                "color": "0xFFFFFFFF",
            }
        ],
    },
    {
        "id": 3,
        "answer": "Mine Managers",
        "answer_discription": "",
        "is_answered": 0,
        "is_answer_status_right_wrong_omitted": 0,
        "title": "M.V.T. Rules 1966 shall not apply to the following persons",
        "options": [
            {
                "option": "a",
                "value": "Timber man",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "b",
                "value": "Coal driller",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "c",
                "value": "Coal driller",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "d",
                "value": "Mine Managers",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "e",
                "value": "Haulage attendents",
                "color": "0xFFFFFFFF",
            }
        ],
    },
    {
        "id": 4,
        "answer": "3",
        "answer_discription": "",
        "is_answered": 0,
        "is_answer_status_right_wrong_omitted": 0,
        "title": "Mine Managers",
        "options": [
            {
                "option": "a",
                "value": "3",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "b",
                "value": "2",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "c",
                "value": "1",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "e",
                "value": "Not required",
                "color": "0xFFFFFFFF",
            }
        ],
    },
    {
        "id": 5,
        "answer": "1 year",
        "answer_discription": "",
        "is_answered": 0,
        "is_answer_status_right_wrong_omitted": 0,
        "title":
            "As per M.V.T. Rules 1966 every person holding a gast testing certificate shall once in __________ \r\nundergo a course of training as detailed in 8th schedule of M V T Rules 1966.",
        "options": [
            {
                "option": "a",
                "value": "5 years",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "b",
                "value": "1 year",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "c",
                "value": "2 years",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "d",
                "value": "3years",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "e",
                "value": "4years",
                "color": "0xFFFFFFFF",
            }
        ],
    },
    {
        "id": 6,
        "answer": "8m",
        "answer_discription": "",
        "is_answered": 0,
        "is_answer_status_right_wrong_omitted": 0,
        "title":
            "Main Mechanical Ventilator of a mine shall be installed on the surface at a distance of not less \r\nthan _____ from the opening of the shaft or inlcine",
        "options": [
            {
                "option": "a",
                "value": "10m",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "b",
                "value": "8m",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "c",
                "value": "7m",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "d",
                "value": "5m",
                "color": "0xFFFFFFFF",
            },
            {
                "option": "e",
                "value": "4m",
                "color": "0xFFFFFFFF",
            }
        ],
    },
];
final _pageController = PageController(initialPage: 0);
int questionINdex= 0;
int userPercentage = 0;
int wrongQ = 0;
int ommitedQuestion = 0;
double totalRight = 0.0;
int total_score = 0; 
double total_wrong = 0.0; 
bool isLastquestion = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: const Text("Quiz Screen"),
      ),
body: Column(
  children: 
  [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Question:${questionINdex +1}/${quizListData.length}",
        style: const TextStyle(
          fontSize:18,
          fontWeight:FontWeight.normal,
          color: Colors.white


        )
        ),
      ],
    ),
    Expanded(
      child: PageView.builder(
        physics: new NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount:quizListData.length,
        onPageChanged: (page) {
          setState(() {
            questionINdex = page;
         
          });
        },
        itemBuilder:(context, index){
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:BoxDecoration(
                    color:Color.fromRGBO(255, 167, 38, 1),
                    borderRadius: BorderRadius.circular(15.0)

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(quizListData[index]['title'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400),)
                  ),
                  
                ),
              ),

              ...quizListData[index]['options'].map(
                
                (data)=>Container(
                      height: 70.0,
                  width: double.infinity,
                  child: Card(
                    
                    elevation: 8.0,
                    child:ElevatedButton(
                      autofocus: true,
                     style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue
                     ),
                      child:Text(data['value']) ,
                      onPressed: ()
                      {
                     
                            _pageController.nextPage(
                              duration: const Duration(milliseconds:5),
                              curve: Curves.bounceIn
                            );
                      
                        if(quizListData[index]['answer'] == data['value'])
                        {
                         
                          setState(() {
                        totalRight = totalRight +1;

                        });
                        
                        }
                        else{
                          setState(() {
                            total_wrong = total_wrong + 1;
                          });
                        }
                       if(questionINdex==quizListData.length-1)
                       {
                        // print("Right answers $totalRight");
                        // print("Wrong answers $total_wrong");
                        // print("Submit button will be displayed");
                        
                           setState(() {
                             isLastquestion = true;

                           });
                           
                          
                        
                       }
                        
                        // (quizListData[index]['answer']);
                      }
                    ,) ,
                    
                  ),
                )
              )
            
            ],
          );
      }),
      
    ),
    isLastquestion?
    Container(
      margin: EdgeInsets.symmetric(vertical:50.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
         
        ),
        onPressed: ()
      {

        Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizResult(total_right: totalRight, total_wrong: total_wrong)));
      }, child: Text('Submit')),
    ):
    Container(
      
    )
    
  ],
),
    );
  }
}