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

## Hent et Temperature-Tower

* Jeg har valt at bruge et
  * [Parameterized Smart compact temperature calibration tower fra Thingeverse udviklet af Petolone](https://www.thingiverse.com/thing:2825709/files).
* For lave en tilpasset fil for det filement jeg bruger skal jeg bruge [OpenSCAD](https://openscad.org/downloads.html), hent og installer det for det OS du bruger, jeg har selvføllig valgt Ubuntu versionen.
  * [Temperature Towers! How? Why? What For? videoen viser installation for windows bruger fra timestamp 3:54](https://youtu.be/CZ8cgWF8s50?t=234)

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
