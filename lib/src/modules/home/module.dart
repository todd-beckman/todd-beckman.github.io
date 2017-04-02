import 'package:w_module/w_module.dart';

import 'actions.dart';
import 'store.dart';
import 'components/home_content.dart';

class HomeModule extends Module {

  @override
  HomeEvents get events => _events;
  HomeEvents _events;

  @override
  HomeComponents get components => _components;
  HomeComponents _components;

  HomeActions _actions;
  HomeStore _store;

  HomeModule() {
    _actions = new HomeActions();
    _events = new HomeEvents();

    _store = new HomeStore(events: _events);

    _components = new HomeComponents();
  }
}

class HomeEvents {

}

class HomeComponents extends ModuleComponents {
  HomeActions _actions;
  HomeStore _store;
  HomeComponents({HomeActions actions, HomeStore store})
      : _actions = actions, _store = store;

  @override
  content() => (Home()
    ..content = "hi")();
}
