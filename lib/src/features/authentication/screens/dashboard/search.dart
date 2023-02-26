import 'package:flutter/material.dart';

import '../../../../constants/text_strings.dart';

class DashBoardSearchBox extends StatelessWidget {
  const DashBoardSearchBox({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(left: BorderSide(width: 4))),
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tDashBoardSearch,style: textTheme.headline2?.apply(color: Colors.grey.withOpacity(0.5)),),
          const Icon(Icons.mic,size: 25,),
        ],
      ),
    );
  }
}

