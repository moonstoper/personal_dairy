import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:objectbox/objectbox.dart';
// import 'objectbox.g.dart';

class EditDairy extends StatefulWidget {
  static final String routeName = "/dairyEdit";
  EditDairy({Key key}) : super(key: key);
  @override
  _EditDairyState createState() => _EditDairyState();
}

class _EditDairyState extends State<EditDairy> {
  // Store _store;
  @override
  // @override
  void initState() {
    super.initState();
    // openStore().then((Store store) {
    //   _store = store;
    // });
  }

  @override
  void dispose() {
    // _store?.close();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black87, size: 10),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.cancel_sharp),
              // color:Colors.white,
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(
          // fit: StackFit.expand,
          // alignment: AlignmentDirectional.topCenter,
          // fit: StackFit.passthrough,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Title',
                    border: InputBorder.none,
                    counterText: ""),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                maxLength: 30,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Your memories....',
                      border: InputBorder.none),
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  focusNode: FocusNode(
                      canRequestFocus: true, descendantsAreFocusable: true),
                  autocorrect: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
