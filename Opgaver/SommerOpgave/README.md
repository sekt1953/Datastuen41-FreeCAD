# Sommeropgave 2025

## Kilder

* FreeCAD 
  * [Expressions](https://wiki.freecad.org/Expressions)
    * [Right-angled triangle definitions](https://en.wikipedia.org/wiki/Trigonometric_functions#Right-angled_triangle_definitions)
* [Matematisk formelsamling Almen voksenuddannelse
Niveau D](https://www.uvm.dk/-/media/filer/uvm/udd/voksne/pdf19/sep/190918-formelsamling-avu-d.pdf)
  * side 32 Trigonometri:
  * Om tangens til en spids vinkel v i en retvinklet trekant gælder:
    * tan A° = a/b ~ a = tan A° * b
    * i vores opgave ~ a = tan 8° * 25 ~ 3,513520868
* Youtube:
  * [FreeCAD 1.0.1: First 3D model: #2 | PartDesign features | Multi-body design](https://youtu.be/2RImYM6q2Bs)

## Opgaven

* FreeCAD:
  * [Multi-body_design.FCStd](./Multi-body_design.FCStd)
* Video:

### Main Body

* Tegningens mål:
  * Sketch: Centered Rectangle, Rounded corners
    * Bredde 200mm
    * Højde 120mm
    * hjørne radius 16mm
    * Pad: 45 mm
  * Sketch001: Slot
    * Bredde 120mm
    * Højde 10mm
    * Pocket: Through all, Symmetric to plane
  * Sketch002: Slot
    * Bredde 50mm
    * Højde 10mm
    * Pocket001: Through all, Symmetric to plane
  * Sketch003:
    * Bredde 200 - tan(8) * 25 * 2 - 6 mm ~ 196,973mm
    * Højde 120 - (tan(8) * 25 * 2 - 6 mm ~ 106,973mm
  * Sketch004: højde 3mm, topvinkel 45°
  * SubtractivePipe
    * Select Sketch004 & Sketch003
