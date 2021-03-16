import 'package:tsla/ui/utils/util.dart';
// import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import 'size_config.dart';
import 'style.dart';

class Dialogs {
  static void showFlushBar(BuildContext context, String message,
      {String type = 'danger'}) {
    var bgColor;
    switch (type) {
      case 'danger':
        bgColor = Style.redColor;
        break;
      case 'success':
        bgColor = Style.labelColor;
        break;
      case 'warning':
        bgColor = Style.labelColor;
        break;
      default:
    }
    // Flushbar(
    //   backgroundColor: bgColor,
    //   message: message,
    //   // titleText: Text('data'),
    //   // messageText: Text('messageText'),
    //   // overlayColor: Style.primaryColor,
    //   margin: EdgeInsets.all(12),
    //   borderRadius: 8,
    //   duration: Duration(seconds: 3),
    // )..show(context);
  }

  static void showDialg(
      BuildContext context, String button, Widget body, Function ontap) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.all(0),
              content: Container(
                decoration: Style.cardDecoration,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(
                              Icons.highlight_off,
                            ),
                            color: Style.primaryColor,
                          )),
                      body,
                      button != ''
                          ? InkWell(
                              onTap: ontap,
                              child: Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                      vertical: SizeConfig.paddingVertical),
                                  decoration: BoxDecoration(
                                    color: Style.primaryColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    button,
                                    style: Style.labelTextStyle.copyWith(
                                        color: Style.placeHolderColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ));
  }

  static void showConfiramtionDialg(BuildContext context, String message,
      {Function onTapYes, onTapNo, String yes, no}) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.all(0),
              content: Container(
                decoration:
                    Style.cardDecoration.copyWith(color: Style.grayColor),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.paddingVertical * 2,
                          horizontal: SizeConfig.paddingVertical,
                        ),
                        child: Text(
                          '$message',
                          textAlign: TextAlign.center,
                          style: Style.defaultTextStyle,
                        )),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Style.primaryColor, width: 1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: onTapNo != null
                                  ? onTapNo
                                  : () => Navigator.of(context).pop(),
                              child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      vertical: SizeConfig.paddingVertical,
                                      horizontal:
                                          SizeConfig.paddingHorizontal * 2),
                                  decoration: BoxDecoration(
                                    color: Style.primaryColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    no != null
                                        ? '$no'
                                        : AppLocalizations.of(context)
                                            .translate('NO'),
                                    style: Style.defaultTextStyle.copyWith(
                                      color: Style.darkColor,
                                    ),
                                  )),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: onTapYes != null
                                  ? onTapYes
                                  : () => Navigator.of(context).pop(),
                              child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      vertical: SizeConfig.paddingVertical,
                                      horizontal:
                                          SizeConfig.paddingHorizontal * 2),
                                  decoration: BoxDecoration(
                                    color: Style.grayColor,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    yes != null
                                        ? '$yes'
                                        : AppLocalizations.of(context)
                                            .translate('YES'),
                                    style: Style.defaultTextStyle.copyWith(
                                      color: Style.darkColor,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
