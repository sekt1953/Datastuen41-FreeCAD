# Failure to make a thick solid.

## Kilde:  https://forum.freecad.org/viewtopic.php?style=5&t=64324

## How to

1) Delete Thickness
2) Select body, in View tab of property view set Display mode from "Through" to "Tip".
3) Go to draft workbench. Select same face as for thickness and create new FaceBinder.
4) Select Body and create new Draft clone.
5) Select Clone, in Data tab of property view expand Scale property to get at x, y, and z.
6) For x property click f(x) icon or press = key on keyboard to bring up formula editor,  
Enter for:  
X: (Body.Shape.BoundBox.XLength - **"Thickness"** * 2) / Body.Shape.BoundBox.XLength  
Y: (Body.Shape.BoundBox.YLength - **"Thickness"** * 2) / Body.Shape.BoundBox.YLength  
Z: (Body.Shape.BoundBox.ZLength - **"Thickness"** * 2) / Body.Shape.BoundBox.ZLength
7) Repeat for y and z substituting YLength and ZLength, respectively.
8) Select Clone, edit Placement property so that Z = -**"Thickness"**.
9) Go to Part workbench.
10) Select Clone first, and then select Body (order of selection is critical), then use the Part Cut tool to create Cut object:

Error: Resulting shape is invalid. Why? Expand the Body, click the Pocket, and in the data tab of the property view set Refine = False. Do the same for the Additive Loft.
