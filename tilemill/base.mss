Map {   
  background-color: black; 
}

#wijken {
  /*polygon-fill: black;
  polygon-opacity: 0.5;*/
}

#wijken::blur {
  line-color: lighten(@blue, 60%);
  line-width: 3;
  image-filters: agg-stack-blur(3, 3);
  line-join: round;
  line-opacity: 0.3;
}

#wijken::outline {
  line-color: @blue;
  line-width: 1;
  line-join: round;
  line-opacity: 0.6;
}

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land[zoom>=0][zoom<6],
#shoreline_300[zoom>=6][zoom<10],
#processed_p[zoom>=10] {
  /*polygon-fill: @land;
  polygon-gamma: 0.85;*/
  
  polygon-pattern-file: url("pattern.png");
  polygon-pattern-opacity: 0.2;  
}

/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

@water:             rgb(20, 20, 20);

#water_gen0[zoom>3][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  polygon-fill: @water; 
}

#water[zoom>12] {
  line-color: darken(@water,1%);
  line-width: 0.5; 
}

/* ================================================================== */
/* WATER WAYS
/* ================================================================== */

#waterway_low[zoom>=8][zoom<=12] {
  line-color: @water;
  [zoom=8] { line-width: 0.1; }
  [zoom=9] { line-width: 0.2; }
  [zoom=10]{ line-width: 0.4; }
  [zoom=11]{ line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
}

#waterway_med[zoom>=13][zoom<=14] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1; }
    [zoom=14]{ line-width: 1.5; }
  }
  [type='stream'] {
    [zoom=13]{ line-width: 0.2; }
    [zoom=14]{ line-width: 0.4; }
  }
}
  
#waterway_high[zoom>=15] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=15]{ line-width: 2; }
    [zoom=16]{ line-width: 3; }
    [zoom=17]{ line-width: 4; }
    [zoom=18]{ line-width: 5; }
    [zoom=19]{ line-width: 6; }
    [zoom>19]{ line-width: 7; }
  }
  [type='stream'] {
    [zoom=15]{ line-width: 0.6; }
    [zoom=16]{ line-width: 0.8; }
    [zoom=17]{ line-width: 1; }
    [zoom=18]{ line-width: 1.5; }
    [zoom>18]{ line-width: 2; }
  }
  [type='ditch'],
  [type='drain'] {
    [zoom=15]{ line-width: 0.1; }
    [zoom=16]{ line-width: 0.3; }
    [zoom=17]{ line-width: 0.5; }
    [zoom=18]{ line-width: 0.7; }
    [zoom=19]{ line-width: 1; }
    [zoom>19]{ line-width: 1.5; }
  }
}
