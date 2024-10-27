# Opgave 3.0 - Gridfinity

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

||Baseplate|BinBase|
|:---:|:---:|:---:|
|Profile|![Skærmbillede%20fra%202024-10-20%2023-44-28.png](./Images/Opgave_3/Skærmbillede%20fra%202024-10-20%2023-44-28.png)|![BinBaseProfileView.png](./Images/Opgave_3/BinBaseProfileView.png)|
|View|![Skærmbillede%20fra%202024-10-20%2023-44-46.png](./Images/Opgave_3/Skærmbillede%20fra%202024-10-20%2023-48-47.png)|![BinBasePlaneView.png](./Images/Opgave_3/BinBasePlaneView.png)|

## VarSet

### Gridfinity Parameters

|Name|Group|Type|Value|
|:---|:---|:---|---:|
|GridSize|Gridfinity|App::PropertyLength|42,00mm|
|GridOuterRadius|Gridfinity|App::PropertyLength|4,00mm|
|||||
|GridProfileAngle|Gridfinity|App::PropertyAngle|45,00 deg|

### BasePlate Parameters

|Name|Group|Type|Value|
|:---|:---|:---|---:|
|BasePlateGridX|Baseplate|App::PropertyInteger|2|
|BasePlateGridY|Baseplate|App::PropertyInteger|3|
|||||
|BaseplatePadLength|Baseplate|App::PropertyLength|3,00mm|
|BaseplatePad2nd_Length|Baseplate|App::PropertyLength|0,40mm|
|||||
|BasePlateProfileLower|Baseplate|App::PropertyLength|0,70mm|
|BasePlateProfileMiddle|Baseplate|App::PropertyLength|1,80mm|
|BasePlateProfileTop|Baseplate|App::PropertyLength|2,15mm|
|BasePlateProfileHeigth|Baseplate|App::PropertyLength|BasePlateProfileLower +  BasePlateProfileMiddle + BasePlateProfileTop|

### Bin Parameters

|Name|Group|Type|Value|
|:---|:---|:---|:---|
|BinOffset_Horzontal|Gridfinity|App::PropertyLength|0,25mm|
|BinOffset_Vertical|Gridfinity|App::PropertyLength|0,1mm|
|BinOuterRadius|Bin|App::PropertyLength|GridOuterRadius - BinOffset_Horzontal|
|BinGrid|Bin|App::PropertyLength|GridSize - 2 * BinOffset_Horzontal|

### BinBase Parameters

|Name|Group|Type|Value|
|:---|:---|:---|:---|
|BinBase_Profile_Lower|Bin|App::PropertyLength|0,80mm|
|BinBase_Profile_Middle|Bin|App::PropertyLength|1,80mm|
|BinBase_Profile_Top|Bin|App::PropertyLength|2,15mm|
|BinBase_Profile_Height|Bin|App::PropertyLength|BinBase_Profile_Lower + BinBase_Profile_Middle + BinBase_Profile_Top|

### BinBasket Parameters

|Name|Group|Type|Value|
|:---|:---|:---|:---|
|BinBasketGridX|Bin|App::PropertyInteger|1|
|BinBasketGridY|Bin|App::PropertyInteger|3|
|||||
|BinBasket_WidthX|BinBasket|App::PropertyLength|GridSize * BinBasket_GridX - 2 * BinOffset_Horzontal|
|BinBasket_LengthY|BinBasket|App::PropertyLength|GridSize * BinBasket_GridY - 2 * BinOffset_Horzontal|
|||||
|BinBasket_Height|BinBasket|App::PropertyLength|21,00mm|
|BinBasket_Wall|BinBasket|App::PropertyLength|1,50mm|
