# This script is a modified version of the original script from the following repository:
# https://github.com/civts/svg_to_font
# The original script was licensed under the Apache License 2.0

import argparse
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

import fontforge

EM_SIZE = 200

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Convert a directory of SVG files to a font"
    )
    parser.add_argument(
        "--svg-dir", required=True, type=str, help="Directory containing the SVG files"
    )
    parser.add_argument(
        "--family-name", required=True, type=str, help="Name of the font family"
    )
    parser.add_argument("--font-name", required=True, type=str, help="Name of the font")
    parser.add_argument(
        "--weight-name",
        required=False,
        type=str,
        help="Name of the font weight",
        default="Regular",
    )
    parser.add_argument(
        "--version", required=False, type=str, help="Version of the font", default="0.1"
    )
    parser.add_argument(
        "--output",
        required=False,
        type=str,
        help="Output file name",
        default="font.otf",
    )

    args = parser.parse_args()

    # Define a regular expression pattern to extract the code point from the SVG filename
    pattern = r"([0-9a-fA-F]{4})-(.+)\.svg"

    # Create a new FontForge font object
    font = fontforge.font()
    font.em = EM_SIZE
    seen_codepoints = set()

    # Loop over all SVG files in the input directory
    for file_path in Path(args.svg_dir).rglob("**/*.svg"):
        print(f"Processing {file_path}")
        match = re.search(pattern, file_path.name)
        if not match:
            print(f'Error: Invalid filename "{file_path}"')
            print("It shall be cccc_ddd.svg, where cccc is a")
            print("hexadecimal value and ddd is a description of the glyph.")
            sys.exit(1)

        svg_elem = ET.parse(file_path).getroot()

        # Check if the viewBox attribute begins with "0 0"
        if "viewBox" not in svg_elem.attrib:
            print(f"Error: SVG '{file_path}' is missing the viewBox attribute")
            sys.exit(1)
        elif not svg_elem.attrib["viewBox"].startswith("0 0"):
            print(
                f"Error: SVG '{file_path}' has a viewBox that does not start with '0 0': {svg_elem.attrib['viewBox']}"
            )
            print("This most likely leads to nothing being shown, so please fix this")
            sys.exit(1)

        # Extract the code point from the filename using the regular expression pattern
        code_point = int(match.group(1), 16)

        if code_point in seen_codepoints:
            print(
                f"Error: File '{file_path}' is trying to use a Unicode code point, {code_point},"
            )
            print("which has been already used by another SVG.")
            sys.exit(1)
        else:
            seen_codepoints.add(code_point)

        # Create a new glyph object with the specified code point
        glyph = font.createChar(code_point)

        glyph.importOutlines(str(file_path), scale=False)

        description = match.group(2)
        glyph.glyphname = description

        # Center the glyph
        glyph.color = 0
        glyph.left_side_bearing = int(EM_SIZE * 0.05)
        glyph.right_side_bearing = int(EM_SIZE * 0.05)

        if code_point == 0x0020:
            # Space
            glyph.width = int(EM_SIZE * 0.4)

    # Set font properties
    font.familyname = args.family_name
    font.fontname = args.font_name.replace(" ", "-")
    font.fullname = args.font_name
    font.weight = args.weight_name
    font.version = args.version

    # load the license file
    with open("OFL.md", "r") as f:
        license_text = f.read()
    font.copyright = license_text

    font.autoWidth(1)
    font.autoHint()
    font.autoInstr()

    # Generate the OpenType font file
    font.generate(args.output)
