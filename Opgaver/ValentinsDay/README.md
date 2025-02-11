# ValentinsBox

## Video Kilder

* [4 Axis Printing](https://www.youtube.com/@4axisprinting "4 Axis Printing")
  * [FreeCAD: A perfect Heart Shape](https://youtu.be/UsR2Qk2u-ZA "4 Axis Printing")
  * [FreeCAD: A quick Heart box using 2Doffsets](https://youtu.be/WoPDvvhKgsg "4 Axis Printing")
* [Svenn-Erik K. Thomsen](https://www.youtube.com/@sekt1953)
  * [ValentinsBox](https://youtu.be/dxgOPdEh2YI "Svenn-Erik K. Thomsen")

## Files

* FreeCAD
  * [ValentinsBox.FCStd](./ValentinsBox.FCStd)
  * [Valentinsday-Box-Fillet.3mf](./Valentinsday-Box-Fillet.3mf)
  * [Valentinsday-Lid-Fillet.3mf](./Valentinsday-Lid-Fillet.3mf)

## Sketcher Workbench

### VarSet

|Label|Value|Type|
|:---|---:|:---|
|BoxOffset|10,00 mm|PropertyLength|
|HeartRadius|25,00 mm|PropertyLength|
|HeartSymmetric|1,5|PropertyFloat|
|HeartHeight|2,25|PropertyFloat|
|WallHeight|21,00 mm|PropertyLength|
|WallOffset|0,20 mm|PropertyLength|
|WallThickness|1,00 mm|PropertyLength|

### Sketch

![Sketch](./Images/Box/Skærmbillede%20fra%202025-02-09%2011-39-09.png)

## Part Workbench

### Box

![Box Model](./Images/Box/Skærmbillede%20fra%202025-02-09%2012-11-19.png)

#### Offset2D --> Extrude

|[![Part_Offset2D.svg](./Images/Part_Offset2D.svg)Offset2D](https://wiki.freecad.org/Part_Offset2D)|[![Part_Extrude.svg](./Images/Part_Extrude.svg)Extrude](https://wiki.freecad.org/Part_Extrude)|
|:---:|:---:|
|Offset: VarSet.WallThickness, Pipe, Tangent, Fill offset|Length Fwd: VarSet.Wall Thickness + VarSet.Wall Height|
|![Offset2D](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-32-13.png)|![Extrude](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-34-17.png)|
|![Offset2D](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-39-51.png)|![Extrude](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-40-44.png)|

#### Offset2D001 --> Extrude001

|Offset2D001|Extrude001|
|:---:|:---:|
|Offset: VarSet.BoxOffset, Pipe, Tangent|Length Fwd: VarSet.Wall Thickness|
|![](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-44-16.png)|![](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-45-13.png)|
|![Offset2D001](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-42-35.png)|![Extrude001](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-43-22.png)|

#### Box-Fusion --> Box-Fillet

|[![Part_Fuse.svg](./Images/Part_Fuse.svg)Fusion](https://wiki.freecad.org/Part_Fuse)|[![Part_Fillet.svg](./Images/Part_Fillet.svg)Fillet](https://wiki.freecad.org/Part_Fillet)|
|:---:|:---:|
||![Filler Task](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-48-23.png)|
|![Fusion](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-47-21.png)|![Fillet](./Images/Box/Skærmbillede%20fra%202025-02-09%2013-50-30.png)|

### Lid

![Box Model](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-08-13.png)

#### Offset2D002 --> Offset2D003 --> Extrude002

|[![Part_Offset2D.svg](./Images/Part_Offset2D.svg)Offset2D002](https://wiki.freecad.org/Part_Offset2D)|[![Part_Offset2D.svg](./Images/Part_Offset2D.svg)Offset2D003](https://wiki.freecad.org/Part_Offset2D)|[![Part_Extrude.svg](./Images/Part_Extrude.svg)Extrude002](https://wiki.freecad.org/Part_Extrude)|
|:---:|:---:|:---:|
|Offset: VarSet.WallThickness + VarSet.WallOffset, pipe, Tangent, Fill offset|Offset: 1,00mm, pipe, Tangent, Fill offset|Length Fwd: VarSet.Wall Thickness + VarSet.Wall Height|
|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-16-02.png)|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-16-50.png)|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-17-35.png)|
|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-19-13.png)|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-19-25.png)|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-19-40.png)|

#### Offset2D004 --> Extrude003

|[![Part_Offset2D.svg](./Images/Part_Offset2D.svg)Offset2D004](https://wiki.freecad.org/Part_Offset2D)|[![Part_Extrude.svg](./Images/Part_Extrude.svg)Extrude003](https://wiki.freecad.org/Part_Extrude)|
|:---:|:---:|
|VarSet.BoxOffset||
|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-26-19.png)|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-28-04.png)|
|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-26-38.png)|![](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-27-55.png)|

#### Lid-Fusion --> Lid-Fillet

|[![Part_Fuse.svg](./Images/Part_Fuse.svg)Fusion](https://wiki.freecad.org/Part_Fuse)|[![Part_Fillet.svg](./Images/Part_Fillet.svg)Fillet](https://wiki.freecad.org/Part_Fillet)|
|:---:|:---:|
||![Filler Task](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-30-09.png)|
|![Fusion](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-32-33.png)|![Fillet](./Images/Lid/Skærmbillede%20fra%202025-02-09%2016-33-48.png)|
