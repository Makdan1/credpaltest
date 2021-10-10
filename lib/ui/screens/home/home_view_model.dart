import 'package:credpaltest/core/model/from_previous.dart';
import 'package:credpaltest/ui/widget/previous_exercise/previous_exercise.dart';
import 'package:credpaltest/utils/base_model.dart';
import 'package:credpaltest/utils/screensize.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends BaseModel {
  Future<List<FromPrevious>> get exercise async {
    return [
      FromPrevious(
        month: "FEB",
        date: '13',
        color: Colors.deepPurple,
        monthColor: Colors.purpleAccent.shade100,
        title: 'Shoulder and Back',
        subtitle: '12 Exercises',
      ),
      FromPrevious(
        month: "Jan",
        date: '12',
        color: Colors.lightBlueAccent,
        monthColor: Colors.lightBlue.shade100,
        title: 'Shoulder and Back',
        subtitle: '12 Exercises',
      ),
      FromPrevious(
        month: "MAR",
        date: '14',
        color: Colors.redAccent,
        monthColor: Colors.red.shade100,
        title: 'Shoulder and Back',
        subtitle: '12 Exercises',
      ),
      FromPrevious(
        month: "APR",
        date: '15',
        monthColor: Colors.blueGrey,
        color: Colors.greenAccent,
        title: 'Shoulder and Back',
        subtitle: '12 Exercises',
      ),
    ];
  }

  previousDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              title: SizedBox(
                  height: 350,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.orange.shade50,
                              radius: 20,
                              child: const Icon(
                                Icons.whatshot,
                                color: Colors.deepOrangeAccent,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'New Workout',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'From Previous',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                        15.0) //                 <--- border radius here
                                    ),
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ))
                        ],
                      ),
                      //This loads dummy data stated on the view model

                      SizedBox(
                          height: 200,
                          width: Responsive.width(context),
                          child: FutureBuilder<List<FromPrevious>>(
                              future: exercise,
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  if (snapshot.hasData) {
                                    var loadDataList = snapshot.data;
                                    return ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: loadDataList!.length,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 16),
                                        itemBuilder: (context, index) {
                                          var loadData = loadDataList[index];
                                          return PreviousItem(
                                              fromPrevious: loadData);
                                        });
                                  } else {
                                    return const SizedBox(
                                      height: 0,
                                      width: 0,
                                    );
                                  }
                                }
                                return const SizedBox(
                                  height: 0,
                                  width: 0,
                                );
                              })),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child:
                      Row(
                        children: const [
                          Icon(Icons.exit_to_app),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Close')
                        ],
                      ) ),
                    ],
                  )));
        });
  }
}
