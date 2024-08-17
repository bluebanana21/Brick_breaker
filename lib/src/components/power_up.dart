import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';

import '../brick_breaker.dart';
import '../config.dart';

class PowerUp extends CircleComponent
    with CollisionCallbacks, HasGameReference<BrickBreaker> {
  PowerUp({required super.position, })
      : super(
          scale: Vector2(brickWidth-0.5, brickHeight-0.5),
          anchor: Anchor.center,
          paint: Paint()
          ..color = const Color.fromRGBO(100, 255, 255, 100)
            ..style = PaintingStyle.fill,
          children: [RectangleHitbox()],
        );

  @override
  void onCollisionStart(
      Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollisionStart(intersectionPoints, other);
    removeFromParent();

    
  }
}
