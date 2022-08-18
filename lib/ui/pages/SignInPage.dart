import 'package:e_wallet_app/shared/theme.dart';
import 'package:e_wallet_app/ui/pages/DetailScreen.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  State<SignInPage> createState() => _SignInPage();
}
class _SignInPage extends State<SignInPage> {
    final myController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          TextField(
            controller: myController,
            decoration: const InputDecoration(labelText: 'Username'),
          ),
         
          const SizedBox(
            height: 100,
          ),
          SizedBox(
              width: 150,
              height: 30, 
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(username: myController.text),
                    ),
                  );
                }, 
                style: TextButton.styleFrom(
                  backgroundColor : purpleColor
                ),
                child: Text(
                  'Sign In',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold
                  ),
                  ),
              ),
            ),
          ],
      ),
    );
  }
}

