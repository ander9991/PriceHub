import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDisplayCategoriesWidget extends StatefulWidget {
  const ProductDisplayCategoriesWidget({
    Key? key,
    this.name,
    this.image,
    this.price,
    this.url,
    this.ebayPrice,
    this.ebayLink,
    this.walmartName,
    this.ePrice,
    this.eTitle,
    this.eURL,
  }) : super(key: key);

  final String? name;
  final String? image;
  final String? price;
  final String? url;
  final String? ebayPrice;
  final String? ebayLink;
  final String? walmartName;
  final String? ePrice;
  final String? eTitle;
  final String? eURL;

  @override
  _ProductDisplayCategoriesWidgetState createState() =>
      _ProductDisplayCategoriesWidgetState();
}

class _ProductDisplayCategoriesWidgetState
    extends State<ProductDisplayCategoriesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ProductDisplayCategories'});
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).black600,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 20,
          borderWidth: 1,
          buttonSize: 70,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('PRODUCT_DISPLAY_CATEGORIES_arrow_back_ro');
            logFirebaseEvent('IconButton_navigate_back');
            Navigator.pop(context);
          },
        ),
        actions: [],
        flexibleSpace: FlexibleSpaceBar(
          background: Image.network(
            'https://oldbrashiers.org/wp-content/uploads/2019/01/Dark-Wallpaper-Desktop-Background-1B6.jpg',
            fit: BoxFit.cover,
          ),
        ),
        centerTitle: false,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional(0, -1),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -21.11),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 10, 15, 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.network(
                              widget.image!,
                              width: MediaQuery.of(context).size.width * 0.75,
                              height: MediaQuery.of(context).size.height * 0.45,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Text(
                        widget.name!,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).black600,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'PRODUCT_DISPLAY_CATEGORIES_VIEW_ON_AMAZO');
                          logFirebaseEvent('Button_launch_u_r_l');
                          await launchURL(widget.url!);
                        },
                        text: 'Amazon: \$${widget.price}',
                        options: FFButtonOptions(
                          width: 300,
                          height: 54,
                          color: Color(0xFF4B39EF),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 10, 2, 2),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'PRODUCT_DISPLAY_CATEGORIES__BTN_ON_TAP');
                          logFirebaseEvent('Button_launch_u_r_l');
                          await launchURL(widget.eURL!);
                        },
                        text: 'eBay: \$${widget.ePrice}',
                        options: FFButtonOptions(
                          width: 300,
                          height: 54,
                          color: Color(0x9AC966FA),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 10, 2, 2),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'PRODUCT_DISPLAY_CATEGORIES_VIEW_ON_EBAY_');
                          logFirebaseEvent('Button_launch_u_r_l');
                          await launchURL(
                              'https://www.walmart.com/search/?cat_id=0&query=${widget.name}');
                        },
                        text: 'Walmart: ${valueOrDefault<String>(
                          widget.ebayPrice,
                          'Not available',
                        )}',
                        options: FFButtonOptions(
                          width: 300,
                          height: 54,
                          color: Color(0xFF39A1EF),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
