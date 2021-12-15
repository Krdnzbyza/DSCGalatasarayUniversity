import 'package:dsc_gs_widgets/contants/app_color_contants.dart';
import 'package:dsc_gs_widgets/contants/app_text_contansts.dart';
import 'package:dsc_gs_widgets/widget/stateles_page.dart';
import 'package:flutter/material.dart';

class StatefulWidgetPage extends StatefulWidget {
  const StatefulWidgetPage({Key? key}) : super(key: key);

  @override
  _StatefulWidgetPageState createState() => _StatefulWidgetPageState();
}

class _StatefulWidgetPageState extends State<StatefulWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppTextContants.appBarrTittle),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Placeholder(
              strokeWidth: 8,
              fallbackHeight: 200,
              fallbackWidth: 100,
              color: AppColorContants.placeholderColor,
            ),
            GestureDetector(
              onTap: () {},
              // onDoubleTap: () {
              //   print('selected 2 ');
              // },
              child: Icon(
                Icons.star,
                size: 56,
                color: AppColorContants.iconColorTheme,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StatelesPage()));
                },
                child: Text(AppTextContants.buttonNextPage))
          ],
        ),
      ),
    );
  }
}
