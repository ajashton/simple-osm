Map {
  background-color: @land_fill;
}

#ocean_ne[zoom <= 6],
#ocean[zoom > 6],
#water_poly[zoom > 6] {
  ::line {
    line-color: #afdde9;
    [zoom=15] { line-width: 1.5; }
    [zoom=16] { line-width: 2.0; }
    [zoom=17] { line-width: 2.5; }
    [zoom=18] { line-width: 3.0; }
  }
  // #d7eef4
  // TODO: filter by area/zoom level
  polygon-pattern-file: url(img/water3.png);
  polygon-pattern-alignment: global;
}

#area {
  [amenity > '']  { polygon-fill: @amenity_fill; }
  [historic > ''] { polygon-fill: @historic_fill; }
  [leisure > '']  { polygon-fill: @leisure_fill; }
  [shop > '']     { polygon-fill: @shop_fill; }
  [tourism > '']  { polygon-fill: @tourism_fill; }
  [zoom>14] {
    [amenity > '']  { line-color: @amenity_line; }
    [historic > ''] { line-color: @historic_line; }
    [leisure > '']  { line-color: @leisure_line; }
    [shop > '']     { line-color: @shop_line; }
    [tourism > '']  { line-color: @tourism_line; }
    [zoom=15] { line-width: 0.2; }
    [zoom=16] { line-width: 0.4; }
    [zoom=17] { line-width: 0.8; }
    [zoom=18] { line-width: 1.2; }
  }
}

#bldg[zoom > 10] {
  [building > ''][zoom > 14] {
    polygon-pattern-alignment: global;
    polygon-pattern-file: url(img/bldg.png);
    [zoom = 15] { polygon-pattern-file: url(img/bldg2.png); }
  }
  [man_made > ''][zoom > 14] {
    polygon-pattern-alignment: global;
    polygon-pattern-file: url(img/mm.png);
    [zoom = 15] { polygon-pattern-file: url(img/mm2.png); }
  }
  [zoom>14] { line-color: #c83737; }
  [zoom=15] { line-width: 0.2; }
  [zoom=16] { line-width: 0.4; }
  [zoom=17] { line-width: 1.0; }
  [zoom=18] { line-width: 1.2; }
}