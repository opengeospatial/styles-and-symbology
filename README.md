# OGC Styles & Symbology

This repository hosts the working draft documents for the multi-part OGC Cartographic Symbology Standard. **Part 1: Core model and encodings** is available as [HTML](https://docs.ogc.org/DRAFTS/18-067r4.html) or [PDF](https://docs.ogc.org/DRAFTS/18-067r4.pdf) and is to be considered version **2.0** of "SymCore".
The following extensions are also planned:

- Part 2: Model extension for graphical shapes and transformations
- Part 3: Model extension for geometry relations and manipulation
- Part 4: Model extension for additional coverage symbolization

In comparison to the current _OGC Symbology Conceptual Model: Core Part ("SymCore")_ version 1.0, the new draft candidate Standard aims to better reflect its classification as an OGC Implementation Standard by including the requirements classes needed to enable the implementation of interoperable ***encodings***, ***renderers*** (e.g., [_OGC API - Maps_](https://github.com/opengeospatial/ogcapi-maps/) / [_OGC API - Tiles_](https://github.com/opengeospatial/ogcapi-tiles)) and systems ***parsing*** and/or ***generating*** style definitions (e.g., [_OGC API - Styles_](https://github.com/opengeospatial/ogcapi-styles/), visual style editors, style transcoders).

It does so by featuring:
- A **modular logical and conceptual model** for styling capabilities,
- A [**minimal Core**](https://docs.ogc.org/DRAFTS/18-067r4.html#toc20) requirements class including clear extension mechanisms, through the definition of abstract _Selectors_, _Symbolizers_, and _Expressions_,
- a basic [**Vector Styling**](https://docs.ogc.org/DRAFTS/18-067r4.html#toc23) requirements class,
- a basic [**Coverage Styling**](https://docs.ogc.org/DRAFTS/18-067r4.html#toc26) requirements class,
- requirements classes providing additional styling functionality,
- [**CartoSym-JSON, a JSON encoding**](https://docs.ogc.org/DRAFTS/18-067r4.html) of the conceptual and logical model facilitating machine readability,
- [**CartoSym-CSS, a CSS-inspired encoding**](https://docs.ogc.org/DRAFTS/18-067r4.html) of the conceptual and logical model facilitating hand-editing.

_The current **published** version of OGC Symbology Conceptual Model: Core Part (SymCore) **1.0** is available in [HTML](https://docs.ogc.org/is/18-067r3/18-067r3.html) or [PDF](https://docs.ogc.org/is/18-067r3/18-067r3.pdf)._

## Part 1 Requirements classes

### Basic portrayal capabilities
- a [core symbology conceptual and logical model](https://docs.ogc.org/DRAFTS/18-067r4.html#toc20) based on Styles as a list of Styling Rules consisting of a Symbolizer and optional Selector Expression,
- basic [vector styling](https://docs.ogc.org/DRAFTS/18-067r4.html#toc23) (including fills, strokes, and markers supporting text, image or dot graphics)
- basic [coverage styling](https://docs.ogc.org/DRAFTS/18-067r4.html#toc26) (including mapping fields to a color, alpha or single channel and applying a colormap),
- basic [labeling](https://docs.ogc.org/DRAFTS/18-067r4.html) (placement of labels supporting text, image or dot graphics)

### Common portrayal capabilities

- [hill shading](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [font outlines](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [dashed strokes](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [stroke casing and center lines](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [hatch fills](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [stipple fills](https://docs.ogc.org/DRAFTS/18-067r4.html)

### Additional Expression capabilities

- [expressions as parameter values](https://docs.ogc.org/DRAFTS/18-067r4.html) for any symbolizer properties,
- using [identifiers on the right side](https://docs.ogc.org/DRAFTS/18-067r4.html) of operation expressions,
- [conditional expressions](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [variables](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [arithmetic operators](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [text relation operators](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [function call expressions](https://docs.ogc.org/DRAFTS/18-067r4.html),
- [array relations](https://docs.ogc.org/DRAFTS/18-067r4.html) standard functions,
- [text manipulation](https://docs.ogc.org/DRAFTS/18-067r4.html) standard functions,

### Encodings

- [JSON encoding](https://docs.ogc.org/DRAFTS/18-067r4.html) that can be readily parsed by a generic JSON parser,
- [Cascading Cartographic Symbology Style Sheets](https://docs.ogc.org/DRAFTS/18-067r4.html), a more expressive encoding inspired from Web CSS and other cartographic CSS-like (e.g., GeoCSS, CartoCSS, MapCSS, GNOSIS CMSS) which is better suited to hand-edit styles.

The following requirements classes are planned for the next parts of the standard:

## [Part 2](https://github.com/opengeospatial/styles-and-symbology/tree/main/2-shapes) Requirements classes

### Advanced Stroke and Fills

- specific joins and caps for Strokes
- Graphic pattern Strokes,
- Graphic pattern Fills,
- gradient fills

### Additional portrayal capabilities

- shape graphics including circles, ellipses, arcs, rectangles (rounded or not) and paths (polylines and polygons),
- shape outlines,
- vector graphic hierarchy, including full 2D transforms,
- 3D model graphics and 3D transforms,
- image outlines

## [Part 3](https://github.com/opengeospatial/styles-and-symbology/tree/main/3-geometry) Requirements classes

### Additional Expression capabilities

- spatial relation standard functions,
- temporal relation standard fuctions,
- geometry manipulation standard functions,
- symbolizer geometry

## [Part 4](https://github.com/opengeospatial/styles-and-symbology/tree/main/4-coverageplus) Requirements classes

### Advanced Coverage Styling

- bitwise operators,
- coverage as points,
- coverage as contours,
- contrast enhancement,
- hue, saturation, value modifier,
- aggregation functions

## Communication

Join the OGC Styles & Symbology [mailing list](https://lists.ogc.org/mailman/listinfo/styles-se.swg).

Visit the OGC Styles & Symbology [project on the OGC portal](https://portal.ogc.org/files/?artifact_id=37164) after signing the [Observer Agreement](https://portal.ogc.org/files/?artifact_id=92169).

Most work on the specification takes place in [GitHub issues](https://github.com/opengeospatial/styles-and-symbology/issues),
so browse there to get a good idea of what is happening, as well as past decisions.

## Contributing

The contributor understands that any contributions, if accepted by the OGC Membership, shall be incorporated into OGC standards documents and that all copyright and intellectual property shall be vested to the OGC.

The OGC Styles & Symbology Standards Working Group (SWG) is the group at OGC responsible for the stewardship of the standard, but is working to do as much work in public as possible.

* [Open issues](https://github.com/opengeospatial/styles-and-symbology/issues)
* [Copy of License Language](https://raw.githubusercontent.com/opengeospatial/styles-and-symbology/main/LICENSE)

Pull Requests from contributors are welcomed. However, please note that by sending a Pull Request or Commit to this GitHub repository, you are agreeing to the terms in the [Observer Agreement](https://portal.ogc.org/files/?artifact_id=37164).
