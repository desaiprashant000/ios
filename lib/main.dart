import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(CupertinoApp(
    home: ios(),
    debugShowCheckedModeBanner: false,
  ));
}

class ios extends StatefulWidget {
  const ios({Key? key}) : super(key: key);

  @override
  State<ios> createState() => _iosState();
}

class _iosState extends State<ios> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('ios demo'),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              CupertinoButton.filled(
                onPressed: () {
                  showCupertinoModalPopup(
                      builder: (context) {
                        return CupertinoActionSheetAction(
                          /// This parameter indicates the action would be a default
                          /// defualt behavior, turns the action's text to bold text.
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Default Action'),
                        );
                        // CupertinoActionSheetAction(
                        //   onPressed: () {
                        //     Navigator.pop(context);
                        //   },
                        //   child:  Text('Action'),
                        // ),
                        // CupertinoActionSheetAction(
                        // /// This parameter indicates the action would perform
                        // /// a destructive action such as delete or exit and turns
                        // /// the action's text color to red.
                        // isDestructiveAction: true,
                        // onPressed: () {
                        // Navigator.pop(context);
                        // },
                        // child:  Text('Destructive Action'),
                        // ),
                      },
                      context: context);
                },
                child: Text('submit'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Cupertino activity indicator with custom radius and disabled animation.
                  CupertinoActivityIndicator(radius: 20.0, animating: true),
                  SizedBox(height: 10),
                  // Text(
                  //   'radius: 20.0\nanimating: false',
                  //   textAlign: TextAlign.center,
                  // ),
                ],
              ),
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CupertinoContextMenu(
                    actions: [
                      CupertinoContextMenuAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        isDefaultAction: true,
                        trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                        child: Text('Copy'),
                      ),
                      CupertinoContextMenuAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        trailingIcon: CupertinoIcons.share,
                        child: Text('Share  '),
                      ),
                      CupertinoContextMenuAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        trailingIcon: CupertinoIcons.heart,
                        child: Text('Favorite'),
                      ),
                      CupertinoContextMenuAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        isDestructiveAction: true,
                        trailingIcon: CupertinoIcons.delete,
                        child: Text('Delete'),
                      ),
                    ],
                    child: Container(
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemYellow,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: FlutterLogo(size: 500.0),
                    ),
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
