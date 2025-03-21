# INAFFont

[English](./README.md) | [한국어](./README.ko.md)

Unofficial Font for Ninomae Ina'nis

[Font Preview](https://yf-dev.github.io/inaffont/) | [Download](./dist)

## Overview

INAFFont is a font that includes the distinctive glyphs used in [Ninomae Ina'nis](https://hololive.hololivepro.com/en/talents/ninomae-inanis/)'s artwork.

Some characters that are not represented in the artwork are approximated to look similar to other glyphs, so the actual glyphs may vary.

## Available Fonts

- INAFFont Meconopsis: A font created based on the glyphs used in [『MECONOPSIS』 - Ninomae Ina'nis](https://www.youtube.com/watch?v=XzkNg89Cq9Y) and [【FAN MOVIE】理芽 × ヰ世界情緒 - 不的 (Ina'nis ver.)](https://www.youtube.com/watch?v=qKwwBklpvPA).

## Usage

You can use the font in your projects by downloading the font files or using the webfont.

### Webfont

You can use the webfont by including the following CSS in your project.

```css
@font-face {
    font-family: "INAFFont Meconopsis";
	font-weight: 100;
    font-display: swap;
    src:
        url("https://cdn.jsdelivr.net/gh/yf-dev/inaffont@v0.5/dist/inaffont-meconopsis-thin.woff2") format("woff2"),
        url("https://cdn.jsdelivr.net/gh/yf-dev/inaffont@v0.5/dist/inaffont-meconopsis-thin.otf") format("opentype");
}

@font-face {
    font-family: "INAFFont Meconopsis";
    font-weight: 400;
    font-display: swap;
    src:
        url("https://cdn.jsdelivr.net/gh/yf-dev/inaffont@v0.5/dist/inaffont-meconopsis-regular.woff2") format("woff2"),
        url("https://cdn.jsdelivr.net/gh/yf-dev/inaffont@v0.5/dist/inaffont-meconopsis-regular.otf") format("opentype");
}

@font-face {
    font-family: "INAFFont Meconopsis";
    font-weight: 700;
    font-display: swap;
    src:
        url("https://cdn.jsdelivr.net/gh/yf-dev/inaffont@v0.5/dist/inaffont-meconopsis-bold.woff2") format("woff2"),
        url("https://cdn.jsdelivr.net/gh/yf-dev/inaffont@v0.5/dist/inaffont-meconopsis-bold.otf") format("opentype");
}
```

## Build

```bash
docker compose run --rm fontforge
```

## License

SIL OPEN FONT LICENSE Version 1.1

## Disclaimer

This project is not an official project of Hololive Production or Ninomae Ina'nis.

All rights to each glyph and artwork are assets of the respective owner and licensee.

The font software license is separate from the use of glyphs and artwork, and the use of glyphs and artwork must comply with Hololive Production's [Derivative Works Guidelines](https://hololivepro.com/en/terms/).
