import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:talawa/utils/uidata.dart';
import 'package:talawa/views/widgets/language_dialog.dart';

class AppSettings extends StatefulWidget {
  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App settings'),
      ),
      body: Column(
        children:[
          ListTile(
            leading:Icon(Icons.language,color:UIData.secondaryColor),
            title: Text("change_language").tr(),
            onTap: (){
              showDialog(context: context, builder: (context){
                return LanguageDialog();
              });
            },
          )
        ]
      ),
    );
  }
}