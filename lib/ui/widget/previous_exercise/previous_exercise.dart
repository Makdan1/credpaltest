import 'package:credpaltest/core/model/from_previous.dart';
import 'package:flutter/material.dart';

//This is the widget that display the previous exercise on a list
class PreviousItem extends StatelessWidget {
  final FromPrevious fromPrevious;


   const PreviousItem({Key? key, required this.fromPrevious}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            color: Colors.white,
            elevation: 3.0,
            child: Container(
              padding: const EdgeInsets.all(20),
              child:    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 110,
                        width: 80,
                        decoration:  BoxDecoration(
                          color:fromPrevious.color,
                          borderRadius: const BorderRadius.all(
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
                        fromPrevious.month!,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: fromPrevious.monthColor,
                                  fontWeight: FontWeight.w100),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                             Text(
                              fromPrevious.date!,
                              style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    const SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              color:  fromPrevious.color!,
                              height: 5,
                              width: 25,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                         Text(
                          fromPrevious.title!,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                         Text(
                          fromPrevious.subtitle!,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),

                  ]),
            )));
  }
}