import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../success_help/success_help_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreenWidget extends StatefulWidget {
  const HelpScreenWidget({Key key}) : super(key: key);

  @override
  _HelpScreenWidgetState createState() => _HelpScreenWidgetState();
}

class _HelpScreenWidgetState extends State<HelpScreenWidget> {
  TextEditingController descriptionController;
  TextEditingController emailAddressController;
  TextEditingController fullNameController;
  TextEditingController subjectController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    descriptionController = TextEditingController();
    emailAddressController = TextEditingController(text: currentUserEmail);
    fullNameController = TextEditingController();
    subjectController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            'wremna9t' /* Help */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'IBM Plex Sans',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 3, 15, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '9xp7itu0' /* We always working hard to impr... */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'IBM Plex Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 3, 0, 6),
                                        child: TextFormField(
                                          controller: fullNameController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'fullNameController',
                                            Duration(milliseconds: 100),
                                            () => setState(() {}),
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'eez89tro' /* Full name */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ew4a79ad' /* ex: Satoshi Nakamoto */,
                                            ),
                                            hintStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .lineColor,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 24, 5, 24),
                                            prefixIcon: Icon(
                                              Icons.recent_actors,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 20,
                                            ),
                                            suffixIcon: fullNameController
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () => setState(
                                                      () => fullNameController
                                                          ?.clear(),
                                                    ),
                                                    child: Icon(
                                                      Icons.clear,
                                                      color: Color(0xFF757575),
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 6),
                                      child: TextFormField(
                                        controller: emailAddressController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'emailAddressController',
                                          Duration(milliseconds: 100),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'ksdno0b8' /* Email Address */,
                                          ),
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'ar697km2' /* Enter your email address... */,
                                          ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .lineColor,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 24, 5, 24),
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                          suffixIcon: emailAddressController
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () => setState(
                                                    () => emailAddressController
                                                        ?.clear(),
                                                  ),
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0xFF757575),
                                                    size: 22,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'IBM Plex Sans',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 6),
                                      child: TextFormField(
                                        controller: subjectController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'subjectController',
                                          Duration(milliseconds: 100),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'wnibz89d' /* Subject */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2
                                                  .override(
                                                    fontFamily: 'IBM Plex Sans',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'f5odf6rr' /* How can we help you? */,
                                          ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .lineColor,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 24, 5, 24),
                                          prefixIcon: Icon(
                                            Icons.subject_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                          suffixIcon: subjectController
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () => setState(
                                                    () => subjectController
                                                        ?.clear(),
                                                  ),
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0xFF757575),
                                                    size: 22,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'IBM Plex Sans',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 6, 0, 0),
                                  child: TextFormField(
                                    controller: descriptionController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'descriptionController',
                                      Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'x4mzc3dd' /* Description */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'IBM Plex Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'nz7kt97b' /* I encountered a problem while.... */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'IBM Plex Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 0,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 0,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              5, 24, 5, 24),
                                      prefixIcon: Icon(
                                        Icons.description_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20,
                                      ),
                                      suffixIcon:
                                          descriptionController.text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () => setState(
                                                    () => descriptionController
                                                        ?.clear(),
                                                  ),
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0xFF757575),
                                                    size: 22,
                                                  ),
                                                )
                                              : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Roboto Mono',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    textAlign: TextAlign.start,
                                    maxLines: 5,
                                    keyboardType: TextInputType.multiline,
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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 20, 25, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: FFButtonWidget(
                              onPressed: () async {
                                if ((fullNameController.text != null) &&
                                    (fullNameController.text != '')) {
                                  if ((emailAddressController.text != null) &&
                                      (emailAddressController.text != '')) {
                                    if ((subjectController.text != null) &&
                                        (subjectController.text != '')) {
                                      if ((descriptionController.text !=
                                              null) &&
                                          (descriptionController.text != '')) {
                                        final supportTeamCreateData =
                                            createSupportTeamRecordData(
                                          fullName: fullNameController.text,
                                          emailAddress:
                                              emailAddressController.text,
                                          subject: subjectController.text,
                                          description:
                                              descriptionController.text,
                                          formType: 'helpScreen',
                                          dateAndTime: dateTimeFormat(
                                              'M/d h:mm a',
                                              getCurrentTimestamp),
                                        );
                                        await SupportTeamRecord.createDoc(
                                                currentUserReference)
                                            .set(supportTeamCreateData);
                                        await Navigator.pushAndRemoveUntil(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.scale,
                                            alignment: Alignment.bottomCenter,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child: SuccessHelpWidget(),
                                          ),
                                          (r) => false,
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Description field is required',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warningBtnText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 1000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .warningBackground,
                                          ),
                                        );
                                        return;
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Subject field is required',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warningBtnText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 1000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .warningBackground,
                                        ),
                                      );
                                      return;
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Email address field is required',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .warningBtnText,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 1000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .warningBackground,
                                      ),
                                    );
                                    return;
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Full name field is required',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .warningBtnText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 1000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .warningBackground,
                                    ),
                                  );
                                  return;
                                }
                              },
                              text: FFLocalizations.of(context).getText(
                                'toiqxl7w' /* Submit */,
                              ),
                              options: FFButtonOptions(
                                width: 130,
                                height: 55,
                                color:
                                    FlutterFlowTheme.of(context).customColor1,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'IBM Plex Sans',
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
