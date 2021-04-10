import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:talawa/utils/uidata.dart';
import 'package:talawa/views/widgets/language_dialog.dart';

class AppSettings extends StatefulWidget {
  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  bool dark = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App settings'),
      ),
      body: Column(children: [
        ListTile(
          leading: Icon(Icons.language, color: UIData.secondaryColor),
          title: Text("change_language").tr(),
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return LanguageDialog();
                });
          },
        ),
        Divider(
          thickness: 1,
        ),
        SwitchListTile(
          //leading: Icon(Icons.language, color: UIData.secondaryColor),
          title: Text("Dark Mode").tr(),
          activeColor: UIData.secondaryColor,
          value: dark,
          onChanged: (val) {
            dark = val;
            setState(() {});
          },
        ),
        Divider(
          thickness: 1,
        ),
        ListTile(
          leading:
              Icon(Icons.font_download_sharp, color: UIData.secondaryColor),
          title: Text("Change font size").tr(),
          onTap: () {},
        ),
        Divider(
          thickness: 1,
        ),
      ]),
    );
  }
}
