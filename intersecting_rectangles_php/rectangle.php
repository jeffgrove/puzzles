<?php

class Point {
  public $x = null;
  public $y = null;

  public function __construct(int $x, int $y) {
    $this->x = $x;
    $this->y = $y;
  }
}

class Rectangle {
  public $lowerLeft;
  public $upperRight;

  public function __construct(Point $lowerLeft, Point $upperRight) {
    $this->lowerLeft = $lowerLeft;
    $this->upperRight = $upperRight;
  }

  public static function getOverlappingRectangle(Rectangle $r1, Rectangle $r2) {
    $dummyRect = new Rectangle(new Point(0, 0), new Point(1, 1))

    return $dummyRect;
  }
}

