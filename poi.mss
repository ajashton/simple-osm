/*#poi[zoom > 14] {
  [amenity > ''] {
    marker-fill: @amenity_fill;
    marker-line-color: @amenity_line;
  }
  [historic > ''] {
    marker-fill: @historic_fill;
    marker-line-color: @historic_line;
  }
  [leisure > ''] {
    marker-fill: @leisure_fill;
    marker-line-color: @leisure_line;
  }
  [shop > ''] {
    marker-fill: @shop_fill;
    marker-line-color: @shop_line;
  }
  [tourism > ''] {
    marker-fill: @tourism_fill;
    marker-line-color: @tourism_line;
  }
  [zoom=15] {
    marker-width: 2;
    marker-line-width: 0.5;
  }
  [zoom=16] {
    marker-width: 3;
    marker-line-width: 1.0;
  }
  [zoom=17] {
    marker-width: 4;
    marker-line-width: 1.5;
  }
  [zoom=18] {
    marker-width: 5;
    marker-line-width: 2.0;
  }
}*/

#poi[zoom > 14] {
  [amenity > '']  { marker-fill: @amenity_line; }
  [historic > ''] { marker-fill: @historic_line; }
  [leisure > '']  { marker-fill: @leisure_line; }
  [shop > '']     { marker-fill: @shop_line; }
  [tourism > '']  { marker-fill: @tourism_line; }
  marker-line-color: @land_fill;
  [zoom=15] {
    marker-width: 2;
    marker-line-width: 1;
  }
  [zoom=16] {
    marker-width: 4;
    marker-line-width: 1.5;
  }
  [zoom=17] {
    marker-width: 6;
    marker-line-width: 2.0;
  }
  [zoom=18] {
    marker-width: 8;
    marker-line-width: 2.5;
  }
}