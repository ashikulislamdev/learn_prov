import 'package:flutter/material.dart';
import 'package:learn_prov/font_stmt/setting_provider.dart';
import 'package:learn_prov/font_stmt/settings.dart';
import 'package:provider/provider.dart';

class FontHomePage extends StatelessWidget {
  const FontHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Consumer<Setting>(
          builder: (context, fontValue, child) { 
            return Text(
              "This is simple text",
              style: TextStyle(
                fontSize: fontValue.newFontSize.toDouble() == fontValue.newFontSize.toDouble() ? fontValue.newFontSize.toDouble() : 22
              ),
            );
          }
        ),

        ElevatedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const SettingPage())),),
          child: const Text("Update Font"),
        )
      ],
    );
  }
}