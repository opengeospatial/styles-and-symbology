# Shapes

```mermaid
  classDiagram
  %% Class definition
    class Shape {
        stroke: Stroke [0..1]
    }
    class ClosedShape {
        fill: Fill [0..1]
    }
    class Dot {
        point: Pointf
    }
    class Rectangle {
       topLeft: Pointf
       bottomRight: Pointf
    }
    class RoundedRectangle {
        rx: float
        ry: float
    }
    class Circle {
        center: Pointf
        radius: float
    }
    class Ellipse {
        center: Pointf
        radiusX: float
        radiusY: float
    }
    class ClosedArcType {
       <<enumeration>>
       sector
       chord
    }

    class ClosedArc {
        type: ClosedArcType
    }

    class Arc {
        center: Pointf
        radius: float
        innerRadius: float
        startAngle: Angle
        deltaAngle: Angle
    }
    class PathNodes {
       points: Pointf[*]
    }
    class ClosedPath {
        innerNodes: PathNodes[0..*]
    }

    class Path {
        nodes: PathNodes
    }
    class Pointf {
        x: float
        y: float
    }

  %% Relations
  %% Inheritance
  Dot --|> Shape
  Shape --|> Graphic
  Rectangle --|> ClosedShape
  Circle --|> ClosedShape
  Ellipse --|>Closed Shape
  Arc --|> Shape
  ClosedArc --|> Arc
  ClosedArc --|> ClosedShape
  Path --|> Shape
  RoundedRectangle --|> Rectangle
  ClosedPath --|> Path
  ClosedPath --|> ClosedShape
  ClosedShape --|> Shape

  %% Composition
  PathNodes --* Pointf
  ClosedPath --* PathNodes
  Path --* PathNodes
  Dot --* Pointf
  Circle --* Pointf
  Ellipse --* Pointf
  Rectangle --* Pointf
  Arc --* Pointf
  ClosedArc --* ClosedArcType
  ClosedShape --* Fill
  Shape --* Stroke

  %% Aggregation

```
