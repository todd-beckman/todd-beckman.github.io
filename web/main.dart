import 'dart:html';
//import 'package:react/react.dart' as react;
import 'package:react/react_dom.dart' as react_dom;
import 'package:react/react_client.dart' as react_client;
//import 'package:over_react/over_react.dart';

import 'package:myghpage/home.dart';

main() {
  react_client.setClientConfiguration();

  var homeModule = new HomeModule();
  react_dom.render(homeModule.components.content(), querySelector('#body'));
}
