import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:talawa/utils/uidata.dart';
import 'package:talawa/views/widgets/language_dialog.dart';
import 'package:theme_provider/theme_provider.dart';

class AppSettings extends StatefulWidget {
  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  bool dark = false;
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
        ListTile(
          //leading: Icon(Icons.language, color: UIData.secondaryColor),
          title: Text("Dark Mode").tr(),
          onTap: (){
            showDialog(context: context, builder: (_) => ThemeConsumer(child: ThemeDialog()));
          },
          leading: Icon(Icons.color_lens, color: UIData.secondaryColor),
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
