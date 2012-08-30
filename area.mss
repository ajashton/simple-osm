Map {
  background-color: @land_fill;
}

#ocean_ne[zoom <= 6],
#ocean[zoom > 6],
#water_poly[zoom = 6][way_area > 16000000],
#water_poly[zoom = 7][way_area > 4000000],
#water_poly[zoom = 8][way_area > 1000000],
#water_poly[zoom = 9][way_area > 250000],
#water_poly[zoom = 10][way_area > 12500],
#water_poly[zoom = 11][way_area > 3125],
#water_poly[zoom > 11][way_area > 0] {
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

#area[zoom > 6] {
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