import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:provider/provider.dart';
import 'package:tok/tok_bloc.dart';

typedef void OnError(Exception exception);

enum PlayerState { stopped, playing, paused }

class SoundPlayer extends StatefulWidget {

  SoundPlayer({Key key,}) : super(key: key);

  @override
  _SoundPlayerState createState() => _SoundPlayerState();
}

class _SoundPlayerState extends State<SoundPlayer> {
  Duration _duration;
  Duration _position;

  AudioPlayer _audioPlayer;
  PlayerState _playerState = PlayerState.stopped;
  StreamSubscription _positionSubscription;
  StreamSubscription _audioPlayerStateSubscription;

  get isPlaying => _playerState == PlayerState.playing;

  get isPaused => _playerState == PlayerState.paused;

  get durationText =>
      _duration != null ? _duration.toString().split('.').first : '';

  get positionText =>
      _position != null ? _position.toString().split('.').first : '';

  @override
  void initState() {
    super.initState();
    initApp();
    initAudioPlayer();

  }

  @override
  void dispose() {
    _positionSubscription.cancel();
    _audioPlayerStateSubscription.cancel();
    _audioPlayer.stop();
    super.dispose();

  }

  void initApp() {
    //setResourceData();

    _audioPlayer = AudioPlayer();
    //_videoPlayer = YoutubePlayer(source: widget.resources[0].url);
    _duration = Duration();
    _position = Duration();
  }

  void _testThis(p){

    setState(() {
      _position = p;
    });


  }

  void initAudioPlayer() {
    _audioPlayer = AudioPlayer();
    _positionSubscription = _audioPlayer.onAudioPositionChanged
        .listen((p) => _testThis(p));


    _audioPlayerStateSubscription =
        _audioPlayer.onPlayerStateChanged.listen((s) {
      if (s == AudioPlayerState.PLAYING) {
        setState(() => _duration = _audioPlayer.duration);
      } else if (s == AudioPlayerState.STOPPED) {
        onComplete();
        setState(() {
          _position = _duration;
        });
      }
    }, onError: (msg) {
      setState(() {
        _playerState = PlayerState.stopped;
        _duration = Duration();
        _position = Duration();
      });
    });
  }

  void onComplete() {
    setState(() => _playerState = PlayerState.stopped);
  }

  Future play(resource) async {
    await _audioPlayer.play(resource.url);
    setState(() {
      _playerState = PlayerState.playing;
    });
  }

  Future pause() async {
    await _audioPlayer.pause();
    setState(() => _playerState = PlayerState.paused);
  }

  Future stop() async {
    await _audioPlayer.stop();
    setState(() {
      _playerState = PlayerState.stopped;
      _position = Duration();
      _duration = Duration();
    });
  }

  @override
  Widget build(BuildContext context) {
    final tokBloc = Provider.of<TokBloc>(context);


    return Container(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            !isPlaying || _position.inMilliseconds < 10
                ? IconButton(
                    onPressed:
                    isPlaying ? null : () => play(tokBloc.currentResource),
                    iconSize: 64.0,
                    icon: Icon(Icons.play_arrow),
                    color: Colors.cyan)
                : IconButton(
                    onPressed: isPlaying ? () => pause() : null,
                    iconSize: 64.0,
                    icon: Icon(Icons.pause),
                    color: Colors.cyan),
            Container(
              child: _position.inMilliseconds == 0
                  ? !isPlaying
                      ? Container(height: 50)
                      : CircularProgressIndicator()
                  : Slider(
                      value: _position?.inMilliseconds?.toDouble() ?? 0.0,
                      onChanged: (double value) =>
                          _audioPlayer.seek((value / 1000).roundToDouble()),
                      min: 0.0,
                      max: _duration.inMilliseconds.toDouble()),
            ),
            Row(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Stack(children: [
                    CircularProgressIndicator(
                        value: 1.0,
                        valueColor: AlwaysStoppedAnimation(Colors.grey[300])),
                    CircularProgressIndicator(
                      value: _position != null && _position.inMilliseconds > 0
                          ? (_position?.inMilliseconds?.toDouble() ?? 0.0) /
                              (_duration?.inMilliseconds?.toDouble() ?? 0.0)
                          : 0.0,
                      valueColor: AlwaysStoppedAnimation(Colors.cyan),
                      backgroundColor: Colors.yellow,
                    ),
                  ])),
              Text(
                  _position != null
                      ? "${positionText ?? ''} / ${durationText ?? ''}"
                      : _duration != null ? durationText : '',
                  style: TextStyle(fontSize: 24.0))
            ])
          ]),
        ));
  }
}
