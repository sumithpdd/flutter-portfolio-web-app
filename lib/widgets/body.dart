import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/util.dart';
import 'package:portfolio_web/widgets/contact_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                    child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(opacity: 0.5, child: Image.asset('background.jpg')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'I \'m CoderP. \n I build beatiful websites \n using Flutter!',
                            style: TextStyle(
                              fontSize: 44.5,
                              color: Colors.blueGrey,
                            )),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 75, vertical: 60),
                            child: ContactButton(
                                buttonText: 'Drop me a line',
                                icon: Icon(Icons.mail_outline),
                                onPressed: () {
                                  launchMailto();
                                }),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  'My Projects',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: projectsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.black12.withAlpha(23),
                      child: Column(
                        children: [
                          Card(
                            color: Colors.blueAccent,
                            elevation: 3,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(projectsList[index]['title']!),
                                  leading:
                                      Icon(Icons.work, color: Colors.white),
                                  subtitle:
                                      Text(projectsList[index]['subtitle']!),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.network(
                                      projectsList[index]["image"]!),
                                ),
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
