#rail[zoom > 7] {
  ::line {
    line-color: #c8beb7;
    [zoom > 7]  { line-width: 0.4; }
    [zoom > 9]  { line-width: 0.6; }
    [zoom > 11] { line-width: 0.8; }
    [zoom > 13] { line-width: 1.0; }
    [zoom > 15] { line-width: 1.2; }
    [zoom > 17] { line-width: 1.4; }
  }
  ::dash[zoom > 11] {
    line-color: #c8beb7;
    line-dasharray: 1,19;
    [zoom > 11] { line-width: 2; }
    [zoom > 13] { line-width: 2.5; }
    [zoom > 15] { line-width: 3; }
    [zoom > 17] { line-width: 4; }
  }
}

#hwy[zoom > 5] {
  line-color: #9393ac;
  line-width: 0;
  line-join: round;
  line-cap: square;
  // Fade out limited-access roads
  [access = 'delivery'],
  [access = 'destination'],
  [access = 'emergency'],
  [access = 'no'],
  [access = 'private'] {
    line-opacity: 0.5;
  }
  // Dash styles
  [highway = 'pedestrian'],
  [highway = 'track'],
  [highway = 'path'],
  [highway = 'footway'],
  [highway = 'cycleway'],
  [highway = 'bridleway'] {
    line-cap: butt;
  }
  [highway = 'pedestrian'] {
    line-dasharray: 10,2;
  }
  [highway = 'track'] {
    line-dasharray: 8,2;
  }
  [highway = 'path'] {
    line-dasharray: 6,4;
  }
  [highway = 'footway'],
  [highway = 'cycleway'],
  [highway = 'bridleway'] {
    line-dasharray: 2,2;
  }
  // Widths
  [highway = 'motorway'] {
    //line-color: #1c1c24;
    [zoom = 6]  { line-width: 0.5; }
    [zoom = 7]  { line-width: 1.0; }
    [zoom = 8]  { line-width: 1.5; }
    [zoom = 9]  { line-width: 2.0; }
    [zoom = 10] { line-width: 2.5; }
    [zoom = 11] { line-width: 3.0; }
    [zoom = 12] { line-width: 3.5; }
    [zoom = 13] { line-width: 4.0; }
    [zoom = 14] { line-width: 4.5; }
    [zoom = 15] { line-width: 5.0; }
    [zoom = 16] { line-width: 5.5; }
    [zoom = 17] { line-width: 6.0; }
    [zoom = 18] { line-width: 6.5; }
  }
  [highway = 'trunk'] {
    //line-color: #373748;
    [zoom = 7]  { line-width: 0.5; }
    [zoom = 8]  { line-width: 1.0; }
    [zoom = 9]  { line-width: 1.5; }
    [zoom = 10] { line-width: 2.0; }
    [zoom = 11] { line-width: 2.5; }
    [zoom = 12] { line-width: 3.0; }
    [zoom = 13] { line-width: 3.5; }
    [zoom = 14] { line-width: 4.0; }
    [zoom = 15] { line-width: 4.5; }
    [zoom = 16] { line-width: 5.0; }
    [zoom = 17] { line-width: 5.5; }
    [zoom = 18] { line-width: 6.0; }
  }
  [highway = 'primary'] {
    //line-color: #53536c;
    [zoom = 8]  { line-width: 0.5; }
    [zoom = 9]  { line-width: 1.0; }
    [zoom = 10] { line-width: 1.5; }
    [zoom = 11] { line-width: 2.0; }
    [zoom = 12] { line-width: 2.5; }
    [zoom = 13] { line-width: 3.0; }
    [zoom = 14] { line-width: 3.5; }
    [zoom = 15] { line-width: 4.0; }
    [zoom = 16] { line-width: 4.5; }
    [zoom = 17] { line-width: 5.0; }
    [zoom = 18] { line-width: 5.5; }
  }
  [highway = 'motorway_link'],
  [highway = 'trunk_link'],
  [highway = 'secondary'] {
    //line-color: #6f6f91;
    [zoom = 9]  { line-width: 0.5; }
    [zoom = 10] { line-width: 1.0; }
    [zoom = 11] { line-width: 1.5; }
    [zoom = 12] { line-width: 2.0; }
    [zoom = 13] { line-width: 2.5; }
    [zoom = 14] { line-width: 3.0; }
    [zoom = 15] { line-width: 3.5; }
    [zoom = 16] { line-width: 4.0; }
    [zoom = 17] { line-width: 4.5; }
    [zoom = 18] { line-width: 5.0; }
  }
  [highway = 'primary_link'],
  [highway = 'secondary_link'],
  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    //line-color: #1c1c24;
    [zoom = 11] { line-width: 0.5; }
    [zoom = 12] { line-width: 1.0; }
    [zoom = 13] { line-width: 1.5; }
    [zoom = 14] { line-width: 2.0; }
    [zoom = 15] { line-width: 2.5; }
    [zoom = 16] { line-width: 3.0; }
    [zoom = 17] { line-width: 3.5; }
    [zoom = 18] { line-width: 4.0; }
  }
  [highway = 'road'],
  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'living_street'],
  [highway = 'pedestrian'] {
    [zoom = 12] { line-width: 0.5; }
    [zoom = 13] { line-width: 1.0; }
    [zoom = 14] { line-width: 1.5; }
    [zoom = 15] { line-width: 2.0; }
    [zoom = 16] { line-width: 2.5; }
    [zoom = 17] { line-width: 3.0; }
    [zoom = 18] { line-width: 3.5; }
  }
  [highway = 'service'],
  [highway = 'track'],
  [highway = 'path'],
  [highway = 'footway'],
  [highway = 'cycleway' ]{
    [zoom = 14] { line-width: 0.4; }
    [zoom = 15] { line-width: 0.8; }
    [zoom = 16] { line-width: 1.2; }
    [zoom = 17] { line-width: 1.6; }
    [zoom = 18] { line-width: 2.0; }
  }
}