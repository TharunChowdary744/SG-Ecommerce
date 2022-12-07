import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';

class TrackOrder extends StatefulWidget {
  TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: DefaultAppBar(
        title: "Track My Order",
        child: DefaultBackButton(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0,top:16),
            child: Text(
              "Wed, 12 September",
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFF808080),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Order ID : 5136 - 9ui2 - 129i2",
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFF808080),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 16.0,
            ),
            child: Text(
              "Orders",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 6,
                child: IconStepper(
                  direction: Axis.vertical,
                  enableNextPreviousButtons: false,
                  enableStepTapping: false,
                  stepColor: Colors.green,
                  activeStepBorderColor: Color(0xFFFFFFFF),
                  activeStepBorderWidth: 0.0,
                  activeStepBorderPadding: 0.0,
                  lineColor: Colors.green,
                  lineLength: 70.0,
                  lineDotRadius: 2.0,
                  stepRadius: 16.0,
                  icons: [
                    Icon(Icons.radio_button_checked, color: Colors.green),
                    Icon(Icons.check, color: Color(0xFFFFFFFF)),
                    Icon(Icons.check, color: Color(0xFFFFFFFF)),
                    Icon(Icons.check, color: Color(0xFFFFFFFF)),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: ListTile(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            leading: Icon(Icons.card_travel,
                              size: 48.0,
                              color: Color(0Xffe16f35),
                            ),
                            title: Text(
                              "xxxxxxxxxxxxxx",
                              style: TextStyle(fontSize: 18.0),
                            ),
                            subtitle: Text(
                              "XXXXXXXXXXXXXX",
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ),
                        Text(
                          "0:00",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.only(left: 24.0, top: 16.0, bottom: 16.0),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border.all(
                width: 0.5,
                color: Color(0xFF808080),
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Icon(Icons.home, size: 64.0, color: Color(0Xffe16f35)),
                SizedBox(width: 32.0),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Address",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "Home, Work & Other Address",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Color(0xFF303030).withOpacity(0.7),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: Text(
                          "House No: 5-349, Opp Bajenarayana Ricemill,vadisaleru,Rangampeta Mandal",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFF303030).withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
