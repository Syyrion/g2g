A gcode generator for gbr files

## Build on Linux

Run make. A `g2g` executable should appear.

## Build on Windows

Install MinGW first and build using make. A `g2g.exe` should appear.

Note that other rules such as `make run` or `make clean` in the makefile don't work on Windows because cringe.

## Usage

Run `g2g --help` to show the help text.

```
gbr2ngc: A gerber to gcode converter
version 0.8.7

  usage: gbr2ngc [<options>] [<input_Gerber>] [-o <output_GCode_file>]

  -r, --radius radius                 radius (default 0) (units in inches)
  -F, --fillradius fillradius         radius to be used for fill pattern (default to radius above)
  -i, --input input                   input file
  -o, --output output                 output file (default stdout)
  -c, --config-file config-file       configuration file (default ./gbr2ngc.ini)
  -f, --feed feed                     feed rate (default 10)
  -s, --seek seek                     seek rate (add 'g0 f<rate>' to header if set)
  -z, --zsafe zsafe                   z safe height (default 0.1 inches)
  -Z, --zcut zcut                     z cut height (default -0.05 inches)
  -2, --gcode-header gcode-header     prepend custom G-code to the beginning of the program
  -3, --gcode-footer gcode-footer     append custom G-code to the end of the program
  -l, --segment-length segment-length minimum segment length
  -M, --metric                        output units in metric
  -I, --inches                        output units in inches (default)
  -C, --no-comment                    do not show comments
  -R, --machine-readable              machine readable (uppercase, no spaces in gcode)
  -H, --horizontal                    route out blank areas with a horizontal scan line technique
  -V, --vertical                      route out blank areas with a vertical scan line technique
  -G, --zengarden                     route out blank areas with a 'zen garden' technique
  -P, --print-polygon                 print polygon regions only (for debugging)
  --invertfill                        invert the fill pattern (experimental)
  --simple-infill                     infill copper polygons with pattern (currently only -H and -V supported)
  --no-outline                        do not route out outline when doing infill
  --height-file height-file           height file to use for height offseting (each coord on it's own line in '<x> <y> <z>' format)
  --height-algorithm height-algorithm height algorithm to use (default Catmull-Rom) (options: catmull-rom, inverse-square, delaunay-linear)
  -v, --verbose                       verbose
  -N, --version                       display version information
  -h, --help                          help (this screen)
```