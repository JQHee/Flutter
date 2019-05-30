import 'package:flutter/material.dart';

enum SearchBarType {
  home,
  normal,
  homeLight
}

class SearchBar extends StatefulWidget {

  final bool enabled;
  final bool hideLeft;
  final bool autofocus;
  final SearchBarType searchBarType;
  final String hint; //默认提示文案
  final String defaultText;
  final void Function() leftButtonClick;
  final void Function() rightButtonClick;
  final void Function() speakClick;
  final void Function() inputBoxClick;
  final ValueChanged<String> onChanged;

  const SearchBar({Key key, this.enabled, this.hideLeft, this.autofocus, this.searchBarType, this.hint, this.defaultText, this.leftButtonClick, this.rightButtonClick, this.speakClick, this.inputBoxClick, this.onChanged}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchBarState();
  }
  
}

class _SearchBarState extends State<SearchBar> {

  bool showClear = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    if (widget.defaultText == null) {
      _controller.text = widget.defaultText;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  Widget get _genNormalSearch {
    return Container(
      child: <Widget>[
        
      ],
    );
  }

}