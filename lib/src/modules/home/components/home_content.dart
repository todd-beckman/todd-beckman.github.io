import 'package:over_react/over_react.dart';
import '../actions.dart';
import '../store.dart';

@Factory()
UiFactory<HomeProps> Home;

@Props()
class HomeProps extends FluxUiProps<HomeActions, HomeStore> {
  String content;
}

@Component()
class HomeComponent extends FluxUiComponent<HomeProps> {
  @override
  render() {
    return (Dom.div()
      ..style = {
        "color": "red",
      })(props.content);
  }
}
