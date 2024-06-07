#!/bin/sh

python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/thin-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis Thin" --weight-name "Thin" --version "0.3" --output "./dist/inaffont-meconopsis-thin.otf"
python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/regular-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis Regular" --weight-name "Regular" --version "0.3" --output "./dist/inaffont-meconopsis-regular.otf"
python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/bold-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis Bold" --weight-name "Bold" --version "0.3" --output "./dist/inaffont-meconopsis-bold.otf"