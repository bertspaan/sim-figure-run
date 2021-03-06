#wijken_labels[zoom>=14] {
  text-name:"[bu_naam]";
  text-face-name: @sans_bold;
  //text-placement: ;
  text-fill: @buurt_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance: 80;
  text-size:10;
  text-transform: uppercase;
  
  text-placement: interior;
  
  [zoom=14] {
    text-size: 10;
    text-min-distance: 70;
  }
  [zoom>=15] {
    text-size:18;
    text-min-distance: 120;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[type='motorway'][zoom>14],
#motorway_label[type='trunk'][zoom>14] {
  text-name:"[name]";
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:10;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
}

#mainroad_label[type='primary'][zoom>14],
#mainroad_label[type='secondary'][zoom>14],
#mainroad_label[type='tertiary'][zoom>15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
}

#minorroad_label[zoom>15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-size:9;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
}

/* ****************************************************************** */