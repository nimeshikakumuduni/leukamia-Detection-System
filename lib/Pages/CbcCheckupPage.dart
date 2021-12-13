import 'package:flutter/material.dart';
import 'package:leukamia_detection_flutter/Pages/HomePage.dart';

class CBCCheckPage extends StatelessWidget {
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
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image2.jpg'), fit: BoxFit.cover)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 600,
                margin: EdgeInsets.fromLTRB(440.0, 50.0, 10.0, 0.0),
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text('Enter patient`s Complete Blood Report',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                  width: 700,
                  height: 300,
                  margin: EdgeInsets.fromLTRB(450.0, 30.0, 10.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                      child: Text(
                        'Upload the Complete Blood Report Here.. (Upload Only PDFs)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0.0, 30.0, 1350.0, 0.0),
                  width: 130,
                  child: InkWell(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 7.0),
                            child: Text(
                              'Back',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(1100.0, 0.0, 10.0, 10.0),
                  width: 150,
                  child: InkWell(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10.0, 7.0, 10.0, 7.0),
                            child: Text(
                              'Submit',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )),
                  )),
            ]),
      ),
    );
  }
}
