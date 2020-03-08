import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ...

class FadButton extends StatefulWidget {
  const FadButton({Key key, this.onPressed, this.child}) : super(key: key);

  final VoidCallback onPressed;
  final Widget child;

  @override
  _FadButtonState createState() => _FadButtonState();
}

class _FadButtonState extends State<FadButton> {
  bool _focused = false;
  bool _hovering = false;
  bool _on = false;
  Map<LocalKey, ActionFactory> _actionMap;
  Map<LogicalKeySet, Intent> _shortcutMap;

  @override
  void initState() {
    super.initState();
    _actionMap = <LocalKey, ActionFactory>{
      ActivateAction.key: () {
        return CallbackAction(
          ActivateAction.key,
          onInvoke: (FocusNode node, Intent intent) => _toggleState(),
        );
      },
    };
    _shortcutMap = <LogicalKeySet, Intent>{
      LogicalKeySet(LogicalKeyboardKey.keyX): Intent(ActivateAction.key),
    };
  }

  Color get color {
    Color baseColor = Colors.lightBlue;
    if (_focused) {
      baseColor = Color.alphaBlend(Colors.black.withOpacity(0.25), baseColor);
    }
    if (_hovering) {
      baseColor = Color.alphaBlend(Colors.black.withOpacity(0.1), baseColor);
    }
    return baseColor;
  }

  void _toggleState() {
    setState(() {
      _on = !_on;
    });
  }

  void _handleFocusHighlight(bool value) {
    setState(() {
      _focused = value;
    });
  }

  void _handleHoveHighlight(bool value) {
    setState(() {
      _hovering = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleState,
      child: FocusableActionDetector(
        actions: _actionMap,
        shortcuts: _shortcutMap,
        onShowFocusHighlight: _handleFocusHighlight,
        onShowHoverHighlight: _handleHoveHighlight,
        child: Row(
          children: <Widget>[
            Container(
              width: 70,
              height: 70,
              padding: EdgeInsets.all(10.0),
              color: color,
              child: widget.child,
            ),
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.all(10.0),
              color: _on ? Colors.red : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}


