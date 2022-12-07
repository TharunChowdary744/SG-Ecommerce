import 'package:flutter/material.dart';
import 'components/defaultAppBar.dart';
import 'components/defaultBackButton.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const DefaultAppBar(
        title: 'Notification',
        child: DefaultBackButton(),
      ),
      body: FittedBox(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: const [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
          child: Column(
            children: const [
              Text(
                  '‘दशरूपक’ के इस संस्करण को वर्तमान रूप देने में संस्कृत, अंग्रेजी तथा हिन्दी के कतिपय संस्करणों से सहायता उपलब्ध हुई है।',
                  style: TextStyle(fontSize: 20.0,color: Color(0xFF303030),
                  )),
              SizedBox(height: 16.0),
              Image(image: NetworkImage("https://sanskritganga.in/wp-content/uploads/2021/02/37-300x420.jpeg")),
              SizedBox(height: 16.0),
              Text(
                  "‘दशरूपक’ के इस संस्करण को वर्तमान रूप देने में संस्कृत, अंग्रेजी तथा हिन्दी के कतिपय संस्करणों से सहायता उपलब्ध हुई है। टीका की सरणि तथा उद्धरणों के विषय में डॉ० श्रीनिवास शास्त्री का संस्करण उपयोगी रहा। इसके अतिरिक्त साहित्य दर्पण, काव्यप्रकाश तथा ध्वन्यालोक के उपलब्ध संस्करणों से भी यथेच्छ सहायता ली गयी है। व्याख्याकार इन संस्करणों के कृती व्याख्याताओं तथा संपादकों का हृदय से आभार स्वीकार करता है।",
                  style: TextStyle(color: Color(0xFF808080))),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text('11/Feb/2021 04:42 PM',
                    style: TextStyle(color: Color(0xFF808080))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

