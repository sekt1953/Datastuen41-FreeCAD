# Opgave 2 - Copy Sketch

## Denne opgave er inspireret af

* [CAD CAM Lessons](https://www.youtube.com/@CADCAMLessons/featured)
  * [Copy Sketch From One Face to Another in FreeCAD](https://youtu.be/M8YbL2aroZk)

## Opgave 2.0 - Basis object

Den traditionelle måde at kopy Sketch på.

* Opgave 2.0 - Tegn vores basis object
  * Opgave 2.0.1
    * Start FreeCAD i Part Design
      * Create Body
      * Create Sketch
        * Select XY-plane (Base plane)
        * ![Select XY-plane](./Images/Opgave_1/Skærmbillede%20fra%202024-09-25%2009-06-25.png)
        * Tegn sketch, som vist herunder
        * ![Tegn sketch](./Images/Opgave_2/Skærmbillede%20fra%202024-10-01%2020-24-56.png)
        * Close Task
      * Pad Sketch
        * Select Model View
        * Select Sketch
        * Klik Pad
        * ![Klik Pad](./Images/Opgave_2/Skærmbillede%20fra%202024-10-01%2020-09-06.png)
        * Klik Ok til Task
        * Gem opgave som [~/Opgaver/Sketch/Opgave_2.0.2.FCStd](./Sketch/Opgave_2.0.1.FCStd)
  * Opgave 2.0.2 - Tegn vores grund sketch som vi vil kopy på forskellige måder:
    * Select FRONT View
      * Select front face
        * Tegn sketch, som vist herunder
        * ![Tegn sketch](./Images/Opgave_2/Skærmbillede%20fra%202024-10-01%2020-33-27.png)
        * Constrains
          * Create a Circle
            * Diameter            (I)   : 25mm
            * Vertical Distance   (L)   : 25mm
            * Horcential Distance (K,O) : 25mm
          * Create a Slot
            * Radius              (K,R) : 10mm
            * Distance            (K,D) : 20mm
        * Klik Ok til Task
        * sådan forventer jeg den ser ud nu:
        * ![Tegn sketch](./Images/Opgave_2/Skærmbillede%20fra%202024-10-01%2020-37-33.png)
        * Gem opgave som [~/Opgaver/Sketch/Opgave_2.0.2.FCStd](./Sketch/Opgave_2.0.2FCStd)

## Opgave 2.1 - Den gammeldags metode [Ctrl]+[c] efterfuldt af [Ctrl]+[v]

* Opgave 2.1 - Den gammeldags metode
  * Opgave 2.1.1
    *
