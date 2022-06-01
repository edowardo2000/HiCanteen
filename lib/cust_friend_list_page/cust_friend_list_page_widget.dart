import '../cust_split_bills_page/cust_split_bills_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustFriendListPageWidget extends StatefulWidget {
  const CustFriendListPageWidget({Key key}) : super(key: key);

  @override
  _CustFriendListPageWidgetState createState() =>
      _CustFriendListPageWidgetState();
}

class _CustFriendListPageWidgetState extends State<CustFriendListPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF994B),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Friend List',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Roboto',
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 53, 0),
            child: Icon(
              Icons.person_add,
              color: Color(0xFFF3F3F3),
              size: 30,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 25,
                    thickness: 3,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.white,
                  ),
                  ListTile(
                    title: Text(
                      '- Bryan Wyatt',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF434242),
                          ),
                    ),
                    trailing: Icon(
                      Icons.remove_circle,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(30, 0, 60, 0),
                  ),
                  Divider(
                    height: 5,
                    thickness: 3,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.white,
                  ),
                  ListTile(
                    title: Text(
                      '- Dony Lim',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF434242),
                          ),
                    ),
                    trailing: Icon(
                      Icons.remove_circle,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(30, 0, 60, 0),
                  ),
                  Divider(
                    height: 5,
                    thickness: 3,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.white,
                  ),
                  ListTile(
                    title: Text(
                      '- Aldi Wong',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF434242),
                          ),
                    ),
                    trailing: Icon(
                      Icons.remove_circle,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(30, 0, 60, 0),
                  ),
                  Divider(
                    height: 5,
                    thickness: 3,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.white,
                  ),
                  ListTile(
                    title: Text(
                      '- Larry Chi',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF434242),
                          ),
                    ),
                    trailing: Icon(
                      Icons.remove_circle,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(30, 0, 60, 0),
                  ),
                  Divider(
                    height: 5,
                    thickness: 3,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.white,
                  ),
                  ListTile(
                    title: Text(
                      '- Aron Dei',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF434242),
                          ),
                    ),
                    trailing: Icon(
                      Icons.remove_circle,
                      color: Color(0xFF303030),
                      size: 20,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(30, 0, 60, 0),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(220, 350, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustSplitBillsPageWidget(),
                          ),
                        );
                      },
                      text: 'Split bills',
                      options: FFButtonOptions(
                        width: 80,
                        height: 80,
                        color: Color(0xFFFF994B),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle1.override(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFFF3F3F3),
                                  fontSize: 15,
                                ),
                        elevation: 5,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
