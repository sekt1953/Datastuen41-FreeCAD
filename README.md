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
      * [Opgave 1 - New FreeCAD Feature! Complex Extrudes from a Single Sketch Like in SolidWorks](./Opgaver/Opgave_1.0.0.md)
      * [Opgave 2 - Copy Sketch](./Opgaver/Opgave_2.0.0.md)
      * Opgave 3 - GridFinity Parametric Design
        * [Opgave 3.1 - Gridfinity Baseplate parametric modeling](./Opgaver/Opgave_3.0.1.md)  
        * [Opgave 3.2 - Gridfinity Bin/Basket parametric modeling](./Opgaver/)
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
            * ;BEFORE_LAYER_CHANGE
            * G92 E0.0
            * ;LAYER Z: [layer_z]mm
            * ;LAYER Nr: [layer_num]
            * M104 S{245 - int(5 * int((layer_num-13) / 100))}
      * Plater
        * Print settings: 0.10mm
* Octoprint opsætning 
  * For Windows
    * med Cura Slicer
    * med Prusa Slicer
  * For Linux
    * med Cura Slicer
    * med Prusa Slicer
