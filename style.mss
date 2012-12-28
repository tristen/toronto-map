/*-----------------------------------
  Color Vars
------------------------------------- */
@lightgrey: #bbb;
@grey: #808080;
@darkgrey: #454440;
@water: #327385;
@grass: #7CAA64;
@rail: #db5149;
@lighterblue: #f3f9fb;
@lightblue: #ddecf0;

Map {
  font-directory: url(./fonts);
  background-color: #fff;
  }

/*-----------------------------------
  Ontario Lake
------------------------------------- */
#ontario-lake {
  polygon-fill: darken(@water, 25);
  ::texture {
    polygon-pattern-file:url(./textures/lake-pattern.png);
    }
  }

/*-----------------------------------
  Neighbourhoods
------------------------------------- */
#neighbourhoods {
  polygon-fill: @lighterblue;
  }
#neighbourhoods[HOOD='Moss Park'],
#neighbourhoods[HOOD='Bay Street Corridor'],
#neighbourhoods[HOOD='Trinity-Bellwoods'],
#neighbourhoods[HOOD='Niagara'],
#neighbourhoods[HOOD='Kensington-Chinatown'],
#neighbourhoods[HOOD='Bay Street Corridor'],
#neighbourhoods[HOOD='Church-Yonge Corridor'],
#neighbourhoods[HOOD='Waterfront Communities-The Island'] {
  polygon-fill: @lightblue;
  }

/*-----------------------------------
  Parks
------------------------------------- */
#parks-underlay {
  polygon-fill: @grass;
  line-width: 0.5;
  line-color: darken(@grass, 20);
  [zoom>13] { line-width: 1.5; }
  ::pattern[zoom>13]{
    polygon-pattern-file:url(./textures/trees.png);
    }
  }

/*-----------------------------------
  Lines: Rivers
------------------------------------- */
#underlay-lines[FCODE_DESC='Creek/Tributary'],
#underlay-lines[FCODE_DESC='River'] {
  line-color: @water;
  line-width: 0.2;
  [zoom>8] {line-width: 0.5;}
  [zoom>10] {line-width: 1;}
  [zoom>11] {line-width: 1.5;}
  [zoom>13] {line-width: 2;}
  [zoom>14] {line-width: 2.5;}
  }

/*-----------------------------------
  Lines: Roads
------------------------------------- */
#lines[FCODE_DESC='Minor Arterial'],
#lines[FCODE_DESC='Laneway'],
#lines[FCODE_DESC='Local'] {
  line-color: @lightgrey;
  line-opacity: 0.25;
  line-width: 0.1;
  [zoom>8] { line-width: 0.5; }
  [zoom>14] { 
    line-width: 2;
    line-opacity: 1;
    line-join: round;
    line-cap: round;
  }
}

/*-----------------------------------
  Lines: Expressway
------------------------------------- */
#lines::underlay[FCODE_DESC='Expressway'][zoom >= 11] {
  line-join: round;
  line-cap: square;
  line-color: @grey;
  line-width: 0.5;
  [zoom >= 13] {line-width: 1.5; }
  [zoom >= 14] { 
    line-color: @darkgrey; 
    line-width: 4; 
    }
  [zoom >= 15] { line-width: 8; }
  [zoom >= 16] { line-width: 10; }
  [zoom >= 17] { line-width: 15; }
  }
#lines[FCODE_DESC='Expressway'][zoom >= 14] {
  line-join: round;
  line-cap: square;
  line-color: @grey;
  line-width: 1;
  [zoom >= 15] { line-width: 2; }
  [zoom >= 16] { line-width: 3; }
  [zoom >= 17] { line-width: 4; }
  }
 
/*-----------------------------------
  Lines: Highways
------------------------------------- */
#underlay-lines[FCODE_DESC='Expressway Ramp'][zoom >= 11],
#underlay-lines[FCODE_DESC='Expressway Ramp'][zoom >= 11],
#underlay-lines[FCODE_DESC='Collector'][zoom >= 11],
#underlay-lines[FCODE_DESC='Collector Ramp'][zoom >= 11],
#underlay-lines[FCODE_DESC='Major Arterial'][zoom >= 11],
#underlay-lines[FCODE_DESC='Major Arterial Ramp'][zoom >= 11] {
  line-join: round;
  line-cap: round;
  line-color: @grey;
  line-width: 0.5;
  [zoom >= 13] {
    line-color: @grey;
    line-width: 1.5;
    }
   [zoom > 15] { 
    line-width: 1;
    }
  }
#underlay-lines::curb[FCODE_DESC='Expressway Ramp'][zoom >= 15],
#underlay-lines::curb[FCODE_DESC='Expressway Ramp'][zoom >= 15],
#underlay-lines::curb[FCODE_DESC='Collector'][zoom >= 15],
#underlay-lines::curb[FCODE_DESC='Collector Ramp'][zoom >= 15],
#underlay-lines::curb[FCODE_DESC='Major Arterial'][zoom >= 15],
#underlay-lines::curb[FCODE_DESC='Major Arterial Ramp'][zoom >= 15] {
  line-color: @darkgrey;
  line-width: 4;
  }

/*-----------------------------------
  Lines: Walkways
------------------------------------- */
#lines[FCODE_DESC='Walkway'][zoom>14],
#lines[FCODE_DESC='Trail'][zoom>14] {
  line-width: 0.5;
  line-dasharray: 1;
  line-color: @darkgrey;
  }

/*-----------------------------------
  Lines: Special
------------------------------------- */
#underlay-lines[FCODE_DESC='Minor Railway'],
#underlay-lines[FCODE_DESC='Major Railway'] {
  line-color: @darkgrey;
  line-width: 2;
  [zoom>13] {line-width: 4;}
  }
#lines[FCODE_DESC='Minor Railway'],
#lines[FCODE_DESC='Major Railway'] {
  line-color: #fff;
  line-width: 1;
  line-dasharray: 4,2;
  [zoom>13] {
    line-dasharray: 8,4;
    line-width: 2;
    }
  }

/*-----------------------------------
  Surrounding Area
-----------------------------------*/

/*-----------------------------------
  Not used
  -----------------------------------
  Major Shoreline
  Minor Shoreline (Land locked)
  Pending
  Geostatistical line
  Other
  Other Ramp
------------------------------------- */