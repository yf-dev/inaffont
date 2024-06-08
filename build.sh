#!/bin/sh

export INAFFONT_VERSION="0.4"

python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/thin-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis Thin" --weight-name "Thin" --version "$INAFFONT_VERSION" --output "./dist/inaffont-meconopsis-thin.otf"
python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/regular-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis Regular" --weight-name "Regular" --version "$INAFFONT_VERSION" --output "./dist/inaffont-meconopsis-regular.otf"
python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/bold-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis Bold" --weight-name "Bold" --version "$INAFFONT_VERSION" --output "./dist/inaffont-meconopsis-bold.otf"
python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/thin-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis Thin" --weight-name "Thin" --version "$INAFFONT_VERSION" --output "./dist/inaffont-meconopsis-thin.woff2"
python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/regular-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis Regular" --weight-name "Regular" --version "$INAFFONT_VERSION" --output "./dist/inaffont-meconopsis-regular.woff2"
python ./src/svg_to_font.py --svg-dir ./src/inaffont-meconopsis/bold-glyphs --family-name "INAFFont Meconopsis" --font-name "INAFFont Meconopsis Bold" --weight-name "Bold" --version "$INAFFONT_VERSION" --output "./dist/inaffont-meconopsis-bold.woff2"