import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_profile_model.dart';
export 'create_profile_model.dart';

class CreateProfileWidget extends StatefulWidget {
  const CreateProfileWidget({Key? key}) : super(key: key);

  @override
  _CreateProfileWidgetState createState() => _CreateProfileWidgetState();
}

class _CreateProfileWidgetState extends State<CreateProfileWidget> {
  late CreateProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateProfileModel());

    _model.yourNameController ??= TextEditingController();
    _model.cityController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.0),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 20.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            context.pop();
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'u8mapdp3' /* Create your Profile */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 22.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 11.0),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFDBE2E7),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRfMvg1qfwBoF9gCPGRulJPps1FDPXGCeVxn-5tADliXIuYleG7DidLGFloUckDhnIfGs&usqp=CAU',
                          ).image,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
              child: TextFormField(
                controller: _model.yourNameController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    'phiehyb5' /* Your Name */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).bodySmall,
                  hintStyle: FlutterFlowTheme.of(context).bodySmall,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                maxLines: null,
                validator:
                    _model.yourNameControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
              child: TextFormField(
                controller: _model.cityController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    'kvupb97f' /* Your City */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).bodySmall,
                  hintStyle: FlutterFlowTheme.of(context).bodySmall,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                maxLines: null,
                validator: _model.cityControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
              child: FlutterFlowDropDown<String>(
                controller: _model.stateValueController ??=
                    FormFieldController<String>(
                  _model.stateValue ??= FFLocalizations.of(context).getText(
                    '3w8b26px' /* State */,
                  ),
                ),
                options: [
                  FFLocalizations.of(context).getText(
                    'us0zfmlg' /* State */,
                  ),
                  FFLocalizations.of(context).getText(
                    '220dp5y9' /* Alabama */,
                  ),
                  FFLocalizations.of(context).getText(
                    'xdu5kw17' /* Alaska */,
                  ),
                  FFLocalizations.of(context).getText(
                    'g4tu99a2' /* Arizona */,
                  ),
                  FFLocalizations.of(context).getText(
                    'pgk5pgrj' /* Arkansas */,
                  ),
                  FFLocalizations.of(context).getText(
                    'lcrtg28n' /* California */,
                  ),
                  FFLocalizations.of(context).getText(
                    '31zj6f7a' /* Colorado */,
                  ),
                  FFLocalizations.of(context).getText(
                    '4iltgnqk' /* Connecticut */,
                  ),
                  FFLocalizations.of(context).getText(
                    '1yjxxlke' /* Delaware */,
                  ),
                  FFLocalizations.of(context).getText(
                    'cwprltc6' /* Florida */,
                  ),
                  FFLocalizations.of(context).getText(
                    'be41rwq6' /* Georgia */,
                  ),
                  FFLocalizations.of(context).getText(
                    'ee4po4on' /* Hawaii */,
                  ),
                  FFLocalizations.of(context).getText(
                    'lmvinltn' /* Idaho */,
                  ),
                  FFLocalizations.of(context).getText(
                    'k7h3yg1x' /* Illinoi */,
                  ),
                  FFLocalizations.of(context).getText(
                    '4ctlute4' /* Indiana */,
                  ),
                  FFLocalizations.of(context).getText(
                    '1bry7q2y' /* Iowa */,
                  ),
                  FFLocalizations.of(context).getText(
                    'qnc9em53' /* Kansas */,
                  ),
                  FFLocalizations.of(context).getText(
                    'jorglyj5' /* Kentucky */,
                  ),
                  FFLocalizations.of(context).getText(
                    'ltt8877r' /* Louisiana */,
                  ),
                  FFLocalizations.of(context).getText(
                    'ruzej6s7' /* Maine */,
                  ),
                  FFLocalizations.of(context).getText(
                    'uh47lvfs' /* Maryland */,
                  ),
                  FFLocalizations.of(context).getText(
                    'hy81w7xl' /* Massachusetts */,
                  ),
                  FFLocalizations.of(context).getText(
                    '1gjhz7d9' /* Michigan */,
                  ),
                  FFLocalizations.of(context).getText(
                    '4l515dqh' /* Minnesota */,
                  ),
                  FFLocalizations.of(context).getText(
                    'rtwhtw2q' /* Mississippi */,
                  ),
                  FFLocalizations.of(context).getText(
                    'o08bw0tg' /* Missouri */,
                  ),
                  FFLocalizations.of(context).getText(
                    'cqt6hcce' /* Monta */,
                  ),
                  FFLocalizations.of(context).getText(
                    '6nhv6aj1' /* Nebraska */,
                  ),
                  FFLocalizations.of(context).getText(
                    'rcm42ks9' /* Nevada */,
                  ),
                  FFLocalizations.of(context).getText(
                    'k40v164j' /* New Hampshire */,
                  ),
                  FFLocalizations.of(context).getText(
                    '3gbzgxse' /* New Jersey */,
                  ),
                  FFLocalizations.of(context).getText(
                    'f3rc4fgo' /* New Mexico */,
                  ),
                  FFLocalizations.of(context).getText(
                    'r2x7y0w4' /* New York */,
                  ),
                  FFLocalizations.of(context).getText(
                    'jji50ole' /* North Carolina */,
                  ),
                  FFLocalizations.of(context).getText(
                    'bkx6htgp' /* North Dak */,
                  ),
                  FFLocalizations.of(context).getText(
                    'xcj4zscf' /* Ohio */,
                  ),
                  FFLocalizations.of(context).getText(
                    'krymbhx0' /* Oklahoma */,
                  ),
                  FFLocalizations.of(context).getText(
                    '9knfh5sp' /* Oregon */,
                  ),
                  FFLocalizations.of(context).getText(
                    'mevgeh53' /* Pennsylvani */,
                  ),
                  FFLocalizations.of(context).getText(
                    'iy7v6jps' /* Rhode Island */,
                  ),
                  FFLocalizations.of(context).getText(
                    'x9gi0t4y' /* South Caroli */,
                  ),
                  FFLocalizations.of(context).getText(
                    'hn9cz2h9' /* South Dakota */,
                  ),
                  FFLocalizations.of(context).getText(
                    'b0zx5b4z' /* Tennessee */,
                  ),
                  FFLocalizations.of(context).getText(
                    'szzk5vi6' /* Texas */,
                  ),
                  FFLocalizations.of(context).getText(
                    'tghnektn' /* Utah */,
                  ),
                  FFLocalizations.of(context).getText(
                    '6ey2jrw7' /* Vermont */,
                  ),
                  FFLocalizations.of(context).getText(
                    'as8z5pdn' /* Virginia */,
                  ),
                  FFLocalizations.of(context).getText(
                    'jkzs07m7' /* Washingto */,
                  ),
                  FFLocalizations.of(context).getText(
                    'xnpnx7jg' /* West Virginia */,
                  ),
                  FFLocalizations.of(context).getText(
                    'xq74u1z8' /* Wisconsin */,
                  ),
                  FFLocalizations.of(context).getText(
                    'mw8w5b9k' /* Wyoming */,
                  )
                ],
                onChanged: (val) => setState(() => _model.stateValue = val),
                width: double.infinity,
                height: 56.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                hintText: FFLocalizations.of(context).getText(
                  'mvjil3o4' /* Select State */,
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 15.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).lineColor,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: EdgeInsetsDirectional.fromSTEB(20.0, 4.0, 12.0, 4.0),
                hidesUnderline: true,
                isSearchable: false,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.05),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('travel');
                  },
                  text: FFLocalizations.of(context).getText(
                    'qdk8vrda' /* Save Changes */,
                  ),
                  options: FFButtonOptions(
                    width: 270.0,
                    height: 50.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
