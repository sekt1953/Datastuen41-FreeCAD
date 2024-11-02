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

## Step 3 BinFoot - BinFoot Profiler

* XZ-Profile:
  * Klik på Iconet **Create Sketch** ![Create Sketch](./Images/Icons/CreateSketch.png)
    * DobbeltKlik ComboView -> Task -> **XZ-plane003 (Base plane)**
    * Vælg -> ComboView -> **Model**
    * Omdøb **Sketch** til **BigFootProfileXZ**
    * DobbeltKlik på ComboView -> Opgave_3 -> Model -> **BigFootProfileXZ**
  * Opret CreateExternalGeometry:
    * Klik på Ikonet CreateExternalGeometry ![CreateExternalGeometry](./Images/Icons/CreateExternalGeometry.png)
      * Klik midt på **Binder** to skrå linier
      * ![Step3.1](./Opgave_3c/Images/Step3.1.png)
      * Klik [Close]
  * Tegn XZ-Profile
    * Sluk for ComboView -> Model -> Part -> BasketFoot -> **Binder**
      * ![Step3.2](./Opgave_3c/Images/Step3.2.png)
    * Brug **CreatePolyline** ![CreatePolyline](./Images/Icons/CreatePolyline.png) til at tegne profilen
      * ![Step3.3](./Opgave_3c/Images/Step3.3.png)
    * Brug **Constrain Horizontal vertical** ![ConstrainHorizontalvertical](./Images/Icons/ConstrainHorizontalvertical.png) til at sikre at lodrette og vandrette linier er sådan
    * Brug **ConstrainParallel** ![ConstrainParallel](./Images/Icons/ConstrainParallel.png) til at sikre skrå linier er Parallel
    * Brug **Coincident** ![Coincident](./Images/Icons/Coincident.png) til at sikre dig at profiler er sikret til X-Axis
    * Press [L] og og sæt afstanden mellem Binder og profilen
      * Klik den lille globus 
        * Indtast: **VarSet.BinOffset**
      * ![Step3.4](./Opgave_3c/Images/Step3.4a.png)
      * Klik [Ok],[Ok]
    * Press [H] og Horizontal Constrain den korte lodrette linie
    * Press [V] og Vertical Constrain den Lange lodrette linie
  * ![Step3.5](./Opgave_3c/Images/Step3.5.png)
  * Klik ComboView -> Task -> **Close**
* XY-Profile:
  * Klik på Iconet **Create Sketch** ![Create Sketch](./Images/Icons/CreateSketch.png)
    * DobbeltKlik ComboView -> Task -> **XY-plane003 (Base plane)**
    * Vælg -> ComboView -> **Model**
    * Omdøb **Sketch** til **BigFootProfileXY**
    * DobbeltKlik på ComboView -> Opgave_3 -> Model -> **BigFootProfileXY**
  * Opret CreateExternalGeometry:
    * Klik på Ikonet CreateExternalGeometry ![CreateExternalGeometry](./Images/Icons/CreateExternalGeometry.png)
      * Klik midt på **Binder001** nederste venstre runde hjørne
      * Sluk for ComboView -> Model -> **Binder001**
      * Press [0] for IsometricView
      * Klik på Ikonet CreateExternalGeometry ![CreateExternalGeometry](./Images/Icons/CreateExternalGeometry.png)
      * Klik midt på **BigFootProfileXZ** Øverste vandrette linie
  * ![Step3.6](./Opgave_3c/Images/Step3.6.png)
  * Press [2] for TopView
    * Klik på Iconet **Centered Regtangle** ![Centered Regtangle](./Images/Icons/CenteredRectangle.png)
      * Check **ComboView -> Task -> Rectangle parameters -> Rounded corners** Eller Press [U]
        * Placer nu den **Centered Regtangle** med centrum i Nulpunket og giv den runde hjørner
        * Constrain **Centered Rectangle med runde hjørner**
        * Klik på Iconet **ConstrainEqual** ![ConstrainEqual](./Images/Icons/ConstrainEqual.png)
          * Klik nu på en Vandret & en Lodret linie for at få en Kvardrat med runde hjørner
        * Placer nu den venstre lodrette symetrisk omkring 'External Geometry' Venstre punkt
          * Marker de 2 endepunkter af venstre lodrette linie, og det venstre punkt i 'External Geometry'
          * Klik Symmetric ![Symmetric](./Images/Icons/Symmetric.png), Eller Press [S] for at Symmetri.
        * ![Step3.7](./Opgave_3c/Images/Step3.7.png)
        * Placer hjørnerne
          * Marker Hjørne Centrum for Kvareaten og 'External Geometry' fra XY planet
          * Klik **Coincident** ![Coincident](./Images/Icons/Coincident.png)
        * ![Step3.8](./Opgave_3c/Images/Step3.8.png)
    * Press **ComboView -> Task -> Close**
  * ![Step3.9](./Opgave_3c/Images/Step3.9.png)
 
 ## Step 4 BinFoot - BinFoot [Additive pipe](https://wiki.freecad.org/PartDesign_AdditivePipe)

