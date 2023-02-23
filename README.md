# OGC Styles & Symbology

This repository hosts the working draft documents for the _Core Models and Encodings for Styling and Symbology - Part 1: Core_ ("SymCore") **2.0**.

The latest version of this draft is available in [HTML](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html) or [PDF](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.pdf).

In comparison to the current version 1.0, _OGC Symbology Conceptual Model: Core Part ("SymCore")_, the new draft candidate Standard aims to better reflect its classification as an OGC Implementation Standard by including the requirements classes needed to enable the implementation of interoperable ***encodings***, ***renderers*** and applications ***reading*** and ***writing*** styles.

It does so by featuring:
- A **modular logical and conceptual model** for styling capabilities,  
- A [**minimal Core**](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc20) requirements class including clear extension mechanisms, through the definition of abstract Selectors, Symbolizers, and Expressions,
- a basic [**Vector Styling**](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc23) requirements class,
- a basic [**Coverage Styling**](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc26) requirements class,
- requirements classes providing [**additional functionality**,
- a [**JSON**](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc67) encoding of the conceptual and logical model facilitating machine readability,
- a [**CSS**](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc70)-inspired encoding of the conceptual and logical model facilating hand-editing.

The current published version of OGC Symbology Conceptual Model: Core Part (SymCore) **1.0** is available in [HTML](https://docs.ogc.org/is/18-067r3/18-067r3.html) or [PDF](https://docs.ogc.org/is/18-067r3/18-067r3.pdf).

## Requirements classes

This draft candidate Standard defines conformance classes for:

### Basic portrayal capabilities
- a [core symbology conceptual and logical model](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc20 based on Styles as a list of Styling Rules consisting of a Symbolizer and optional Selector Expression,
- basic [vector styling](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc23),
- basic [coverage styling](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc26),
- [basic labeling](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc30),

### Common portrayal capabilities

- [Hill shading](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc28),
- [font outlines](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc29),
- [shape graphics](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc33) capabilities including circles, ellipses, arcs, rectangles (including rounded rectangles) and paths (polylines and polygons)
- [dashed strokes](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc38)),
- [casing and center lines](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc38),
- [hatches, gradients and stipples](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc43)

### Additional Expression capabilities

- [expressions as parameter values](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc46) for any symbolizer properties,
- using [identifiers in the right side](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc49)) of operation expressions,
- conditional expressions,
- variables,
- [arithmetic, bitwise and text relation operators](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc53),
- [function call expressions and standardized functions](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc57) for spatial, temporal and array relations, as well as text and geometry manipulation 

### Advanced Stroke and Fills

- specific joins and caps for Strokes
- Graphic pattern Strokes,
- Graphic pattern Fills,

### Additional portrayal

- [shape outlines](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc34),
- [vector graphic hierarchy](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc35), including full 2D transforms,
- [3D model graphics and 3D transforms](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc64),

### Encodings

- [JSON encoding](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc67) that can be readily parsed by a generic JSON parser,
- [Cascading Cartographic Symbology Style Sheets](https://opengeospatial.github.io/ogcna-auto-review/18-067r4.html#toc70), a more expressive encoding based on Web CSS which is better suited to hand-edit styles

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
