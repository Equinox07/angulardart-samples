// Auto-generated from main.html.
// DO NOT EDIT.

library main_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';


// Original code

      
      const List<String> colors = const ['red', 'green', 'blue', 'orange'];
      
      final __changes = new __observe.Observable();

      String __$selectedColor = '';
      String get selectedColor {
        if (__observe.observeReads) {
          __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, 'selectedColor');
        }
        return __$selectedColor;
      }
      set selectedColor(String value) {
        if (__observe.hasObservers(__changes)) {
          __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, 'selectedColor',
              __$selectedColor, value);
        }
        __$selectedColor = value;
      }
  
      void main() {}
    
// Additional generated code
void init_autogenerated() {
  var _root = autogenerated.document.body;
  final __html0 = new autogenerated.Element.html('<option template="" repeat="color in colors"></option>'), __html1 = new autogenerated.ParagraphElement();
  var __e2, __e3, __e6;
  var __t = new autogenerated.Template(_root);
  __e3 = _root.nodes[1];
  __e2 = __e3.nodes[3];
  __t.loop(__e2, () => colors, (color, __t) {
    var __e1;
    __e1 = __html0.clone(true);
    var __binding0 = __t.contentBind(() => color, false);
    __e1.nodes.add(__binding0);
  __t.add(__e1);
  });
  __t.listen(__e3.onChange, ($event) { selectedColor = __e3.value; });
  __t.oneWayBind(() => selectedColor, (e) { if (__e3.value != e) __e3.value = e; }, false, false);
  __e6 = _root.nodes[3];
  __t.conditional(__e6, () => !selectedColor.isEmpty, (__t) {
    var __e5;
    __e5 = __html1.clone(true);
    var __binding4 = __t.contentBind(() => selectedColor, false);
    __e5.nodes.addAll([new autogenerated.Text('selectedColor = '),
        __binding4]);
  __t.addAll([new autogenerated.Text('\n      '),
      __e5,
      new autogenerated.Text('\n    ')]);
  });

  __t.create();
  __t.insert();
}

//@ sourceMappingURL=main.html.dart.map