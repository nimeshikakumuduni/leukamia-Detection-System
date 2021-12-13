import 'package:flutter/material.dart';
import 'package:leukamia_detection_flutter/Pages/CbcCheckupPage.dart';
import 'package:leukamia_detection_flutter/Pages/LtypeCheckPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('assets/appbar.jpg'),
          alignment: Alignment.centerRight,
          fit: BoxFit.none,
        ),
        title: Text(
          'Automated Leukamia Detection system',
          textAlign: TextAlign.right,
          style: TextStyle(
              color: Colors.red[200],
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[50],
        // backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image2.jpg'), fit: BoxFit.cover)),
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 800,
                  margin: EdgeInsets.fromLTRB(440.0, 60.0, 10.0, 0.0),
                  padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                      'In manual method of Leukemia detection, experts check the blood reports & microsophic images. This is lengthy and time taking process which depends on the person`s skills and not having standard accuracy. This automated Leukemia detection system analyses full blood count reports and microsophic blood images and overcomes these drawbacks from 2 steps.',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: 800,
                  margin: EdgeInsets.fromLTRB(440.0, 0.0, 10.0, 0.0),
                  padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                      'Step 01: Identify leukemia related abnormalities from Complete blood count report.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: 800,
                  margin: EdgeInsets.fromLTRB(440.0, 0.0, 10.0, 10.0),
                  padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 40.0),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                      'Step 02: Identify leukemia types using blood images.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(440.0, 0.0, 10.0, 0.0),
                    padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 40.0),
                    width: 500,
                    child: InkWell(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CBCCheckPage()),
                            );
                          },
                          child: Center(
                            child: Container(
                              padding:
                                  EdgeInsets.fromLTRB(10.0, 7.0, 10.0, 7.0),
                              child: Text(
                                'Click here for 1st checkup',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                          // color: Colors.pink,
                          ),
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(440.0, 0.0, 10.0, 10.0),
                    padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0.0),
                    width: 500,
                    child: InkWell(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LtypeDetectionPage()),
                            );
                          },
                          child: Center(
                            child: Container(
                              padding:
                                  EdgeInsets.fromLTRB(10.0, 7.0, 10.0, 7.0),
                              child: Text(
                                'Click here for 2nd checkup',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                          // color: Colors.pink,
                          ),
                    )),
              ]),
        ),
      ),
    );
    // );
  }
}
