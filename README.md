# OGC Styles & Symbology

This repository hosts the working draft documents for the Core conceptual model for styling and symbology, as well as [extensions](extensions) and [encodings](encodings) for it.

The current published version of the standard is available in [HTML](https://docs.ogc.org/is/18-067r3/18-067r3.html) or [PDF](https://docs.ogc.org/is/18-067r3/18-067r3.pdf).

## Core: Working draft revision

A minor revision of the Styles & Symbology standard will be enhanced with:
- A clearer mechanism for extensibility, through the definition of abstract Selectors, Symbolizers,
and Expressions. While boolean predicate Expressions can be used as Selectors to determine
whether a styling Rule should be used or not, Expressions resolving to an arbitrary data type can be
used as ParameterValues for Symbolizer properties.
- A logical model complementing the conceptual model.

## Extensions

Extensions of the conceptual and logical models will be defined specifically targeting styling
vector features and gridded coverage features. 3D data and styling will be considered as well.

## Encodings

Multiple encodings of will be defined based on the conceptual model and extensions.
One encoding will be a direct encoding of the logical model in JSON.

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
