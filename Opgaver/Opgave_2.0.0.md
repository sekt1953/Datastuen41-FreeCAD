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

## Opgave 2.2 - ![Sketcher_CarbonCopy.svg](./Images/Opgave_2/Sketcher_CarbonCopy.svg) Create carbon copy, den ny metode.

* Kilde:  [Sketcher CarbonCopy](https://wiki.freecad.org/Sketcher_CarbonCopy)
* Beskrivelse
  * Sketcher CarbonCopy-værktøjet kopierer al geometri og begrænsninger fra en anden skitse til den aktive skitse.
  * Dimensionelle begrænsninger, der eksisterer før kopifunktionen, forbliver knyttet til den originale skitses dimensionelle begrænsninger gennem udtryk.
* Brug
  * Sørg for, at du er i redigeringstilstand for en eksisterende skitse. Denne skitse er målet for operationen.
  * Der er flere måder at aktivere værktøjet på:
    1. Tryk på knappen ![Sketcher_CarbonCopy.svg](./Images/Opgave_2/Sketcher_CarbonCopy.svg).
    2. Vælg Sketcher → Sketcher-værktøjer → Create carbon copy i menuen.
    3. Brug tastaturgenvejen: [G] og derefter [W].
  * Markøren skifter til et kryds med værktøjsikonet.
  * Vælg en kant fra en anden skitse. Denne skitse er kilden til operationen. Se Noter.
  * Geometrielementer såvel som begrænsninger kopieres ind i den aktive skitse.
  * Dette værktøj kører altid i fortsættelsestilstand: kopier eventuelt yderligere skitser.
  * For at afslutte skal du højreklikke eller trykke på Esc, eller starte et andet værktøj til oprettelse af geometri eller begrænsninger.
* Noter
  * I PartDesign Workbench er det muligt at vælge skitsen til karbonkopi uden for Bodyen af ​​den aktuelt aktive skitse, men kun hvis Ctrl-tasten holdes nede under markeringen.
  * Skitsen til karbonkopi skal være planparallel med den aktuelt aktive skitse. Hvis det ikke er tilfældet, skal Ctrl- og  Alt-tasterne holdes nede under valg. Dette fungerer også for  skitser placeret uden for den aktive krop.
  * Hvis konstruktionstilstand er aktiv, oprettes kopieret geometri som konstruktionsgeometri.
  * Hele skitsen er kopieret, det er ikke muligt kun at vælge en del. Men efter kopiering kan du slette uønskede elementer.

* Opgave 2.2 - Create carbon copy
  * Opgave 2.2.1
    *
