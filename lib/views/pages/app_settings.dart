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
  bool largeFont=false;
  @override
  Widget build(BuildContext context) {
    dark=ThemeProvider.themeOf(context).id=='dark_theme'||ThemeProvider.themeOf(context).id=='dark_theme_large_font';
    largeFont = ThemeProvider.themeOf(context).id=='dark_theme_large_font'||ThemeProvider.themeOf(context).id=='default_theme_large_font';
    setState(() {});
    return Scaffold(
      appBar: AppBar(
        title: Text('App settings'),
      ),
      body: Column(children: [
        SwitchListTile(
          //leading: Icon(Icons.language, color: UIData.secondaryColor),
          value:dark,
          title: Text("Dark Mode").tr(),
          onChanged: (val){
            dark=val;
            if(val){
              if(largeFont)
                ThemeProvider.controllerOf(context).setTheme('dark_theme_large_font');
              else
                ThemeProvider.controllerOf(context).setTheme('dark_theme');
            }
            else{
              if(largeFont)
                ThemeProvider.controllerOf(context).setTheme('default_theme_large_font');
              else
                ThemeProvider.controllerOf(context).setTheme('default_theme'); 
            }
            setState((){});
          },
          activeColor: UIData.secondaryColor,
        ),
        Divider(
          thickness: 1,
        ),
        SwitchListTile(
          value: largeFont,
          title: Text("Large Font").tr(),
          
          activeColor: UIData.secondaryColor,
          onChanged: (val) {
            largeFont=val;
            if(val){
              if(dark)
                ThemeProvider.controllerOf(context).setTheme('dark_theme_large_font');
              else
                ThemeProvider.controllerOf(context).setTheme('default_theme_large_font');
            }
            else{
              if(dark)
                ThemeProvider.controllerOf(context).setTheme('dark_theme');
              else
                ThemeProvider.controllerOf(context).setTheme('default_theme');
            }
            setState(() {
              
            });
          },
        ),
        Divider(
          thickness: 1,
        ),
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
      ]),
    );
  }
}
