# Opgave 3.1.1 - Gridfinity Binplate parametric modeling

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
  * Klik på iconen ![](./Images/Icons/CreateBody.png)
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

### Step 3 - Tegn BinBase

* Skjul Baseplate
  * ComboView -> Model -> Baseplate
    * Tryk på mellemrums tangenten for at skjule Baseplate
* Klik nu på **Create Sketch** ![](./Images/Icons/CreateSketch.png)
  * Vælg XY-plane001 (Base plane)
    * Klik [OK]
  * Vælg nu tegne værktøjet **Centered rectangle** ![Centered rectangle](./Images/Icons/CenteredRectangle.png)
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

### Step 4 - Tegn BinProfile

* Klik nu på **Create Sketch** ![](./Images/Icons/CreateSketch.png)
  * Vælg XZ-plane001 (Base plane)
    * Klik [OK]
  * Vælg nu tegne værktøjet **** ![CreatePolyline.png](./Images/Icons/CreatePolyline.png)
    * Tegn en tegning som vist herunder:
    * ![Step3.2.Poliline.png](./Images/Opgave_3/3.1/Step3.2.Poliline.png)
      * Check at de 2 lodrette linier i Sketch004 er lodrette, der skal være en lille rød strg tæt ved dem, hvis ikke så klik på dem en afgangen og tast [v] for vertical constrain
      * på samme måde se efter om den vandretet linie har en rød streg, hvis ikke så vælg linien og klik på [H] for horizontal constrain.
      * Hold [Ctrl] nede og select de to Skrå Linier og klik på [P] for Parallel constrain, din figur skal nu se ud som herunder:
    * ![Step3.2.1.Poliline.png](./Images/Opgave_3/3.1/Step3.2.1.Poliline.png)

### Step 5 - Constrain BinProfile

* Nu skal vi indsætte mål på tegningen
  * Klik på den nederste skrå linies endepunkter
    * Tast [I] for lodret højde, **Insert Length** vinduet åbner
      * ![InsertLength.png](./Images/Icons/InsertLength.png)
      * Klik nu på den lille globus og **Expression Editor** winduet åbner
      * ![ExpressionEditor.png](./Images/Icons/ExpressionEditor.png)
      * Indtast nu **'VarSet.BinBase_Profile_Lower'**
        * Result: 0,80mm
    * Klik [OK], [Ok]
  * Klik på den korte lodrette linies endepunkter
    * Tast [I] for lodret højde, **Insert Length** vinduet åbner
      * ![InsertLength.png](./Images/Icons/InsertLength.png)
      * Klik nu på den lille globus og **Expression Editor** winduet åbner
      * ![ExpressionEditor.png](./Images/Icons/ExpressionEditor.png)
      * Indtast nu **'VarSet.BinBase_Profile_Middle'**
        * Result: 1,80mm
    * Klik [OK], [Ok]
  * Klik på den Øverste skrå linies endepunkter
    * Tast [I] for lodret højde, **Insert Length** vinduet åbner
      * ![InsertLength](./Images/Icons/InsertLength.png)
      * Klik nu på den lille globus og **Expression Editor** winduet åbner
      * ![ExpressionEditor.png](./Images/Icons/ExpressionEditor.png)
      * Indtast nu **'VarSet.BinBase_Profile_Top'**
        * Result: 2,15mm
    * Klik [OK], [Ok]
  * Klik på den Øverste skrå linie, derefter på den vandrette linie, 
    * Tast [K] efterfult af [A], **Insert angle** vinduet åbner
      * ![Insertangle](./Images/Icons/InsertAngle.png)
      * Klik nu på den lille globus og **Expression Editor** winduet åbner
      * ![ExpressionEditor.png](./Images/Icons/ExpressionEditor.png)
      * Indtast nu **'VarSet.Grid_Grid_Profile_Angle'**, og du skal se at Result: 45,00 deg.
      * ![Step5.png](./Images/Opgave_3/3.1/Step5.png)
    * Klik [OK], [Ok]

### Step 6 - BinProfile Lås Sketch005 til Sketch004

* Tryk [0] for Isometric View og zoom in så du ser noget som herunder:
  * ![Step6.1.png](./Images/Opgave_3/3.1/Step6.1.png)
  * Klik ![CreateExternalGeometry.png](./Images/Icons/CreateExternalGeometry.png) 
    * Klik nu på den linie i Sketch004 som krydser X-axis
    * det skal se ud som herunder
    * ![](./Images/Opgave_3/3.1/Step6.2.png)
* Tryk [1] og zoom så du ser noget som herunder
  * ![Step6.3.png](./Images/Opgave_3/3.1/Step6.3.png)
  * Marker den vandrette linies højre endpunkt, og derefter marker set det punkt vi oprettede med external geometri
    * Tast [V] for vertical constrain
  * Marker Profilens nederste punkt, og derefter marker set det punkt vi oprettede med external geometri
  * Tast [H] for horizontal constrain
  * ![Step6.4.png](./Images/Opgave_3/3.1/Step6.4.png)
  * Klik på [0] for at vælge Isometric View
  * Klik [Close]
  * ![Resultat4](./Images/Opgave_3/3.1/Step6.5.png)

### Step 7 - BinProfile - Additive Pipe