* [Additive pipe:](https://wiki.freecad.org/PartDesign_AdditivePipe) 
  * Hold [Ctrl] mens du Markerer ComboView -> Model -> BasketFoot 
    * **BigFootProfileXZ** og derefter **BigFootProfileXY** rækkefølgen er vigtig
  * Klik nu Ikonet **Additive pipe:** [Additive pipe](./Images/Icons/AdditivePipe.png) 
    * Klik [OK]
* ![Step4.1](./Opgave_3c/Images/Step4.1.png)

## Step 5 BinFoot - BinFoot Infill

* Create Infill:
  * Opret Sketch **BigFootInfillXY**:
    * Klik på Iconet **Create Sketch** ![Create Sketch](./Images/Icons/CreateSketch.png)
      * DobbeltKlik ComboView -> Task -> **XY-plane003 (Base plane)**
      * Vælg -> ComboView -> **Model**
      * Omdøb **Sketch** til **BigFootInfillXY**
      * DobbeltKlik på ComboView -> Opgave_3 -> Model -> **BigFootInfillXY**
    * Opret CreateExternalGeometry:
      * Klik på Ikonet CreateExternalGeometry ![CreateExternalGeometry](./Images/Icons/CreateExternalGeometry.png)
        * Klik midt på den indre radius af nederste Venstre hjørne, Zoom iind hvis nødvendigt
          * ![Step5.1](./Opgave_3c/Images/Step5.1.png)
    * Tegn den Indre profile:
      * Klik på Iconet **Centered Regtangle** ![Centered Regtangle](./Images/Icons/CenteredRectangle.png)
        * Check **ComboView -> Task -> Rectangle parameters -> Rounded corners** Eller Press [U]
          * Placer nu den **Centered Regtangle** med centrum i Nulpunket og giv den runde hjørner
          * Constrain **Centered Rectangle med runde hjørner**
          * Klik på Iconet **ConstrainEqual** ![ConstrainEqual](./Images/Icons/ConstrainEqual.png)
            * Klik nu på en Vandret & en Lodret linie for at få en Kvardrat med runde hjørner
          * Placer hjørnerne:
            * Marker et af Nederste Hjørne endpunkter og tilsvarende punkt på 'External Geometry' fra XY planet
            * Klik **Coincident** ![Coincident](./Images/Icons/Coincident.png)
          * ![Step5.2](./Opgave_3c/Images/Step5.2.png)
    * Press **ComboView -> Task -> Close**
  * Opret Sketch **BigFootInfillXZ**:
    * Klik på Iconet **Create Sketch** ![Create Sketch](./Images/Icons/CreateSketch.png)
      * DobbeltKlik ComboView -> Task -> **XZ-plane003 (Base plane)**
      * Vælg -> ComboView -> **Model**
      * Omdøb **Sketch006** til **BigFootInfillXZ**
      * DobbeltKlik på ComboView -> Opgave_3 -> Model -> **BigFootInfillXZ**
    * Opret CreateExternalGeometry:
      * Press [0] for IsometricView
      * ComboView -> Model -> BasketFoot ->
        * Sluk for **AdditivePipe**
        * Åben op **AdditivePipe**
        * Tænd for **BigFootProfileXZ**
    * Klik på **Create External Geometry** Ikonen ![CreateExternalGeometry](./Images/Icons/CreateExternalGeometry.png)
      * Klik på den **External Geometry's** Lange lodrette linie.
      * ComboView -> Model -> BasketFoot ->
        * Sluk for **BigFootProfileXZ**
      * ![Step5.3b](./Opgave_3c/Images/Step5.3b.png)
      * Tegn nu en lodret streg hvor støttelinien er:
        * Klik på **CreateLine** Ikonet ![CreateLine](./Images/Icons/CreateLine.png)
        * Klik på endpunkterne af støttelinien
        * ![Step5.4a](./Opgave_3c/Images/Step5.4a.png)
      * Press **ComboView -> Task -> Close**
  * [Additive pipe:](https://wiki.freecad.org/PartDesign_AdditivePipe) 
    * Hold [Ctrl] mens du Markerer ComboView -> Model -> BasketFoot 
      * **BigFootInfillXY** og derefter **BigFootInfillXZ** rækkefølgen er vigtig
      * Klik nu Ikonet **Additive pipe:** [Additive pipe](./Images/Icons/AdditivePipe.png)
      * Klik [OK]
    * ![Step5.4](./Opgave_3c/Images/Step5.4.png)

## Step 6 BinFoot - Create MultiTransform

* Multitransform:
  * Hold [Ctrl] nede mens du Markerer **AdditivePipe** & **AdditivePipe001**
    * Klik Ikonet **CreateMultitransform** ![CreateMultitransform](./Images/Icons/CreateMultitransform.png)

  * ComboView -> Task -> Multitransform Parameters -> Transformations
    * HøjreKlik og vælg [**Add linear pattern**](https://wiki.freecad.org/PartDesign_LinearPattern)
    * Sæt:
      * Direction: **Base X axis**
      * Mode: **Offset**
      * Offset: Klik den lille globus
        * Indtast: **VarSet.GridSize**
        * ![Step2.6.2](./Opgave_3a/Images/Step2.6.2.png) 
      * Occurrences: Klik den lille globus
        * Indtast **VarSet.BinFootGridX**
        * Klik [Ok]
        * ![Step6.1](./Opgave_3c/Images/Step6.1.png)
      * Klik [OK]
    * HøjreKlik og vælg [**Add linear pattern**](https://wiki.freecad.org/PartDesign_LinearPattern)
    * Sæt:
      * Direction: **Base Y axis**
      * Mode: **Offset**
      * Offset: Klik den lille globus
        * Indtast: **VarSet.GridSize**
        * ![Step2.6.2](./Opgave_3a/Images/Step2.6.2.png)
      * Occurrences: Klik den lille globus
        * Indtast **VarSet.BinFootGridY**
        * Klik [Ok]
        * ![Step6.2](./Opgave_3c/Images/Step6.2.png)
      * Klik [OK]
  * ![Step6.3](./Opgave_3c/Images/Step6.3.png)
  * Klik [OK]
  * ComboView -> Model -> 
        * Tænd for **BasePlate**
* ![Step6.4](./Opgave_3c/Images/Step6.4.png)