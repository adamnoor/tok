
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:tok/data_src.dart';
import 'package:youtube_player/youtube_player.dart';

typedef void OnError(Exception exception);

enum PlayerState { stopped, playing, paused }

class TokBloc with ChangeNotifier {
  final List<Resource> _resourceList = mockData;

  List<Resource> _filteredResources = mockData;
  InnerDrawerAnimation _animationType = InnerDrawerAnimation.static;
  bool _onTapToClose = false;
  bool _drawerPosition = true;
  bool _swipe = true;
  double _offset = 0.4;
  List<String> _topicList = [];
  List<FormBuilderFieldOption> _fieldItemList;
  Resource _currentResource = mockData[0];
  VideoPlayerController _controller;
  String _playerStatus = "";
  String _errorCode = '0';


  bool get onTapToClose => _onTapToClose;

  bool get drawerPosition => _drawerPosition;

  bool get swipe => _swipe;

  double get offset => _offset;

  List<String> get topicList => _topicList;

  List<FormBuilderFieldOption> get fieldItemList => _fieldItemList;

  Resource get currentResource => _currentResource;

  List<Resource> get resourceList => _resourceList;

  List<Resource> get filteredResources => _filteredResources;

  InnerDrawerAnimation get animationType => _animationType;

  VideoPlayerController get controller => _controller;

  String get playerStatus => _playerStatus;

  String get errorCode => _errorCode;


  void setController(controller) {
    _controller = controller;
    notifyListeners();
  }

  void setCurrentResource(resource) {
    if (_currentResource != resource) {
      if (_currentResource.type == "Video") {
        _controller.pause();
      }
      _currentResource = resource;
      notifyListeners();
    }
  }

  List<String> createTopicsList() {
    _topicList = [];

    for (final item in _resourceList) {
      if (_topicList.contains(item.topic)) {
        //do nothing
      } else {
        _topicList.add(item.topic);
      }
    }

    return _topicList;
  }

  List<FormBuilderFieldOption> createTopicsFormList() {
    _topicList = createTopicsList();
    _fieldItemList = [];

    for (final item in _topicList) {
      _fieldItemList.add(FormBuilderFieldOption(value: item));
    }

    return _fieldItemList;
  }

  void filterList(media, topics) {
    List<Resource> _lclResources = _resourceList;
    List<Resource> _tempList = [];
    List<Resource> _finalList = [];

    for (var item in media) {
      for (var src in _lclResources) {
        if (item == src.type) {
          _tempList.add(src);
        }
      }
    }
    for (var item in topics) {
      for (var src in _tempList) {
        if (item == src.topic) {
          _finalList.add(src);
        }
      }
    }

    var distinctIds =
        _finalList.toSet().toList(); //removes accidental uploaded duplicates
    _filteredResources = distinctIds;
    _filteredResources.sort((a, b) => a.priority.compareTo(b.priority));
    notifyListeners();
  }
}
