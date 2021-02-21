import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {

  AnimationController controller;
  Animation<double> width;
  Animation<double> height;
  Animation<double> opacity;
  Animation<double> radius;

  AnimatedButton({@required this.controller}) :

        width = Tween<double>(
      begin: 0,
      end: 500
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.5, 1
      )
    )),

        height = Tween<double>(
        begin: 0,
        end: 50
    ).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(
            0.5, 0.7
        )
    )),

    radius = Tween<double>(
        begin: 0,
        end: 20
    ).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(
            0.6, 1
        )
    )),

        opacity = Tween<double>(
        begin: 0,
        end: 1
    ).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(
            0.6, 0.8
        )
    ))

  ;

  Widget _buildAnimation(BuildContext context, Widget widget){
    return InkWell(
      onTap: (){

      },
      child: Container(
        height: width.value,
        width: height.value,
        child: Center(
          child: FadeTransition(
            opacity: opacity,
            child: Text("Login", style: TextStyle(
                color: Colors.white, fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius.value),
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 100, 127, 1),
                  Color.fromRGBO(255, 123, 145, 1),
                ]
            )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: this.controller,
      builder: _buildAnimation,
    );
  }
}