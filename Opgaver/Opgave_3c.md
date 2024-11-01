# Opgave 3c - Gridfinity BasketFoot

## Kilder

* [Printables]()
  * [Gridfinity Specification](https://www.printables.com/model/417152-gridfinity-specification "grizzie17")
  * [Rugged Box (Parametric)](https://www.printables.com/model/258431-rugged-box-parametric "Whity")
* [Kursus Videoer](https://www.youtube.com/@sekt1953)
  * [GridFinityParametricFiles - BasePlate](https://youtu.be/zOC_qxB1Kig)
* Youtube Videoer
  * [GridFinity Parametric File #freecad #cad #design](https://youtu.be/rAv9zGpiyvw "Adventures in creation")
  * [Underware: The Ultimate Cable Management System | Full Guide](https://youtu.be/0TT96b98YZY?list=PLFa9atYEuNhVEwJW1WDg2C_DJdGSHJGrQ "Hands On Katie")
  * [gridfinity case with bins](https://www.youtube.com/watch?v=hjQqcGHjv50 "Jason Brain")

## VarSet Data

|**Gridfinity Parameters:**||||
|:---|:---|:---|---:|
|Name|Group|Type|Value|
|GridSize|Gridfinity|App::PropertyLength| 42,00 mm|
|GridOuterRadius|Gridfinity|App::PropertyLength| 4,00 mm|
|**Gridfinity Profile:**||||
|GridProfileAngle|Gridfinity|App::PropertyAngle|45,00 deg|
|GridProfileTop|Gridfinity|App::PropertyLength| 2,15 mm|
|GridProfileMiddle|Gridfinity|App::PropertyLength| 1,80 mm|
|GridProfileLower|Gridfinity|App::PropertyLength| 0,70 mm|
|GridProfileHeight|Gridfinity|App::PropertyLength| GridProfileTop + GridProfileMiddle + GridProfileLower|
|||||
|**BasePlate Parameters:**|||***2 x 3 Grid***|
|BasePlateGridX|Baseplate|App::PropertyInteger|2|
|BasePlateGridY|Baseplate|App::PropertyInteger|3|
|||||
|**Bin Parameters:**|||***1 x 2 Grid***|
|BinOffset|Bin|App::PropertyLength| 0,25 mm|
|||||
|**BinFoot Parameters:**|||***1 x 2 Grid***|
|BinPlateGridX|BinFoot|App::PropertyInteger|1|
|BinPlateGridY|BinFoot|App::PropertyInteger|2|

## Step 1 BinFoot - Indtast Variabler i VarSet

* DobbeltKlik ComboView -> Model -> Part -> Varset
  * Add Parameter til VarSet:
    * Checkmark:  **Add another**
      * Indtast:
        * Name: BinOffset
        * Group: Bin
        * Type: App::PropertyLength
        * Value: 0,25 mm
        * Klik [Ok]
      * Indtast:
        * Name: BinFootGridX
        * Group: BinFoot
        * Type: App::PropertyInteger
        * Value: 1
        * Klik [Ok]
      * Indtast:
        * Name: BinFootGridXY
        * Group: BinFoot
        * Type: App::PropertyInteger
        * Value: 2
        * Klik [Ok], [Cancel]
  * ![Step1.1](./Opgave_3c/Images/Step1.1.png)

## Step 2 BinFoot - [Create a sub-object(s) shape binder](https://wiki.freecad.org/PartDesign_SubShapeBinder)

* Marker -> ComboView -> Model -> Part -> Baseplate
  * Klik [MellemrumsTangent] for at slukke for **Baseplate**
* Højre Klik -> ComboView -> Model -> Part -> BasketFoot
  * Checkmark **Active Body**
* DobbeltKlik -> **ComboView -> Opgave_3 -> Part -> BasketFoot**
  * så **BasketFoot** bliver det Aktive Body.
* Press [0] for IsometricView
  * Marker **BasePlateProfileXZCutOut** 
    * Klik Ikonet [SubSshapeBinder](https://wiki.freecad.org/PartDesign_SubShapeBinder) ![SubSshapeBinder](./Images/Icons/SubSshapeBinder.png)  
    og du har oprette **Binder**
  * Marker **BasePlateProfileXYCutOut**
    * Klik Ikonet [SubSshapeBinder](https://wiki.freecad.org/PartDesign_SubShapeBinder) ![SubSshapeBinder](./Images/Icons/SubSshapeBinder.png)  
    og du har oprette **Binder001**
  * ![Step2.0](./Opgave_3c/Images/Step2.0.png)
* ![Step2.1](./Opgave_3c/Images/Step2.1.png)

## Step 3 BinFoot - BinFoot Profile

* Klik på Iconet **Create Sketch** ![Create Sketch](./Images/Icons/CreateSketch.png)
  * DobbeltKlik ComboView -> Task -> **XZ-plane001 (Base plane)**
  * Vælg -> ComboView -> **Model**
  * Omdøb **Sketch** til **BigFootProfileXZ**
  * DobbeltKlik på ComboView -> Opgave_3 -> Model -> **BigFootProfileXZ**

* Opret CreateExternalGeometry:
  * 



* Press [1] for FrontView


