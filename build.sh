#!/bin/sh

python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/regular-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis" --weight-name "Regular" --output "./dist/inaffont-meconopsis-regular.otf"
python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/bold-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis" --weight-name "Bold" --output "./dist/inaffont-meconopsis-bold.otf"