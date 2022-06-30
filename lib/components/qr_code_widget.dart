import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class QrCodeWidget extends StatefulWidget {
  const QrCodeWidget({
    Key key,
    this.qrData,
    this.type,
  }) : super(key: key);

  final String qrData;
  final String type;

  @override
  _QrCodeWidgetState createState() => _QrCodeWidgetState();
}

class _QrCodeWidgetState extends State<QrCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
              child: Text(
                widget.type,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'IBM Plex Sans',
                      fontSize: 16,
                    ),
              ),
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.close,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
          child: Container(
            width: 320,
            height: 320,
            child: custom_widgets.QRCode(
              width: 320,
              height: 320,
              qrSize: 320.0,
              qrData: widget.qrData,
              qrPadding: 15.0,
              qrBorderRadius: 15.0,
              qrBackgroundColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
              qrForegroundColor: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
        ),
      ],
    );
  }
}
