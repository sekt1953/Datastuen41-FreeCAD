# Install Weekly Build på Linux

## Hent FreeCAD Weekly

* Åben [FreeCAD Releases](https://github.com/FreeCAD/FreeCAD/releases)
  * rul ned til i ser dette  
    * ![2009-51-45.png](./images/Skærmbillede%20fra%202026-09-04%2009-51-45.png)
  * Klik på Assets
    * find filer som ender på ***-Linux-x86_64.AppImages***
      * ![2009-52-15.png](./images/Skærmbillede%20fra%202026-09-04%2009-52-15.png)
    * Klik linket for at downloade filen
      * Gem filen i ***~/.local/bin***

## Opret eller ret ~/.local/share/applications/FreeCAD_weekly.desktop

* Tryk ***[Ctrl]+[Alt]+[T]*** for at åbne nano editoren
  * indsæt linien herunder, for at åbne eller oprette filen ***FreeCAD_weekly.desktop***

```code
nano ~/.local/share/applications/FreeCAD_weekly.desktop
```

### Er filen tom så

* Indsæt teksten som herunder
  * Check at filnavnet efter ***Exec=*** er korect

```code
[Desktop Entry]
Type=Application
Name=FreeCAD_weekly
Name[da_DK]=FreeCAD_weekly
Comment=FreeCAD_weekly
Categories=Graphics;Science;Engineering;
Icon=FreeCAD_0.22.png
Exec=FreeCAD_weekly-2026.09.02-Linux-x86_64.AppImage
Terminal=false
StartupNotify=true
GenericName[da_DK]=CAD-program
```

### Havde filen indhold så

* Check at filnavnet efter ***Exec=*** er korect
  * ret filnavnet hvis nødvendigt

```code
Exec=FreeCAD_weekly-2026.09.02-Linux-x86_64.AppImage
```

## mangler du en Icon til FreeCAD så

* Dovnload ***[FreeCAD_0.22.png](https://github.com/sekt1953/Ubuntu-after-installation/blob/main/Ubuntu-24.04/Images/FreeCAD_0.22.png)*** og gem den i ***~/.local/share/icons/***
