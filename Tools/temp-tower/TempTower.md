# Temperature-Tower

## Kilder

* Youtube Videoer:
  * [Temperature Towers! How? Why? What For?](https://youtu.be/CZ8cgWF8s50)
* Thingiverse:
  * [Parameterized Smart compact temperature calibration tower](https://www.thingiverse.com/thing:2825709/files)
* Printables:
  * [Temperature-Tower - by Mica](https://www.printables.com/model/827333-temperature-tower)
* Software
  * [OpenSCAD](https://openscad.org/downloads.html)

## Slicer

* PruserSlicer Settings
  * Printer
    * Custom G-code
      * Before Layer change G-code
        * ;BEFORE_LAYER_CHANGE
        * G92 E0.0
        * ;LAYER Z: [layer_z]mm
        * ;LAYER Nr: [layer_num]
        * M104 S{245 - int(5 * int((layer_num-13) / 100))}
    * Plater
      * Print settings: 0.10mm
