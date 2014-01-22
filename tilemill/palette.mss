/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

@orange: rgb(255, 153, 0);
@blue:   rgb(0, 51, 102);

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@grass:             rgb(252,252,252);

@road_line:         white;
@road_fill:         black;
@road_case:         black;

@rail_line:         white;
@rail_fill:         black;
@rail_case:         black;

@beach:             @land;
@park:              @grass;
@cemetery:          @land;
@wooded:            @grass;
@agriculture:       @grass;

@residential:       @land;// * 0.98;
@commercial:        @land;// * 0.97;
@industrial:        @land;// * 0.96;
@parking:           @land;//#EEE;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     @road_line;
@motorway_fill:     @road_fill;
@motorway_case:     @road_case;

@trunk_line:        @road_line;
@trunk_fill:        @road_fill;
@trunk_case:        @road_case;

@primary_line:      @road_line;
@primary_fill:      @road_fill;
@primary_case:      @road_case;

@secondary_line:    @road_line;
@secondary_fill:    @road_fill;
@secondary_case:    @road_case;

@standard_line:     @road_line;
@standard_fill:     @road_fill;
@standard_case:     @road_case;

@pedestrian_line:   @road_line;
@pedestrian_fill:   @road_fill;
@pedestrian_case:   @road_case;

@cycle_line:        @road_line;
@cycle_fill:        @road_fill;
@cycle_case:        @road_case;

@aeroway:           @road_fill;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

@road_text:         rgb(100,100,100);
@road_halo:         black;

/* ****************************************************************** */
