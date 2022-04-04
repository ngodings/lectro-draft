import 'package:flutter/material.dart';

class WidgetHideShowExample extends StatefulWidget {
  const WidgetHideShowExample({Key? key}) : super(key: key);

  @override
  _WidgetHideShowExampleState createState() {
    return _WidgetHideShowExampleState();
  }
}

class _WidgetHideShowExampleState extends State {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visibility Widget',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Visibility Widget'),
          ),
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('Show/Hide Image Card'),
                  onPressed: showToast,
                ),
                Card(
                  child: new ListTile(
                    title: Center(
                      child: new Text('Card One'),
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible,
                  child: Card(
                    child: new ListTile(
                      title: Center(
                        child: Image.network(
                          "https://images.squarespace-cdn.com/content/v1/570459e701dbae8f24d0adf4/1485252322996-298AKOT1F6PSUM0PEMV3/ke17ZwdGBToddI8pDm48kJcninMfh5YbUqtSt15etf1Zw-zPPgdn4jUwVcJE1ZvWEtT5uBSRWt4vQZAgTJucoTqqXjS3CfNDSuuf31e0tVHL5HAQmxiMirwGMFDg56p-Tw1ZzCaJSatlMnbBgc-V5FtO8nJtk629tZGIWiyY3XQ/image-asset.png",
                          width: double.infinity,
                          height: 220,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: new ListTile(
                    title: Center(
                      child: new Text('Card Three'),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
