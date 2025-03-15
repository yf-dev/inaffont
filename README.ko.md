# INAFFont

[English](./README.md) | [한국어](./README.ko.md)

비공식 Ninomae Ina'nis 폰트

[Font Preview](https://yf-dev.github.io/inaffont/index.ko.html) | [Download](./dist)

## 개요

INAFFont는 [Ninomae Ina'nis](https://hololive.hololivepro.com/en/talents/ninomae-inanis/)의 아트워크에 사용하는 특징적인 글리프 담은 폰트입니다.

아트워크에 표현되지 않아 글리프를 알 수 없는 일부 글자는 다른 글리프와 비슷하게 보이도록 추정하여 만들었으므로, 실제 글리프와 다를 수 있습니다.

## 사용 가능한 폰트

- INAFFont Meconopsis: [『MECONOPSIS』 - Ninomae Ina'nis](https://www.youtube.com/watch?v=XzkNg89Cq9Y)와 [【FAN MOVIE】理芽 × ヰ世界情緒 - 不的 (Ina'nis ver.)](https://www.youtube.com/watch?v=qKwwBklpvPA)에 사용된 글리프를 바탕으로 만든 폰트입니다.

## 사용 방법

폰트 파일을 다운로드하거나 웹폰트를 사용하여 프로젝트에서 폰트를 사용할 수 있습니다.

### 웹폰트

다음의 CSS를 프로젝트에 포함하여 웹폰트를 사용할 수 있습니다.

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

## 면책 조항

이 프로젝트는 Hololive Production 또는 Ninomae Ina'nis의 공식 프로젝트가 아닙니다.

각 글리프 및 아트워크에 대한 모든 권리는 해당 소유자 및 사용 허가자의 자산입니다.

폰트 소프트웨어의 라이선스와는 별개로, 글리프 및 아트워크에 대한 사용 허가는 Hololive Production의 [Derivative Works Guidelines](https://hololivepro.com/en/terms/)에 따라야 합니다.