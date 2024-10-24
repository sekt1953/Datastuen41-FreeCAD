# Opgave 3.0.1 - Gridfinity Baseplate parametric modeling

## Step 1 - [Opret dokument](./Sketch/Opgave_3.0.1.FCStd)

* Start FreeCAD i Part Design
  * Gem opgaven med filnavnet i dit opgave directory
  * Vælg Model i Combo View
  * ![Combo View](./Images/Opgave_3/ComboView.png)
  * Klik på Create Part ![Create Part](./Images/Opgave_3/Create%20Part.png) vær nu sikker på at det **Create Part** du klikker på det er det **gule icon**, se en beskrivelsen af [Std Part](https://wiki.freecad.org/Std_Part)
  * Klik nu på **Creates a variable set** ![VarSet](./Images/Opgave_3/VarSet.png)
    * Klick [Cancel] for at komme tilbage.
  * Klik nu på **Create Body**, den blå icon ![Create Body](./Images/Opgave_3/Create%20Body.png)
  * Dit Model View skulle nu gerne se ud som herunder
  * ![Step1.png](./Images/Opgave_3/Step1.png)

## Step 2 - [Indsæt i VarSet](./Sketch/Opgave_3.0.2.FCStd)

* Til at opbevaring af vores parametric data vil jeg haer bruge [Std VarSet](https://wiki.freecad.org/Std_VarSet).
* [Klik her for at se mere om Std VarSet](https://wiki.freecad.org/Std_VarSet)
  * [Description](https://wiki.freecad.org/Std_VarSet#Description)
  * [Usage](https://wiki.freecad.org/Std_VarSet#Usage)
  * [Common property types](https://wiki.freecad.org/Std_VarSet#Common_property_types)
  * [Notes](https://wiki.freecad.org/Std_VarSet#Notes)
* [Mere om Property editor](https://wiki.freecad.org/Property_editor)
  * [Introduction](https://wiki.freecad.org/Property_editor#Introduction)
  * [Property types](https://wiki.freecad.org/Property_editor#Property_types)
  * [View and Data properties](https://wiki.freecad.org/Property_editor#View_and_Data_properties)
  * [Basic properties](https://wiki.freecad.org/Property_editor#Basic_properties)
  * [Context menu](https://wiki.freecad.org/Property_editor#Context_menu)

|Name|Group|Type|Value|
|:---|:---|:---|---:|
|GridSize|Grid|App::PropertyLength|42,00mm|
|GridOuterRadius|Grid|App::PropertyLength|4,00mm|
|||||
|BaseplatePadLength|Baseplate|App::PropertyLength|3,00mm|
|BaseplatePad2nd_Length|Baseplate|App::PropertyLength|0,40mm|
|||||
|BasePlateProfileLower|Baseplate|App::PropertyLength|0,70mm|
|BasePlateProfileMiddle|Baseplate|App::PropertyLength|1,80mm|
|BasePlateProfileTop|Baseplate|App::PropertyLength|2,15mm|
|BasePlateProfileHeigth|Baseplate|App::PropertyLength|2,15mm|
|BasePlateProfileAngle|Baseplate|App::PropertyAngle|45,00 deg|
|||||
|BasePlateGridX|Baseplate|App::PropertyInteger|2|
|BasePlateGridY|Baseplate|App::PropertyInteger| 3|

* Double klik nu på **{} VarSet** i Model View
  * Tilføj nu værdierne som listet herover, sikre dig at Navn, Group & Type er korrekte
  * klik igen på VarSet og tilføj Value
  * Dit Model View skulle nu gerne se ud som herunder
* ![Step2.png](./Images/Opgave_3/Step2a.png) 

## Step 3 - [Tegn Baseplate 1. trin - Opret Sketchs](./Sketch/Opgave_3.0.3.FCStd)

* Klik nu på **Create Sketch** ![CreateSketch](./Images/Opgave_3/CreateSketch.png
)  
  * Vælg XY-plane001 (Base plane)
    * Klik [OK]
    * Vælg nu tegne værktøjet **Centered rectangle** ![Centered rectangle](./Images/Opgave_3/Skærmbillede%20fra%202024-10-22%2020-41-29.png)
      * Start tergnigen i nulpunket.
      * du skulle nu have en figur som her
      * ![Step3a](./Images/Opgave_3/Skærmbillede%20fra%202024-10-22%2021-02-18.png)
      * Klik ComboView -> Task [Close]
* Klik nu på **Create Sketch** ![CreateSketch](./Images/Opgave_3/CreateSketch.png
)  
  * Vælg XY-plane001 (Base plane)
    * Klik [OK]
    * Vælg nu tegne værktøjet **Centered rectangle** ![Centered rectangle](./Images/Opgave_3/Skærmbillede%20fra%202024-10-22%2020-41-29.png)
    * Select **Rounded corners**
    * ![Rounded corners](./Images/Opgave_3/RoundedCorners.png)
      * Start tergnigen i nulpunket.
      * Tegn nu en firkant, klik og ryk lidt tilbage så der kommer runde hjørner.
      * du skulle nu have en figur som her
      * ![Step3b](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2010-16-23.png)
      * Klik ComboView -> Task [Close]
* Klik nu på **Create Sketch** ![CreateSketch](./Images/Opgave_3/CreateSketch.png
)  
  * Vælg XZ-plane001 (Base plane)
    * Klik [OK]
    * Vælg nu tegne værktøjet **Create Polyline** ![Create Polyline](./Images/Opgave_3/CreatePolyline.png)
      * Tegn en tegning som vist herunder:
      * ![Step3c](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2010-22-43.png)
      * Klik ComboView -> Task [Close]
* I ComboView -> Model Klik på Body
  * Klik [F2] for at omdøbe Body til Baseplate
  * Du skal nu have noget der ser ud som herunder
  * ![Baseplate](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2010-40-34.png)

## Step 4 - [Constraint Sketchs](./Sketch/Opgave_3.0.4.FCStd)

* [Sketcher Workbench](https://wiki.freecad.org/Sketcher_Workbench)
  * [Constraints](https://wiki.freecad.org/Sketcher_Workbench#Constraints)
* Constraint Sketch, 
  * Dobbeltklik på ConboView -> Model -> Sketch
  * ![](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2011-15-59.png)
  * for at åbne Sketch i Sketcher.
    * Selct en lodret og vandret linie og tryk på ![ConstrainEqual](./Images/Opgave_3/ConstrainEqual.png) eller [E], for at sætte dem til samme længde, du skulle nu se en kvardrat.
    * Klik på den vandrette linie for at sætte længden og Klik [L]
      * Insert Length vinduet åbner
      * ![InsertLength](./Images/Opgave_3/InsertLength.png)
      * Klik nu på den lille globus og Expression Editor windue åbner
      * ![](./Images/Opgave_3/ExpressionEditor.png)
      * Indtast nu 'VarSet.GridSize', og du skal se at Result: 42,00mm
      * ![Resultat1](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2011-33-35.png)
      * Klik [OK], [Ok] og [Close]
  * Dobbeltklik på ConboView -> Model -> Sketch001
  * for at åbne Sketch001 i Sketcher.
    * Selct en lodret og vandret linie og tryk på ![ConstrainEqual](./Images/Opgave_3/ConstrainEqual.png) eller [E], for at sætte dem til samme længde, du skulle nu se en kvardrat.
    * Klik på et af de krumme hjørner og tryk [D]
      * Insert radius vindue åbner
      * Klik nu på den lille globus og Expression Editor windue åbner
      * Indtast nu 'VarSet.GridOuterRadius', og du skal se at Result: 4,00mm
      * Klik [OK], [Ok]
    * Klik på [External geometry](https://wiki.freecad.org/Sketcher_External) ![CreateExternalGeometry](./Images/Opgave_3/CreateExternalGeometry.png) 
      * select den nederste vandrett linie i Sketch (kavdraten), det skal nu se ud som herunder
      * ![CreateExternalGeometry2](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2011-48-27.png)
    * Select nu den stiplede linie og punktet med pilen i nederste højre runde hjørne og klik på [Coincident](https://wiki.freecad.org/Sketcher_ConstrainCoincidentUnified) ![Coincident](./Images/Opgave_3/Coincident.png) eller [C], herunder ser du hvardan resultatet bør se ud
    * ![Resultat4](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2011-58-27.png)
    * Klik [Close]
  * Dobbeltklik på ComboView -> Model -> Sketch002
  * for at åbne Sketch002 i Sketcher.
    * Klik på [0] for at vælge Isometric View
    * ![Isometric View](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2012-30-30.png)
      * I comboView -> Model
        * Select Sketch og tryk på mellemrums tangenten for skjule Sketch
        * ![Skjule](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2012-35-00.png)
        * Zoomind og så i kan se Nulpunktet og Sketch002
          * select ![](./Images/Opgave_3/CreateExternalGeometry.png) klik på Sketch001 så i får en punkt markeret på X-axis, som vist herunder.
          * ![ext3](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2012-35-00.png)
    * Klik [1] for FrontView
    * ![frontview](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2012-47-20.png)
      * Check at de 2 lodrette linier i Sketch002 er lodrette, der skal være en lille rød strg tæt ved dem, hvis ikke så klik på dem en afgangen og tast [v] for vertical constrain
      * på samme måde se efter om den vandretet linie har en rød streg, hvis ikke så vælg linien og klik på [H] for horizontal constrain.
      * Hold [Ctrl] nede og select de to Skrå Linier og klik på [P] for Parallel constrain, din figur skal nu se ud som herunder:
      * ![Skærmbillede%20fra%202024-10-24%2012-55-57](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2012-55-57.png)
    * Nu skal vi indsætte mål på tegningen
      * Klik på den nederste skrå linies endepunkter
        * Tast [I] for lodret højde, **Insert Length** vinduet åbner
        * ![InsertLength](./Images/Opgave_3/InsertLength.png)
        * Klik nu på den lille globus og **Expression Editor** winduet åbner
        * ![](./Images/Opgave_3/ExpressionEditor.png)
        * Indtast nu 'VarSet.BasePlateProfileLower', og du skal se at Result: 0,70mm
      * ![Resultat1](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2020-22-36.png)
      * Klik [OK], [Ok]
      * Klik på den korte lodrette linies endepunkter
        * Tast [I] for lodret højde, **Insert Length** vinduet åbner
        * ![InsertLength](./Images/Opgave_3/InsertLength.png)
        * Klik nu på den lille globus og **Expression Editor** winduet åbner
        * ![](./Images/Opgave_3/ExpressionEditor.png)
        * Indtast nu 'VarSet.BasePlateProfileMiddle', og du skal se at Result: 1,80mm
      * ![Resultat1](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2020-26-27.png)
      * Klik [OK], [Ok]
      * Klik på den Øverste skrå linies endepunkter
        * Tast [I] for lodret højde, **Insert Length** vinduet åbner
        * ![InsertLength](./Images/Opgave_3/InsertLength.png)
        * Klik nu på den lille globus og **Expression Editor** winduet åbner
        * ![](./Images/Opgave_3/ExpressionEditor.png)
        * Indtast nu 'VarSet.BasePlateProfileTop', og du skal se at Result: 2,15mm
      * ![Resultat1](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2020-28-20.png)
      * Klik [OK], [Ok]
      * Klik på den Øverste skrå linie, derefter på den vandrette linie, 
        * Tast [K] efterfult af [A], **Insert angle** vinduet åbner
        * ![Insertangle](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2020-32-15.png)
        * Klik nu på den lille globus og **Expression Editor** winduet åbner
        * ![](./Images/Opgave_3/ExpressionEditor.png)
        * Indtast nu 'VarSet.BasePlateProfileAngle', og du skal se at Result: 45,00 deg.
      * ![Resultat1](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2020-33-58.png)
      * ![Skærmbillede%20fra%202024-10-24%2020-39-59](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2020-39-59.png)
      * Klik [OK], [Ok]
    * Lås nu Sketch002 til Sketch001
      * Marker den vandrette linies højre endpunkt, og derefter marker set det punkt vi oprettede med external geometri
      * Tast [V] for vertical constrain
      * ![vertical constrain](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2020-38-43.png)
      * Marker Sketch002 nederste punkt, og derefter marker set det punkt vi oprettede med external geometri
      * Tast [H] for horizontal constrain
      * ![Skærmbillede%20fra%202024-10-24%2020-39-59](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2020-44-41.png)
      * Klik på [0] for at vælge Isometric View
      * Klik [Close]
    * I comboView -> Model
      * Select Sketch og tryk på mellemrums tangenten for vise Sketch igen
      * ![Resultat4](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2020-51-40.png)

## Step 5 - [Part Design Modeling tools - Pad Sketch002](./Sketch/Opgave_3.0.5.FCStd)

* I comboView -> Model
  * Marker på Sketch
  * Klik på Pad ![Pad](./Images/Opgave_3/Pad.png)
    * Select Type: Two dimensions
      * Klik på Globusen for Length feltet, og **Expression Editor** winduet åbner
      * ![ExpressionEditor](./Images/Opgave_3/ExpressionEditor.png)
        * Indtast nu 'VarSet.BasePlateProfileHeigth', og du skal se at Result: 4,65 mm.
        * Klik [OK]
      * Klik på Globusen for Length feltet, og **Expression Editor** winduet åbner
      * ![ExpressionEditor](./Images/Opgave_3/ExpressionEditor.png)
        * Indtast nu 'VarSet.BaseplatePad2nd_Length', og du skal se at Result: 0,40 mm.
        * Klik [OK], [OK]
  * Marker Sketch002 & Sketch001, i denne rækkefølge
    * ![Skærmbillede%20fra%202024-10-24%2021-12-54](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2021-12-54.png)
    * Klik nu på SubtractivePipe ![SubtractivePipe](./Images/Opgave_3/SubtractivePipe.png)
    * ![Skærmbillede%20fra%202024-10-24%2021-15-55](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2021-15-55.png)
    * klik [OK]
    * ![Skærmbillede%20fra%202024-10-24%2021-17-36](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2021-17-36.png)
  * Klik **Create Sketch** ![Create Sketch](./Images/Opgave_3/CreateSketch.png), Select XY-plane001
    * Klik **View section** ![View section](./Images/Opgave_3/ViewSection.png)
    * Klik **CreateExternalGeometry** ![CreateExternalGeometry](./Images/Opgave_3/CreateExternalGeometry.png) 
    * Klik nu midt på et af de runde hjørner
    * ![runde hjørner](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2021-26-30.png)
    * Vælg nu tegne værktøjet **Centered rectangle** ![Centered rectangle](./Images/Opgave_3/Skærmbillede%20fra%202024-10-22%2020-41-29.png)
    * Select **Rounded corners**
    * ![Rounded corners](./Images/Opgave_3/RoundedCorners.png)
      * Start tergnigen i nulpunket.
      * Tegn nu en firkant, klik og ryk lidt tilbage så der kommer runde hjørner.
      * du skulle nu have en figur som her
      * ![Step5b](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2021-30-22.png)
      * Marker de to store og det lille cirkeludsnit, og tast [E]
        * ![Skærmbillede%20fra%202024-10-24%2021-36-07](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2021-36-07.png)
        * Klik [Close]
      * Klik nu på **Pocket** ![pocket](./Images/Opgave_3/Pocket.png)
        * **Pocket parameterters -> Type : Through all**
        * **Pocket parameterters -> Reversed : true**
        * Klik [OK]
        * ![Skærmbillede%20fra%202024-10-24%2021-42-24](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2021-42-24.png)
        *

## Step 6 - [Transformation tools - MultiTransform](./Sketch/Opgave_3.0.6.FCStd)

* Marker ComboView -> Model **Pad, SubtractivePipe og Pocket**
  * ![](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2021-48-51.png)
  * Klik på **Create Multitransform** ![CreateMultitransform](./Images/Opgave_3/CreateMultitransform.png)
    * **MultiTransform Parameters -> Transformations**
      * Højreklik, og vælg  **Add LinarPattern**
      * Sæt Parameter som følger:
        * Direction : **Base X axis**
        * Mode: **Offset**
        * Offset: Klik på Globus
          * Expression editor: **VarSet.GridSize**, Resultat 42,00 mm
          * Klik [OK]
        * Occurrences:  Klik på Globus
          * Expression editor: **VarSet.BasePlateGridX**, Resultat 2,00
          * Klik [OK],[OK]
      * Højreklik, og vælg  **Add LinarPattern**
      * Sæt Parameter som følger:
        * Direction : **Base Y axis**
        * Mode: **Offset**
        * Offset: Klik på Globus
          * Expression editor: **VarSet.GridSize**, Resultat 42,00 mm
          * Klik [OK]
        * Occurrences:  Klik på Globus
          * Expression editor: **VarSet.BasePlateGridY**, Resultat 3,00
          * Klik [OK],[OK], [Ok]
* Opgave Slut:
  * ![Skærmbillede%20fra%202024-10-24%2022-02-45.png](./Images/Opgave_3/Skærmbillede%20fra%202024-10-24%2022-02-45.png)
