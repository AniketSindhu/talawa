import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:talawa/utils/uidata.dart';

class LanguageDialog extends StatefulWidget {
  @override
  _LanguageDialogState createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
  @override
  Widget build(BuildContext context) {
    print(context.supportedLocales[0].toString());
    return Dialog(
      //backgroundColor: Colors.grey[300],
      child: Container(
        height: MediaQuery.of(context).size.height/3,
        width: MediaQuery.of(context).size.height/1.2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Language Picker',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1,color: UIData.secondaryColor)
                        )
                      ),
                      iconEnabledColor: UIData.secondaryColor,
                      value: context.locale,
                      onChanged: (l){
                        context.locale = l;
                        setState(() {
                          
                        });
                      },
                      items: context.supportedLocales.map((e) => DropdownMenuItem(
                        child: Text(e.toString(),style: TextStyle(),),
                        value: e,
                      )).toList(),
                      //dropdownColor: Colors.red,
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('change_language'.tr(),style: TextStyle(color: Colors.white),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(UIData.primaryColor)),
              )
            ],
          ),
        ),
      ),
    );
  }
}