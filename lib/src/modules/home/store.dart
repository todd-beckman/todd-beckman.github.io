import 'package:w_flux/w_flux.dart';

import 'actions.dart';
import 'module.dart';

class HomeStore extends Store {
  final HomeActions actions;
  final HomeEvents events;

  HomeStore({
    HomeEvents this.events,
    HomeActions this.actions}) {

  }
}
