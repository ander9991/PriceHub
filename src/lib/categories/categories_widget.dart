import '../auth/auth_util.dart';
import '../best_deals/best_deals_widget.dart';
import '../book/book_widget.dart';
import '../clothing/clothing_widget.dart';
import '../components/deals_widget.dart';
import '../electronics/electronics_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../jewelry/jewelry_widget.dart';
import '../results/results_widget.dart';
import '../tools/tools_widget.dart';
import '../toys/toys_widget.dart';
import '../video_games/video_games_widget.dart';
import '../whole_foods/whole_foods_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Categories'});
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).black600,
        automaticallyImplyLeading: false,
        title: AuthUserStreamWidget(
          child: Text(
            'Hi, ${valueOrDefault<String>(
              currentUserDisplayName,
              'Guest',
            )}',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
        actions: [],
        flexibleSpace: FlexibleSpaceBar(
          background: Image.network(
            'https://oldbrashiers.org/wp-content/uploads/2019/01/Dark-Wallpaper-Desktop-Background-1B6.jpg',
            fit: BoxFit.cover,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                child: TextFormField(
                  controller: textController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  onFieldSubmitted: (_) async {
                    logFirebaseEvent(
                        'CATEGORIES_TextField_z6w38ugj_ON_TEXTFIE');
                    logFirebaseEvent('TextField_navigate_to');
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 2000),
                        reverseDuration: Duration(milliseconds: 2000),
                        child: ResultsWidget(
                          results: textController!.text,
                        ),
                      ),
                    );
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'yb1ldhsm' /* Search products... */,
                    ),
                    labelStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF57636C),
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0xFF57636C),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).black600,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'CATEGORIES_Container_h3ors0wb_ON_TAP');
                        logFirebaseEvent('deals_navigate_to');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 2000),
                            reverseDuration: Duration(milliseconds: 2000),
                            child: BestDealsWidget(),
                          ),
                        );
                      },
                      child: DealsWidget(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'fybkp7d5' /* Categories */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF57636C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'CATEGORIES_Container_x9c6p7pr_ON_TAP');
                        logFirebaseEvent('Container_navigate_to');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 2000),
                            reverseDuration: Duration(milliseconds: 2000),
                            child: ElectronicsWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'data:image/jpeg;base64,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',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'z1vrrzyv' /* Electronics */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'CATEGORIES_Container_2e578hao_ON_TAP');
                        logFirebaseEvent('Container_navigate_to');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ToysWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://target.scene7.com/is/image/Target/CAT_outdoortoys158267-181211_1544565419768-210730-1627661955709?wid=315&hei=315&qlt=60&fmt=pjpeg',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'fr64ninc' /* Toys */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'CATEGORIES_Container_jbzh7zz6_ON_TAP');
                        logFirebaseEvent('Container_navigate_to');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ToolsWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://www.incimages.com/uploaded_files/image/1920x1080/getty_494605768_2000133320009280151_316966.jpg',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ob4d59rj' /* Tools */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'CATEGORIES_Container_arxd7ww9_ON_TAP');
                        logFirebaseEvent('Container_navigate_to');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JewelryWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://static.ebayinc.com/static/assets/Uploads/Stories/Articles/_resampled/ScaleWidthWyI4MDAiXQ/ebay-authenticity-guarantee-fine-jewelry.jpg',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'zvkxbpgb' /* Jewelry  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'CATEGORIES_Container_xz8zfzf6_ON_TAP');
                        logFirebaseEvent('Container_navigate_to');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ClothingWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://cdn.vox-cdn.com/thumbor/QgEMwYKlcK9fSFsZD2FIe9SouxM=/0x0:4915x3930/1200x800/filters:focal(1719x1156:2505x1942)/cdn.vox-cdn.com/uploads/chorus_image/image/61753005/clothingrack.0.jpg',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'y0jf2ecs' /* Clothing */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'CATEGORIES_Container_a6t37t2v_ON_TAP');
                        logFirebaseEvent('Container_navigate_to');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WholeFoodsWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'l9xleue1' /* Whole Foods */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'CATEGORIES_Container_7vczd79g_ON_TAP');
                        logFirebaseEvent('Container_navigate_to');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://static.scientificamerican.com/sciam/cache/file/1DDFE633-2B85-468D-B28D05ADAE7D1AD8_source.jpg?w=590&h=800&D80F3D79-4382-49FA-BE4B4D0C62A5C3ED',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '0s9sexkg' /* Books */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'CATEGORIES_Container_l1mivcon_ON_TAP');
                        logFirebaseEvent('Container_navigate_to');
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoGamesWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://i5.walmartimages.com/dfw/4ff9c6c9-44ce/k2-_16f316f7-6693-4046-908c-e2bb0a8d7c81.v1.jpg',
                                  width: double.infinity,
                                  height: 115,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'oi7vt6fo' /* Videogames */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
