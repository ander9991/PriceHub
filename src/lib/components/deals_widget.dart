import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DealsWidget extends StatefulWidget {
  const DealsWidget({Key? key}) : super(key: key);

  @override
  _DealsWidgetState createState() => _DealsWidgetState();
}

class _DealsWidgetState extends State<DealsWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/com-22-003-don-revamp-main-1-1659453149.jpg?crop=0.582xw:1.00xh;0.220xw,0&resize=640:*',
            width: MediaQuery.of(context).size.width * 0.8,
            height: 130,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
