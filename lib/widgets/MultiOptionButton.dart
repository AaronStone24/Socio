import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';

enum AnimationToPlay {
  Activate,
  Deactivate,
  CameraTapped,
  PulseTapped,
  ImageTapped
}

class MOB extends StatefulWidget{
  @override
  _MOBState createState()=> _MOBState();
}
class _MOBState extends State<MOB>{
  AnimationToPlay _animationToPlay=AnimationToPlay.Deactivate;
  String _getAnimationName(AnimationToPlay animationToPlay) {
  switch (animationToPlay) {
    case AnimationToPlay.Activate:
      return 'activate';
    case AnimationToPlay.Deactivate:
      return 'deactivate';
    case AnimationToPlay.CameraTapped:
      return 'camera_tapped';
    case AnimationToPlay.PulseTapped:
      return 'pulse_tapped';
    case AnimationToPlay.ImageTapped:
      return 'image_tapped';
      break;
    default:
      return 'deactivate';
  }
}
void _setAnimationToPlay(AnimationToPlay animation){
  setState((){
    _animationToPlay=animation;
  });
}
  final FlareControls animationControls=FlareControls();
  static const double AnimationWidth = 295.0/251*200;
  static const double AnimationHeight = 251.0/295*200;
  bool isOpen=false;
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      alignment: Alignment.bottomLeft,
      width: AnimationWidth,
      height: AnimationHeight,
      child: GestureDetector(
        onTapUp: (tapInfo){
          var localTouchPostition=(context.findRenderObject() as RenderBox).globalToLocal(tapInfo.globalPosition);
          var topHalfTouched=localTouchPostition.dy<AnimationHeight/2;
          var leftSideTouched=localTouchPostition.dx<AnimationHeight/3;
          var rightSideTouched=localTouchPostition.dx>(AnimationHeight/3)*2;
          var middleTouched=!leftSideTouched&&!rightSideTouched;
          if (leftSideTouched && topHalfTouched) {
            _setAnimationToPlay(AnimationToPlay.CameraTapped);
          } else if (middleTouched && topHalfTouched) {
            _setAnimationToPlay(AnimationToPlay.PulseTapped);
          } else if (rightSideTouched && topHalfTouched) {
            _setAnimationToPlay(AnimationToPlay.ImageTapped);
          } else {
              if (isOpen) {
                _setAnimationToPlay(AnimationToPlay.Deactivate);
              } else {
                _setAnimationToPlay(AnimationToPlay.Activate);
              }
              isOpen = !isOpen;
            }
        },
      child: FlareActor(
        "assets/MultiOptionButton.flr",
          alignment: Alignment.center,
          fit: BoxFit.contain,
          controller: animationControls,
          animation: _getAnimationName(_animationToPlay),
        ),
      ),
    );
  }
}