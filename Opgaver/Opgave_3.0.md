# Opgave 3.0 - Gridfinity

## VarSet

### Gridfinity Parameters

|Name|Group|Type|Value|
|:---|:---|:---|---:|
|GridSize|Gridfinity|App::PropertyLength|42,00mm|
|GridOuterRadius|Gridfinity|App::PropertyLength|4,00mm|
|GridBinOffset_Horzontal|Gridfinity|App::PropertyLength|0,25mm|
|GridBinOffset_Vertical|Gridfinity|App::PropertyLength|0,1mm|
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
|BasePlateProfileHeigth|Baseplate|App::PropertyLength|2,15mm|

### Bin Parameters

|Name|Group|Type|Value|
|:---|:---|:---|:---|
|BinGridX|Bin|App::PropertyInteger|1|
|BinGridY|Bin|App::PropertyInteger|3|
|BinOuterRadius|Gridfinity|App::PropertyLength|VarSet.GridOuterRadius- VarSet.GridBinOffset_Horzontal|

### BinBase Parameters

|Name|Group|Type|Value|
|:---|:---|:---|:---|
|BinBase_Profile_Lower|Bin|App::PropertyLength|0,80mm|
|BinBase_Profile_Middle|Bin|App::PropertyLength|1,80mm|
|BinBase_Profile_Top|Bin|App::PropertyLength|2,15mm|
|BinBase_Profile_Height|Bin|App::PropertyLength|mm|

### BimBasket Parameters

|Name|Group|Type|Value|
|:---|:---|:---|:---|
|BinBasket_Height|BinBasket|App::PropertyLength|21,00mm|
