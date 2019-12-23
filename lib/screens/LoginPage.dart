import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../ScreenList.dart';

class LoginPage extends StatefulWidget{
  final int choice;
  LoginPage(this.choice);
  @override
  _LoginPageState createState()=> _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  TeddyController _teddyController;
  @override
  initState() {
    _teddyController = TeddyController();
    super.initState();
  }
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;

    return Scaffold(
      backgroundColor: Color.fromRGBO(93, 142, 155, 1.0),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[500],
        onPressed: ()=>Navigator.of(context).pop(),
        child: Icon(Icons.arrow_back,
        color: Colors.orange[50],),
        

      ),
      body: Container(
          child: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
              // Box decoration takes a gradient
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.0, 1.0],
                colors: [
                  Color.fromRGBO(170, 207, 211, 1.0),
                  Color.fromRGBO(93, 142, 155, 1.0),
                ],
              ),
            ),
          )),
          Positioned.fill(
            child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: devicePadding.top + 50.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 200,
						              padding: const EdgeInsets.only(left: 30.0, right:30.0),
                          child: FlareActor(
                            "assets/Teddy.flr",
                            shouldClip: false,
                            alignment: Alignment.bottomCenter,
                            fit: BoxFit.contain,
                            controller: _teddyController,
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Form(
                              key: _formKey,
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TrackingTextInput(
                                    label: "Email",
                                    hint: "What's your email address?",
                                    onCaretMoved: (Offset caret) {
                                      _teddyController.lookAt(caret);
                                    }),
                                TrackingTextInput(
                                  label: "Password",
                                  hint: "Try 'bears'...",
                                  isObscured: true,
                                  onCaretMoved: (Offset caret) {
                                    _teddyController.coverEyes(caret != null);
                                    _teddyController.lookAt(null);
                                  },
                                  onTextChanged: (String value) {
                                    _teddyController.setPassword(value);
                                  },
                                ),
                                SigninButton(
                                    child: Text("Sign In",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 16,
                                            color: Colors.white)),
                                    onPressed: () {
                                      if(_formKey.currentState.validate()){
                                        _teddyController.submitPassword(context,widget.choice);
                                      }
                                    })
                              ],
                            )),
                          )),
                    ])),
          ),
        ],
      )),
    );
  }
}