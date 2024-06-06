import 'package:clean_architecture_assignment_4/color/color_const.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/drawer_items.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/drop_down.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/welcome_user_msg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserWelcomeScreen extends StatelessWidget {
  final String? userName;

  UserWelcomeScreen({this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Drawer(
                width: MediaQuery.of(context).size.width / 5,
                backgroundColor: ColorConst.AppTextColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                    ),
                    const Text(
                      'SAPDOC',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontFamily: 'Fonttitle',
                      ),
                    ),
                    const SizedBox(
                      height: 110,
                    ),
                    DrawerItems(
                      icon: Icons.category,
                      item_txt: 'Categories',
                      callback: () {},
                    ),
                    DrawerItems(
                        icon: Icons.calendar_month,
                        item_txt: 'Appointment',
                        callback: () {}),
                    DrawerItems(
                        icon: Icons.chat, item_txt: 'Chat', callback: () {}),
                    DrawerItems(
                        icon: Icons.settings,
                        item_txt: 'Setting',
                        callback: () {}),
                    DrawerItems(
                        icon: Icons.logout,
                        item_txt: 'Logout',
                        callback: () {}),
                  ],
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(50, 50, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WelcomeUserMsg(
                      greeting_msg: 'Hello !',
                      user_name: 'Dr.Saurabh',
                      image: const AssetImage('assets/image.png')),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Today's appointment",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color.fromARGB(255, 103, 170, 228),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                '21',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Pending Appointment')
                            ],
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color.fromARGB(255, 103, 170, 228),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                '19',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Pending Appointment')
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  DropDown(
                      text: 'Monday, 3 june',
                      icon: IconButton(
                          onPressed: () async {
                            DateTime? datepicked = await showDatePicker(
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2025));
                          },
                          icon: const Icon(Icons.calendar_month))),
                  const SizedBox(height: 20),
                  Container(
                    height: 300,
                    width: 1040,
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          const Color.fromARGB(255, 224, 223, 223)),
                                  child: const Icon(
                                    Icons.schedule,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 130,
                                ),
                                Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          const Color.fromARGB(255, 224, 223, 223)),
                                  child: const Center(
                                      child: Text(
                                    '10.10 AM',
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  )),
                                ),
                                const SizedBox(
                                  width: 130,
                                ),
                                Container(
                                    height: 50,
                                    width: 500,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: ColorConst.AppTextColor),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Patient name',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'X year',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
