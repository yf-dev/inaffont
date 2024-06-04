@echo off
echo Configuring the system path to add FontForge...
set "FF=C:\Program Files (x86)\FontForgeBuilds\"
set "PYTHONHOME=%FF%"

if not defined FF_PATH_ADDED (
set "PATH=%FF%;%FF%\bin;%PATH:"=%"
set FF_PATH_ADDED=TRUE
)

for /F "tokens=* USEBACKQ" %%f IN (`dir /b "%FF%lib\python*"`) do (
set "PYTHONPATH=%FF%lib\%%f"
)

ffpython .\svg_to_font.py --svg-dir .\inaffont-meconopsis\regular-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis" --weight-name "Regular" --output "./dist/inaffont-meconopsis-regular.otf"
ffpython .\svg_to_font.py --svg-dir .\inaffont-meconopsis\bold-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis" --weight-name "Bold" --output "./dist/inaffont-meconopsis-bold.otf"