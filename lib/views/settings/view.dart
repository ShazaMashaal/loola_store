import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loola_store/views/main_screen/components/custom_app_bar.dart';
import 'package:loola_store/views/settings/components/photo.dart';
import 'components/settings_item.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar("الاعدادات", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 20,
                ),
                Photo(),
                SizedBox(
                  height: 20,
                ),
                SettingsItem(
                  text: "معلومات الحساب",
                ),
                SettingsItem(
                  text: "تغيير البريد الالكتروني",
                ),
                SettingsItem(
                  text: "تغيير كلمة المرور",
                ),
                SettingsItem(
                  text: "العنوان المحفوظ",
                ),
                SettingsItem(
                  text: "ابلاغ عن مشكلة",
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "تسجيل الخروج",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}