# Opgave 3.0.1 - Gridfinity Baseplate parametric modeling

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

## [Data](https://www.printables.com/model/417152-gridfinity-specification)

|BinBase Profile|BinBase Plane View|
|:---:|:---:|
|![BinBaseProfileView.png](./Images/Opgave_3/BinBaseProfileView.png)|![BinBasePlaneView.png](./Images/Opgave_3/BinBasePlaneView.png)|

## Step 1 - [Åben dokument - PartDesign Workbench](https://wiki.freecad.org/PartDesign_Workbench)

* File 
  * Open dokument
    * Opgave_3.0.FCStd
  * Gem dokument as
    * Opgave_3.1.1.FCStd
* Create Body
  * Klik på iconen ![](./Images/Opgave_3/Create%20Body.png)
  * Omdøb den ny **Body** til **Bin**
* Du skal nu se noget som herunder:
  * ![](./Images/Opgave_3/3.1/Step1.png)

## Step 2 - Indsæt data for Bins/Blocks i VarSet

|Name|Group|Type|Value|
|:---|:---|:---|:---|
|BinBase_Grid_Offset|Bin|App::PropertyLength|0,25mm|
|BinBase_Profile_Lower|Bin|App::PropertyLength|0,80mm|
|BinBase_Profile_Middle|Bin|App::PropertyLength|1,80mm|
|BinBase_Profile_Top|Bin|App::PropertyLength|2,15mm|
|BinBase_Profile_Height|Bin|App::PropertyLength|mm|
|BinBase_Profile_Angle|Bin|App::PropertyAngle|45,00 deg|
|||||
|BinBase_Grid_X|Bin|App::PropertyInteger|1|
|BinBase_Grid_Y|Bin|App::PropertyInteger|1|

* Double klik nu på **{} VarSet** i Model View
  * Tilføj nu værdierne som listet herover, sikre dig at Navn, Group & Type er korrekte
  * klik igen på VarSet og tilføj Value
  * Dit Model View skulle nu gerne se ud som herunder
* ![Step2.png](./Images/Opgave_3/3.1/Step2a.png)

### Step 3 - Tegn BinBase 1. trin

* Skjul Baseplate
  * ComboView -> Model -> Baseplate
    * Tryk på mellemrums tangenten for at skjule Baseplate
* Klik nu på **Create Sketch** ![](./Images/Opgave_3/CreateSketch.png)
  * Vælg XY-plane001 (Base plane)
    * Klik [OK]
  * Vælg nu tegne værktøjet **Centered rectangle** ![Centered rectangle](./Images/Opgave_3/Skærmbillede%20fra%202024-10-22%2020-41-29.png)
    * Start firkant med runde hjørner i nulpunket.
      * Tegn nu en firkant, klik og ryk lidt tilbage så der kommer runde hjørner.
    * Sæt Radius på hjørnerne
      * Marker et en hjørne kurve og tryk [D]
        * Insert radius vindue åbner
        * Klik nu på den lille globus og Expression Editor windue åbner
        * Indtast nu 'VarSet.GridOuterRadius - VarSet.BinBase_Grid_Offset', og du skal se at Result: 3,75mm
        * Klik [OK], [Ok]
      * du skulle nu have en figur som her
      * ![Step3.1](./Images/Opgave_3/3.1/Step3.1a.png)
    * Sæt bredde på firkanten
      * Market de to yderste punkter på de nederste runde hjørner og Tryk [L]
        * Insert length vindue åbner
        * Klik nu på den lille globus og Expression Editor windue åbner
        * Indtast nu 'VarSet.GridSize - 2 * VarSet.BinBase_Grid_Offset', og du skal se at Result: 41,50mm
        * Klik [OK], [Ok]
      * du skulle nu have en figur som her
      * ![Step3.2](./Images/Opgave_3/3.1/Step3.2.png)
        * Klik [Close]

### Step 3 - Tegn BinProfile 2. trin

* Klik nu på **Create Sketch** ![](./Images/Opgave_3/CreateSketch.png)
  * Vælg XZ-plane001 (Base plane)
    * Klik [OK]
  * Vælg nu tegne værktøjet **** ![CreatePolyline.png](./Images/Opgave_3/CreatePolyline.png)
    * Tegn en tegning som vist herunder:
    * ![Step3.2.Poliline.png](./Images/Opgave_3/3.1/Step3.2.Poliline.png)
      * Check at de 2 lodrette linier i Sketch004 er lodrette, der skal være en lille rød strg tæt ved dem, hvis ikke så klik på dem en afgangen og tast [v] for vertical constrain
      * på samme måde se efter om den vandretet linie har en rød streg, hvis ikke så vælg linien og klik på [H] for horizontal constrain.
      * Hold [Ctrl] nede og select de to Skrå Linier og klik på [P] for Parallel constrain, din figur skal nu se ud som herunder:
    * ![Step3.2.1.Poliline.png](./Images/Opgave_3/3.1/Step3.2.1.Poliline.png)
