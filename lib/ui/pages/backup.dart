part of 'pages.dart';

class BackUpPage extends StatelessWidget {
  // void validateInput(){
  //   if(_formKey.currentState!.validate()){
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Proses validasi sukses...!')));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container();
    // Size size = MediaQuery.of(context).size;
    // // final userNameController = TextEditingController();
    // // final passwordController = TextEditingController();
    // TextEditingController userNameController = TextEditingController();
    // TextEditingController passwordController = TextEditingController();
    // String userName, password;
    // final _formKey = GlobalKey<FormState>();

    // return Scaffold(
    //     body: Background(
    //     child: Container(
    //       key: _formKey,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Container(
    //             alignment: Alignment.center,
    //             padding: EdgeInsets.symmetric(horizontal: 40),
    //             child: Text(
    //               "LOGIN",
    //               style: blackFontStyle1,
    //               textAlign: TextAlign.center,
    //             ),
    //           ),

    //           SizedBox(height: size.height * 0.03),

    //           Container(
    //             alignment: Alignment.center,
    //             margin: EdgeInsets.symmetric(horizontal: 40),
    //             child: TextField(
    //               controller: userNameController,
    //               // autofocus: false,
    //               decoration: InputDecoration(
    //                 labelText: "Username",
    //               ),
                  
    //               keyboardType: TextInputType.emailAddress,
    //               // validator: (value){
    //               //   if(value!.isEmpty){
    //               //       return 'email tidak boleh kosong';
    //               //   }
    //               // }
    //             ),
    //           ),

    //           SizedBox(height: size.height * 0.03),

    //           Container(
    //             alignment: Alignment.center,
    //             margin: EdgeInsets.symmetric(horizontal: 40),
    //             child: TextField(
    //               controller: passwordController,
    //               // autofocus: true,
    //               decoration: InputDecoration(
    //                 labelText: "Password"
    //               ),
    //               keyboardType: TextInputType.visiblePassword,
    //               obscureText: true,
                 
    //             ),
    //           ),

    //           SizedBox(height: size.height * 0.05),

    //           Container(
    //             alignment: Alignment.centerRight,
    //             margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    //             child: RaisedButton(
    //               onPressed: () {
    //                 userName = userNameController.text;
    //                 password = passwordController.text;
    //                 if(userName == "gbs_user" && password == "12345" ){
    //                       Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    //                   }else{
    //                     ScaffoldMessenger.of(context).showSnackBar(
    //                       SnackBar(
    //                         backgroundColor: Colors.red,
    //                         content: Text(
    //                           'maaf anda tidak bisa mengakses modul tersebut!',
    //                           textAlign: TextAlign.center,
    //                         ),
    //                         ),
    //                     );
    //                     // print("maaf anda tidak bisa mengakses modul tersebut!");
    //                   }
    //                 // if(_formKey.currentState.validate()){
    //                 //   if(userName == "gbs_user" && password == "12345" ){
    //                 //       Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    //                 //   }else{
    //                 //     print("maaf anda tidak bisa mengakses modul tersebut!");
    //                 //   }
    //                 // }
    //               },
    //               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    //               textColor: thirdColor,
    //               padding: const EdgeInsets.all(0),
    //               child: Container(
    //                 alignment: Alignment.center,
    //                 height: 50.0,
    //                 width: size.width * 0.5,
    //                 decoration: new BoxDecoration(
    //                   borderRadius: BorderRadius.circular(80.0),
    //                   gradient: new LinearGradient(
    //                     colors: [
    //                       mainColor,
    //                       secondaryColor
    //                     ]
    //                   )
    //                 ),
    //                 padding: const EdgeInsets.all(0),
    //                 child: Text(
    //                   "LOGIN",
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.bold
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}