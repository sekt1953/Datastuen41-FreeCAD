# Opgaver for 2026-2

## Nr.:1

### Lidt genopfriskning af tegne færdigheder

||||
|:---:|:---:|:---:|
|![2016-25-30.png](./Images/Opgave_2026-2_1/Skærmbillede%20fra%202026-09-04%2016-25-30.png)|![](./Images/Opgave_2026-2_1/Skærmbillede%20fra%202026-09-04%2016-25-48.png)|![Opgave_2026-2_1.png](./Images/Opgave_2026-2_1/Opgave_2026-2_1.png)|

* [Mere om Opgave Nr.:1 ***Kik her***](./Opgave_2026-2_1.md)

## Nr.:2

### PieMenu Workbench

1. Se Videoen [Pie Menu](https://youtu.be/NveA_siC3GM "MangoJelly Solutions for FreeCA")
2. Brug Addon Manager til installation af PieMenu
3. Bliv fortrolig med PieMenu
   * [PieMenu Wiki](https://wiki.freecad.org/PieMenu_Workbench)

## Nr.:3

### Elements List, Wire Not Closed & Find Hidden Duplicate Geometry & Sketcher Constraints

1. Se Videoerne:
   * [How to Use the Elements List in FreeCAD Sketcher](https://youtu.be/BJ5LOMA8eew)
   * [FreeCAD Wire Not Closed? How to Find Hidden Duplicate Geometry The Easy Way](https://youtu.be/rlWq2DAD1is)
   * [FreeCAD Sketcher Constraints Tips & Tutorial](https://youtu.be/lAhzgE-jyvM)
2. Dokumentation:
   * [Sketcher Workbench](https://wiki.freecad.org/Sketcher_Workbench)
   * [Sketcher Preferences](https://wiki.freecad.org/Sketcher_Preferences)
3. Hent Opgave:
   * [Opgave_2026-2_3.FCStd](./Opgave_2026-2_3.FCStd)

## Nr.:4

### Import Images, Skaler Images og tegn komponentet

1. Se Videoerne:
   * [Why has the Image Workbench been removed in FreeCAD 0.21 / v1.0?](https://youtu.be/WhxDAgskcHA)
2. [Løs opgaven som beskrevet her](./Opgave_2026-2_4.md)

## Nr.:5

### Tegn komponent til KiCad

1. Åben i Part Design
2. Import Images:
   * Mini560Pro_Dim.png
   * Mini560Pro_Pcb.png
3. Tilføj sketch:
   * Outline
   * SolderPads
   * Parts
   * Holes
4. Flyt Sketch ud af Body, under images
5. Skalerer Images:
   * Mini560Pro_Pcb.png så det passer med mål
   * længde 33mm
   * Slå 'Keep Asprect ration' fra og ret højde til 18mm
6. Edit Sketch Outline:
   * som vist herunder
     * ![2015-29-06.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2015-29-06.png)
7. Edit Sketch SolderPads:
   * som vist herunder
     * ![2015-37-04.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2015-37-04.png)
8. Edit Sketch Parts:
   * som vist herunder
   * ![2015-59-13.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2015-59-13.png)
9. Edit Sketch Holes:
   * som vist herunder
   * ![2015-59-22.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2015-59-22.png)
10. Body skal nu være Aktive
    * klik på Sketch Outline og lav en SubBinder af denne
    * Pad Binder til 1.6mm symetrisk til nulplane
    * ![2016-05-51.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2016-05-51.png)
    * select images og tryk V T for transparent images
11. Vælg nu SolderPads Sketchen og lav en ny Binder001
    * Pad Binder001 1.8mm symetrisk
    * ![2016-14-54.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2016-14-54.png)
    * Som nogen ser så har jeg rettet i SolderPads indtegnet en pil der viser outpot siden
12. Vælg nu Parts og lav en Binder002
    * Pad Binder002 den 0,9mm One Sided
    * ![2016-14-54.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2016-18-24.png)
13. Vælg nu Holes og lav en Binder003
    * Pocket Binder003 symetrisk 5mm er fint
    * ![2016-23-17.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2016-23-17.png)
14. Klik nu på overfladen af de komponenter i ønsker at forhøje
    * træk dem til den ønskede højde
    * ![2016-31-06.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2016-31-06.png)
    * ![2016-35-17.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2016-35-17.png)
15. Farvelæg Print
    * Klik en tilfældig overflade
    * Klik View -> Appearance per Face
    * Vælg Print overfladen
      * Klik Appearance
      * Vælg De
      * Diffuse color: 
        * HTML: #0055FF
        * Klik OK -> Close -> OK
16. Her er det færdige resultat:
    * ![2016-40-42.png](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2016-40-42.png) 
17. Gem opgaven
18. Klik på Body, så figuren bliver valgt:
    * ![](./Images/Opgave_2026-2_5/Skærmbillede%20fra%202026-10-12%2016-43-03.png)
    * Klik Filer Exporter væjg filtype 'STEP with colors(*.step *.stp)'
    * Klik: OK

Opgave løst

