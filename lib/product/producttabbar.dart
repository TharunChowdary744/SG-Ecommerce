import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  late TabController _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.green,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              tabs: const <Widget>[
                Text('Book Description'),
                Text('Additional / Product Information'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const <Widget>[
                DisReadMore(),
                AddInfo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DisReadMore extends StatelessWidget {
  const DisReadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom:10),
              child: Align(
                alignment:FractionalOffset.centerLeft,
                //alignment: FractionalOffset(0.2, 0.6),
                child:Text('Description',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:8),
              child: Align(
                alignment:FractionalOffset.centerLeft,
                //alignment: FractionalOffset(0.2, 0.6),
                child:Text('अभिज्ञान शाकुन्तलम्',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:5),
              child: Align(
                alignment:FractionalOffset.centerLeft,
                //alignment: FractionalOffset(0.2, 0.6),
                child:Text('पद्मश्री डॉ. कपिलदेव द्धिवेदी आचार्य',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:5),
              child: Align(
                alignment:FractionalOffset.centerLeft,
                //alignment: FractionalOffset(0.2, 0.6),
                child:Text("(भारती नामक संस्कृत टीका, हिंदी अनुवाद, विस्तृत टिप्पणी, सर्वागपूर्ण भूमिका तथा 7 आवश्यक परिशिष्टों से युक्त)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),textAlign: TextAlign.left,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:5),
              child: Align(
                alignment:FractionalOffset.centerLeft,
                //alignment: FractionalOffset(0.2, 0.6),
                child:Text("महाकवि कालिदासप्रणीतम्",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),textAlign: TextAlign.left,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:5),
              child: Align(
                alignment:FractionalOffset.centerLeft,
                //alignment: FractionalOffset(0.2, 0.6),
                child:Text("(विस्तृत भूमिका, मूल, ‘चन्द्रिका’ हिन्दी व्याख्या एवं परिशिष्ट सहित)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),textAlign: TextAlign.left,),
              ),
            ),
            Padding(
              key: Key('showMore'),
              padding: EdgeInsets.only(bottom:5),
              child: ReadMoreText(
                'काव्येषु नाटकं रम्यं तत्र रम्या शकुन्तला’ यह उक्ति विद्वानों में बहुश्रुत है। इसमें लेशमात्र भी अतिशयोक्ति नहीं है कि काव्य के भेद गद्य-पद्य और नाटक में दृश्यकाव्य होने के कारण नाटक को ही साहित्यमर्मज्ञों द्वारा सर्वोत्कृष्ट स्थान प्रदान किया गया, क्योंकि काव्य के श्रवण मात्र से प्राप्त काव्यानन्द की अपेक्षा दृश्य एवं श्रव्यकाव्य ‘नाटक’ से सहृदय सामाजिक अधिक आनन्द की अनुभूति कर सकता है।',
                trimLines: 2,
                style: TextStyle(color: Colors.black,fontSize: 15),
                colorClickableText: Color(0Xffff5821),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: ' show less',
              ),
            ),
            Divider(
              color: Color(0xFF167F67),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:5),
              child: ReadMoreText(
                'इसी के साथ प्राचीनसमय में अनेक संस्कृत कवियों ने नाटकों की संरचना की, जिनमें उत्तररामचरित जैसे नाटक भी यशस्वी हुए, किन्तु उन सभी में रमणीयता, आह्लादकता की दृष्टि से जो स्थान महाकवि कालिदास के अभिज्ञान शाकुन्तलम् को प्राप्त हुआ, वह न तो उन्हीं के अन्य नाटकों मालविकाग्निमित्रम् तथा विक्रमोर्वशीयम् को ही प्राप्त हो सका और न ही अन्य किसी महाकवि के अन्य नाटक को। इसीकारण विद्वानों में यह उक्ति भी प्रचलित हुई कालिदासस्य सर्वस्वमभिज्ञानशाकुन्तलम्” क्योंकि महाकवि कालिदास ने अनेक महाकाव्य, गीतिकाव्य एवं नाटकों की संरचना की, किन्तु उन सबमें उनकी यह कृति अनुपम रचना कही जा सकती है। वस्तुतः यह नाटक न केवल संस्कृतसाहित्य, अपितु सम्पूर्ण विश्वसाहित्य की अनुपम धरोहर है। इसीलिए इसकी सभी विद्वानों ने, चाहे वे भारतीय हों, या विदेशी भूरि-भूरि प्रशंसा की है।',
                trimLines: 3,
                style: TextStyle(color: Colors.black,fontSize: 15),
                colorClickableText: Color(0Xffff5821),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                trimExpandedText: ' Collapse ',
              ),
            ),
            Divider(
              color: Color(0xFF167F67),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:5),
              child: ReadMoreText(
                'यही कारण है कि इस कालजयी रचना का आज सम्पूर्ण भारत में ही नहीं, अपितु विदेशों में भी काव्यरस मर्मज्ञों द्वारा अत्यन्त मनोयोगपूर्वक अध्ययन किया जाता है। इसी का परिणाम है कि इस अनुपम कृति का सहृदय सामाजिकों को रसास्वादन कराने के लिए अनेक विद्वान् समीक्षकों द्वारा अपने-अपने ढंग से व्याख्याएँ प्रस्तुत की जाती रही हैं और आज भी की जा रही है। प्रस्तुत व्याख्या भी उसी दिशा में अत्यन्त विनम्र प्रयास है। यह व्याख्या मुझे एक पुस्तक लिखनी है, इस विचार का कार्यरूप नहीं है, अपितु मुझे महाकवि कालिदास की इस मनमोहक कृति को विद्वानों के समक्ष एक नये ढंग से, वैज्ञानिक पद्धति का अवलम्बन करते हुए अत्यन्त सरलरूप में प्रस्तुत करना है, इसी चिन्तन का परिणाम है। यद्यपि ‘अभिज्ञानशाकुन्तलम्’ में प्रयुक्त एक- एक शब्द विशिष्टभाव लिए हुए है, यदि उसकी ठीकप्रकार विस्तारपूर्वक चर्चा करें तो एक ‘विशालग्रन्थ’ का निर्माण सम्भव है, किन्तु छात्रहित को दृष्टिगत रखते हुए सीमित विस्तार में ही केवल श्लोकों की भावाभिव्यक्ति का ही मेरा यहां विशेष प्रयोजन रहा है। अभिज्ञानशाकुन्तलम् पर मैंने अनेक विद्वानों द्वारा प्रस्तुत की गई व्याख्याओं का अवलोकन किया, उनमें अनेक व्याख्या कुछ दृष्टियों से बहुत अच्छी भी लगीं, किन्तु उनमें मुझे थोड़ा बहुत और कुछ जोड़ने की इच्छा भी हुई। विशेषरूप से विषय की प्रस्तुति की सरलता के प्रति विकलता बनी रही।',
                trimLines: 2,
                style: TextStyle(color: Colors.black,fontSize: 15),
                colorClickableText: Color(0Xffff5821),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                trimExpandedText: ' Less',
              ),
            ),
            Divider(
              color: Color(0xFF167F67),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:5),
              child: ReadMoreText(
                'अभिज्ञानशाकुन्तलम् जैसे नाटक को हाथ में लेकर यदि सहृदय उसकी प्राकृत तथा अन्य व्याख्यात्मक टिप्पणियों में ही खोकर रह जाए तो उसे काव्यानन्द की अनुभूति नहीं हो सकती। इसलिए मैंने इसे नये ढंग से प्रस्तुत करने का मानस बनाया। उसी का परिणाम है, यह लघुकृति। यदि इस प्रयास में में थोड़ा भी सफल हो सका हूँ, तो स्वयं को धन्य समझूगा। जैसा कि पहले ही उल्लेख किया जा चुका है कि प्रस्तुत व्याख्या सरलदंग से प्रस्तुति का एक विनम्र प्रयास है। जिसके अन्तर्गत भूमिका में महाकवि एवं कृतिविषयक महत्वपूर्ण विषयों पर विस्तृत चर्चा की गयी है। आगे मूल बाई ओर तथा उसका हिन्दी अनुवाद दायों ओर दिया गया है, जिससे पाठक को मूलग्रन्थ के हृदयंगम में कठिनाई न हो। ग्रन्थ की उपयोगिता में वृद्धि करने के लिए पाठभेदों का भी उल्लेख किया गया है।',
                trimLines: 2,
                style: TextStyle(color: Colors.black,fontSize: 15),
                colorClickableText: Color(0Xffff5821),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                trimExpandedText: ' Less',
              ),
            ),
            Divider(
              color: Color(0xFF167F67),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:5),
              child: ReadMoreText(
                'इसके पश्चात् प्रत्येक अङ्क में आए श्लोकों की विस्तृत ‘चन्द्रिका’ हिन्दी व्याख्य की गई है। इसी अंश में ग्रन्थ के नाट्य एवं काव्यविषयक वैशिष्ट्य को भी प्रदर्शित किया गया है। पुन: परिशिष्ट में छन्दोल्लेखपूर्वक श्लोकानुक्रमणिका, अभिज्ञानशाकुन्तलम् के प्रश्न तथा हिन्दी, संस्कृत व्याख्या उदाहरणरूप में प्रस्तुत करके छात्रों की दृष्टि से ग्रन्थ की उपयोगिता में वृद्धि की गई है।',
                trimLines: 2,
                style: TextStyle(color: Colors.black,fontSize: 15),
                colorClickableText: Color(0Xffff5821),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                trimExpandedText: ' Less',
              ),
            ),
            Divider(
              color: Color(0xFF167F67),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:5),
              child: ReadMoreText(
                'वस्तुतः अन्य कृतियों के समान ही इसमें भी मेरा विनम्र प्रयास रहा है कि छात्रों के लिए यह स्वयं में एक अध्यापक के रूप में मार्गदर्शन करे। पुनरपि इस विषय में छात्रों एवं सुधी विद्वानों के सुझाव सादर आमन्त्रित हैं। पूर्ववर्ती व्याख्याकारों एवं टीकाकारों के प्रति आभार व्यक्त करना मैं अपना पुनीत कर्तव्य समझता हूं, जिनका इसके लेखन में प्रत्यक्ष या अप्रत्यक्षरूप में सहयोग लिया गया है।',
                trimLines: 2,
                style: TextStyle(color: Colors.black,fontSize: 15),
                colorClickableText: Color(0Xffff5821),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                trimExpandedText: ' Less',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class AddInfo extends StatelessWidget {
  const AddInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Column(
        children: const [
          Text('‘काव्येषु नाटकं रम्यं तत्र रम्या शकुन्तला’ यह उक्ति विद्वानों में बहुश्रुत है। इसमें लेशमात्र भी अतिशयोक्ति नहीं है कि'
              ' काव्य के भेद गद्य-पद्य और नाटक में दृश्यकाव्य होने के कारण नाटक को ही साहित्यमर्मज्ञों द्वारा सर्वोत्कृष्ट स्थान प्रदान किया गया,'
              ' क्योंकि काव्य के श्रवण मात्र से प्राप्त काव्यानन्द की अपेक्षा दृश्य एवं श्रव्यकाव्य ‘नाटक’ से सहृदय सामाजिक अधिक आनन्द की'
              ' अनुभूति कर सकता है।',style: TextStyle(fontSize:20,color: Colors.black),),
        ],
      ),
    );
  }
}
