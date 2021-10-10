import 'package:credpaltest/ui/screens/home/home_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:stacked/stacked.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              body: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 20),
                      child: Column(children: <Widget>[
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          // padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: const [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    'assets/images/dp.jpeg',
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Hello David',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ]),
                              InkWell(
                                  onTap: () {
                                    model.previousDialog(context);
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.deepOrangeAccent,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      //boxShadow: [BoxShadow(blurRadius: 6,color: Colors.grey)]
                                    ),
                                    child: const Icon(
                                      Icons.whatshot,
                                      color: Colors.white,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Stats',
                                  style: TextStyle(
                                      fontSize: 52,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  color: Colors.lightBlue,
                                  height: 5,
                                  width: 30,
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'Muscles',
                              style: TextStyle(
                                  fontSize: 52,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          '58',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 100,
                          ),
                        ),
                        const Text(
                          'Workouts Completed',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  children: const [
                                    Text(
                                      '72.4',
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'kg',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Current Weight',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            SizedBox(
                                height: 100,
                                child: VerticalDivider(
                                    thickness: 3,
                                    color: Colors.grey.shade300,
                                    width: 3)),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  children: const [
                                    Text(
                                      '7.6',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Text(
                                      'kg',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    width: 130,
                                    child: BarProgress(
                                      percentage: 40.0,
                                      backColor: Colors.grey.shade300,
                                      color: Colors.deepOrange,
                                      showPercentage: false,
                                      stroke: 5,
                                      round: true,
                                    )),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  'Left to gain',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black45),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.orange.shade50,
                                  child: const Icon(
                                    // Icons.access_time_rounded
                                    Icons.timeline,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  children: const [
                                    Text(
                                      '12.6k',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'cal',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Burned',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.purple.shade50,
                                  child: const Icon(
                                    // Icons.access_time_rounded
                                    Icons.fitness_center,
                                    color: Colors.purple,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  children: const [
                                    Text(
                                      '270k',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'kg',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Lifted',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.lightBlue.shade50,
                                  child: const Icon(
                                    Icons.watch_later_rounded,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  children: const [
                                    Text(
                                      '13',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      'weeks',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Training',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 100,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            20.0) //                 <--- border radius here
                                        ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'AUG',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Colors.lightBlueAccent.shade100,
                                            fontWeight: FontWeight.w100),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        '17',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.deepOrangeAccent,
                                        height: 5,
                                        width: 25,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Container(
                                        color: Colors.deepPurple,
                                        height: 5,
                                        width: 25,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Container(
                                        color: Colors.lightBlue,
                                        height: 5,
                                        width: 25,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 13,
                                  ),
                                  const Text(
                                    'Recent: Chest & Legs',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 13,
                                  ),
                                  const Text(
                                    '8 Exercises',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                  height: 90,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                            15.0) //                 <--- border radius here
                                        ),
                                  ),
                                  child: const Icon(Icons.arrow_forward_ios))
                            ]),
                        const SizedBox(
                          height: 30,
                        ),
                      ]))));
        });
  }
}
