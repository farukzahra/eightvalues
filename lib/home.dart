import 'package:flutter/material.dart';
import 'dart:io';

import './utils.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          title: const Text('8values'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: new Image.asset('images/eternify.png'),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Sobre'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed('/home');
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sair'),
                onTap: () {
                  exit(0);
                },
              )
            ],
          ),
        ),
        body: new Center(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              'images/eternify.png',
              width: 341.0,
              height: 133.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            //new Text('www.eternify.com.br'),
            _buildTap(context)
          ],
        )));
  }

  Widget _buildTap(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("onTap called.");
        final flutterWebviewPlugin = new FlutterWebviewPlugin();
        flutterWebviewPlugin.launch('http://www.raph.com.br/8values/index.html');

        ///Navigator.push(context, routeWebView('http://www.raph.com.br/8values/index.html'));
      },
      child: new Text('[Fazer o teste]',
          style: TextStyle(decoration: TextDecoration.underline)),
    );
  }
}
