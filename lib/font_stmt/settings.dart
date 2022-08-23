import 'package:flutter/material.dart';
import 'package:learn_prov/font_stmt/font_home.dart';
import 'package:learn_prov/font_stmt/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingController = Provider.of<Setting>(context);
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (){
                settingController.incFontSize();
              }, 
              child: const Icon(Icons.add, color: Colors.white)
            ),
            ElevatedButton(
              onPressed: (){
                settingController.dicFontSize();
              }, 
              child: const Icon(Icons.remove, color: Colors.red)
            ),

            
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const FontHomePage())),);
              }, 
              child: const Text("Go-to Home")
            ),
          ],
        )
      ),
    );
  }
}