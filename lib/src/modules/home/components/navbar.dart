import 'package:over_react/over_react.dart';

@Factory()
UiFactory<NavBarProps> NavBar;

@Props()
class NavBarProps extends UiProps {}

@Component()
class NavBarComponent extends UiComponent {
  @override
  render() {
    var menuItems = {
      'Home': '',
    };

    var menuComponents = [];
    menuItems.forEach((k, v) {
      menuComponents.add((Dom.div()
        ..key = k
        ..className = 'navbar-$k')(
        (Dom.a()..href = v)(
          k,
        ),
      ));
    });

    return (Dom.div()..className = 'navbar')(menuComponents);
  }
}
