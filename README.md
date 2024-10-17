# Datastuen41-FreeCAD

Her vil jeg dele opgaver Tips og løsninger med deltager i Datastuen41 FreeCAD hold.

[Datastuen41,
Bøgeparken 41,
5792 Årslev,
Danmark](https://maps.app.goo.gl/i1MGUUs6uD3a9bza9)

* Kursus
  * Kursus dag 1, FreeCAD 1.0.0 Installation
    * [Her henter jeg FreeCAD 1.0.0RCx](https://github.com/FreeCAD/FreeCAD/releases)
    * [Preferences settings vi bruger](./Preferences.md)
  * Kursus dag 2, Lidt om at bruge Part Design, Sketcher og list om Constraints.
    * [YouTube Videoer vi vil bruge lidt tid på](./YouTube_Video_Links.md)
    * Tegne Opgaver:
      * [Opgave 1](./Opgaver/Opgave_1.0.0.md)
      * [Opgave 2](./Opgaver/)
      * [Opgave 3](./Opgaver/)
* Værktøjer
  * Temperature-Tower & PruserSlicer
    * Kilde:
      * [Temperature Towers! How? Why? What For?](https://youtu.be/CZ8cgWF8s50)
      * [OpenSCAD](https://openscad.org/downloads.html)
      * [Parameterized Smart compact temperature calibration tower](https://www.thingiverse.com/thing:2825709/files)
      * [Temperature-Tower - by Mica](https://www.printables.com/model/827333-temperature-tower)
    * PruserSlicer Settings
      * Printer
        * Custom G-code
          * Before Layer change G-code
            * M104 T5 S{255 - int(5 * int((layer_num-13) / 100))}
      * Plater
        * Print settings: 0.10mm
