public class Point {
    public int _x;
    public int _y;

    public Point(int x, int y) {
        _x = x;
        _y = y;
    }
}

public class Rectangle {
    public Point _lowerLeft;
    public Point _upperRight;

    public Rectangle(Point lowerLeft, Point upperRight) {
        _lowerLeft = lowerLeft;
        _upperRight = upperRight;
    }

    public static getOverlappingRectangle(Rectangle r1, Rectangle r2) {
        
    }
}