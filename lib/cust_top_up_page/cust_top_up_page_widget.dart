import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustTopUpPageWidget extends StatefulWidget {
  const CustTopUpPageWidget({
    Key key,
    this.uid,
  }) : super(key: key);

  final String uid;

  @override
  _CustTopUpPageWidgetState createState() => _CustTopUpPageWidgetState();
}

class _CustTopUpPageWidgetState extends State<CustTopUpPageWidget> {
  TextEditingController topUpFieldController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    topUpFieldController = TextEditingController();
  }

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
          'Top Up',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Roboto',
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
        ),
        actions: [],
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Text(
                  'Instant Method',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Roboto',
                        color: Color(0xFF434242),
                        fontSize: 25,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 15, 5, 0),
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.8,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Image.asset(
                              'assets/images/receh1.JPG',
                              width: 90,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'RM5',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Image.asset(
                              'assets/images/receh2.JPG',
                              width: 90,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'RM10',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Image.asset(
                              'assets/images/receh3.JPG',
                              width: 90,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'RM20',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Image.asset(
                              'assets/images/receh4.JPG',
                              width: 90,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'RM50',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Image.asset(
                              'assets/images/receh6.JPG',
                              width: 90,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'RM100',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Image.asset(
                              'assets/images/receh7.JPG',
                              width: 90,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'RM200',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Text(
                  'OR',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                      ),
                ),
              ),
              StreamBuilder<List<CustomerRecord>>(
                stream: queryCustomerRecord(
                  queryBuilder: (customerRecord) =>
                      customerRecord.where('uid', isEqualTo: widget.uid),
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }
                  List<CustomerRecord> columnCustomerRecordList = snapshot.data;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data.isEmpty) {
                    return Container();
                  }
                  final columnCustomerRecord =
                      columnCustomerRecordList.isNotEmpty
                          ? columnCustomerRecordList.first
                          : null;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Container(
                                width: 270,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  border: Border.all(
                                    color: Color(0xFF0C0000),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 0, 0),
                                      child: Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.black,
                                        size: 27,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: Text(
                                        'RM',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 19,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: topUpFieldController,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 19,
                                            ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final customerUpdateData =
                                    createCustomerRecordData(
                                  customerLocation:
                                      columnCustomerRecord.customerLocation,
                                  customerBalance: topUpFieldController.text,
                                  custUniv: columnCustomerRecord.custUniv,
                                  uid: widget.uid,
                                );
                                await columnCustomerRecord.reference
                                    .update(customerUpdateData);
                                Navigator.pop(context);
                              },
                              text: 'Confirm',
                              options: FFButtonOptions(
                                width: 270,
                                height: 40,
                                color: Color(0xFFFF994B),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
