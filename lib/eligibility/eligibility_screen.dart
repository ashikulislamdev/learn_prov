import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'eligibility_provider.dart';

class EligibilityScreen extends StatelessWidget {
  EligibilityScreen({Key? key}) : super(key: key);

  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligibilityProvider>(
      create: (context) => EligibilityProvider(),
      child: Builder(
        builder: (context){
          return Scaffold(
            appBar: AppBar(title: const Text("Eligibility Check"),),
            body: Container(
              padding: const EdgeInsets.all(16),
              child: Form(
                child: Consumer<EligibilityProvider>(
                  builder: (context, provider, child) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: provider.isEligible ? Colors.green : Colors.red,
                          ),
                        ),
                        const SizedBox(height: 16,),
                        TextFormField(
                          controller: ageController,
                          decoration: const InputDecoration(
                            hintText: "Enter Your age..."
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 16,),
                        ElevatedButton(
                          onPressed: (){
                            final int age = int.parse(ageController.text.trim());
                            provider.checkEligible(age);
                          }, 
                          child: const Text("Check")
                        ),
                        const SizedBox(height: 16,),
                        Center(
                          child: Text(provider.message),
                        )
                        
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}