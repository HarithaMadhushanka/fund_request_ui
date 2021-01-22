import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fund_request_ui/widgets/custom_raised_button.dart';

class FundRequestUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.zero,
        backgroundColor: Color(0xffB30060),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              CupertinoIcons.back,
              color: Color(0xffffffff),
            ),
            Text(
              'Back',
              style: TextStyle(
                color: Color(0xffffffff),
              ),
            ),
          ],
        ),
        middle: Text(
          'Haley Stein', // Retrieve the fund requester's name
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('images/background.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Text(
                  'You received a funds request\nfrom',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Haley stein',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  decoration: new BoxDecoration(
                    color: Color(0xffFFDFDF),
                    borderRadius: new BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Text(
                      'QAU 800.00', // Retrieve the fund requester's name
                      style: TextStyle(
                          fontSize: 40,
                          letterSpacing: 1,
                          color: Colors.red,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRaisedButton(
                      buttonColor: Colors.red,
                      buttonText: 'Delete',
                      icon: Icon(Icons.delete),
                    ),
                    CustomRaisedButton(
                      buttonColor: Color(0xff00A972),
                      buttonText: 'Accept',
                      icon: Icon(Icons.check),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
