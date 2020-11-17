import 'package:flutter/material.dart';
import 'package:netflix_clone_app/MainScreen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final textControllerUser = TextEditingController(),
        textControllerPassword = TextEditingController();

    bool isCheck = false; 

    @override
    void initState(){
      super.initState();

      textControllerUser.addListener(_printLastestValue);
      textControllerPassword.addListener(_printLastestValue);
    }

    _printLastestValue(){
      setState(() {
        if(textControllerUser.text.length > 0 && textControllerPassword.text.length > 0){
          isCheck = true;
        }else if (textControllerUser == null || textControllerPassword == null){
          isCheck = false;
        }
      });
    }
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop()
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top:20),
            child: Text("Ajuda", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15))
          )
        ],
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView (
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top:20, right: 40, left:40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(48, 45, 45, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child:  TextFormField(
                    controller: textControllerUser,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.all(10),
                      fillColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20, right: 40, left:40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(48, 45, 45, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child:  TextFormField(
                    controller: textControllerPassword,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.all(10),
                      fillColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .80,
                  height: 40,
                  decoration: BoxDecoration(
                    color: (isCheck) ? Color.fromRGBO(213, 0, 2, 1) : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(2))
                  ),
                  child: Center(
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("ENTRAR", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new MainScreen()
                        ),
                        );
                        
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .80,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2))
                  ),
                  child: Center(
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Esqueci a Senha", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      onTap: (){},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .80,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2))
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        children: <TextSpan> [
                          TextSpan(text: "Login protejido por Google reCAPTCHA", style: TextStyle(color: Colors.grey)),
                          TextSpan(text: "Saiba Mais", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))
                        ],      
                      ),
                      textAlign: TextAlign.center,
                    )
                    ),
                  ),
                ),
            ],
          )
        )
      )
    );
  }
}