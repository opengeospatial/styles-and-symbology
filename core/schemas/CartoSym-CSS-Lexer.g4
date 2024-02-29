lexer grammar CqlLexer;

/*
#=============================================================================#
# Enable case-insensitive grammars
#=============================================================================#
*/

fragment A : [aA];
fragment B : [bB];
fragment C : [cC];
fragment D : [dD];
fragment E : [eE];
fragment F : [fF];
fragment G : [gG];
fragment H : [hH];
fragment I : [iI];
fragment J : [jJ];
fragment K : [kK];
fragment L : [lL];
fragment M : [mM];
fragment N : [nN];
fragment O : [oO];
fragment P : [pP];
fragment Q : [qQ];
fragment R : [rR];
fragment S : [sS];
fragment T : [tT];
fragment U : [uU];
fragment V : [vV];
fragment W : [wW];
fragment X : [xX];
fragment Y : [yY];
fragment Z : [zZ];

/*
#=============================================================================#
# Definition of COMPARISON operators
#=============================================================================#
*/

ComparisonOperator : EQ | NEQ | LT | GT | LTEQ | GTEQ;

LT : '<';

EQ : '=';

GT : '>';

NEQ : LT GT;

GTEQ : GT EQ;

LTEQ : LT EQ;

/*
#=============================================================================#
# Definition of BOOLEAN literals
#=============================================================================#
*/

BooleanLiteral : T R U E | F A L S E;

/*
#=============================================================================#
# Definition of LOGICAL operators
#=============================================================================#
*/

AND : A N D;

OR : O R;

NOT : N O T;

/*
#=============================================================================#
# Definition of COMPARISON operators
#=============================================================================#
*/

LIKE : L I K E;

BETWEEN : B E T W E E N;

IS : I S;

NULL: N U L L;

/*
#=============================================================================#
# Definition of SPATIAL operators
#=============================================================================#
*/

SpatialOperator : S UNDERSCORE I N T E R S E C T S
                | S UNDERSCORE E Q U A L S
                | S UNDERSCORE D I S J O I N T
                | S UNDERSCORE T O U C H E S
                | S UNDERSCORE W I T H I N
                | S UNDERSCORE O V E R L A P S
                | S UNDERSCORE C R O S S E S
                | S UNDERSCORE C O N T A I N S;

/*
#=============================================================================#
# Definition of TEMPORAL operators
#=============================================================================#
*/

TemporalOperator : T UNDERSCORE A F T E R
                 | T UNDERSCORE B E F O R E
                 | T UNDERSCORE C O N T A I N S
                 | T UNDERSCORE D I S J O I N T
                 | T UNDERSCORE D U R I N G
                 | T UNDERSCORE E Q U A L S
                 | T UNDERSCORE F I N I S H E D B Y
                 | T UNDERSCORE F I N I S H E S
                 | T UNDERSCORE I N T E R S E C T S
                 | T UNDERSCORE M E E T S
                 | T UNDERSCORE M E T B Y
                 | T UNDERSCORE O V E R L A P P E D B Y
                 | T UNDERSCORE O V E R L A P S
                 | T UNDERSCORE S T A R T E D B Y
                 | T UNDERSCORE S T A R T S;

/*
#=============================================================================#
# Definition of ARRAY operators
#=============================================================================#
*/
ArrayOperator : A UNDERSCORE E Q U A L S
              | A UNDERSCORE C O N T A I N S
              | A UNDERSCORE C O N T A I N E D B Y
              | A UNDERSCORE O V E R L A P S;

/*
#=============================================================================#
# Definition of IN operator
#=============================================================================#
*/

IN: I N;

/*
#=============================================================================#
# Definition of geometry types
#=============================================================================#
*/

POINT: P O I N T;

LINESTRING: L I N E S T R I N G;

POLYGON: P O L Y G O N;

MULTIPOINT: M U L T I P O I N T;

MULTILINESTRING: M U L T I L I N E S T R I N G;

MULTIPOLYGON: M U L T I P O L Y G O N;

GEOMETRYCOLLECTION: G E O M E T R Y C O L L E C T I O N;

ENVELOPE: E N V E L O P E;

CharacterStringLiteralStart : QUOTE -> more, mode(STR);

CASEI: C A S E I;

ACCENTI: A C C E N T I;

LOWER: L O W E R;

UPPER: U P P E R;

NumericLiteral : UnsignedNumericLiteral | SignedNumericLiteral;

IDENTIFIER: [a-zA-Z]+;

ALPHA : '\u0041'..'\u005A' | '\u0061'..'\u007A' | '\u00C0'..'\u00D6' |
        '\u00D8'..'\u00F6' | '\u00F8'..'\u00FF' | '\u0100'..'\u0131' |
        '\u0134'..'\u013E' | '\u0141'..'\u0148' | '\u014A'..'\u017E' |
        '\u0180'..'\u01C3' | '\u01CD'..'\u01F0' | '\u01F4'..'\u01F5' |
        '\u01FA'..'\u0217' | '\u0250'..'\u02A8' | '\u02BB'..'\u02C1' |
        '\u0386'        | '\u0388'..'\u038A' | '\u038C'        |
        '\u038E'..'\u03A1' | '\u03A3'..'\u03CE' | '\u03D0'..'\u03D6' |
        '\u03DA'        | '\u03DC'        | '\u03DE'        |
        '\u03E0'        | '\u03E2'..'\u03F3' | '\u0401'..'\u040C' |
        '\u040E'..'\u044F' | '\u0451'..'\u045C' | '\u045E'..'\u0481' |
        '\u0490'..'\u04C4' | '\u04C7'..'\u04C8' | '\u04CB'..'\u04CC' |
        '\u04D0'..'\u04EB' | '\u04EE'..'\u04F5' | '\u04F8'..'\u04F9' |
        '\u0531'..'\u0556' | '\u0559'        | '\u0561'..'\u0586' |
        '\u05D0'..'\u05EA' | '\u05F0'..'\u05F2' | '\u0621'..'\u063A' |
        '\u0641'..'\u064A' | '\u0671'..'\u06B7' | '\u06BA'..'\u06BE' |
        '\u06C0'..'\u06CE' | '\u06D0'..'\u06D3' | '\u06D5'        |
        '\u06E5'..'\u06E6' | '\u0905'..'\u0939' | '\u093D'        |
        '\u0958'..'\u0961' | '\u0985'..'\u098C' | '\u098F'..'\u0990' |
        '\u0993'..'\u09A8' | '\u09AA'..'\u09B0' | '\u09B2'        |
        '\u09B6'..'\u09B9' | '\u09DC'..'\u09DD' | '\u09DF'..'\u09E1' |
        '\u09F0'..'\u09F1' | '\u0A05'..'\u0A0A' | '\u0A0F'..'\u0A10' |
        '\u0A13'..'\u0A28' | '\u0A2A'..'\u0A30' | '\u0A32'..'\u0A33' |
        '\u0A35'..'\u0A36' | '\u0A38'..'\u0A39' | '\u0A59'..'\u0A5C' |
        '\u0A5E'        | '\u0A72'..'\u0A74' | '\u0A85'..'\u0A8B' |
        '\u0A8D'        | '\u0A8F'..'\u0A91' | '\u0A93'..'\u0AA8' |
        '\u0AAA'..'\u0AB0' | '\u0AB2'..'\u0AB3' | '\u0AB5'..'\u0AB9' |
        '\u0ABD'        | '\u0AE0'        | '\u0B05'..'\u0B0C' |
        '\u0B0F'..'\u0B10' | '\u0B13'..'\u0B28' | '\u0B2A'..'\u0B30' |
        '\u0B32'..'\u0B33' | '\u0B36'..'\u0B39' | '\u0B3D'        |
        '\u0B5C'..'\u0B5D' | '\u0B5F'..'\u0B61' | '\u0B85'..'\u0B8A' |
        '\u0B8E'..'\u0B90' | '\u0B92'..'\u0B95' | '\u0B99'..'\u0B9A' |
        '\u0B9C'        | '\u0B9E'..'\u0B9F' | '\u0BA3'..'\u0BA4' |
        '\u0BA8'..'\u0BAA' | '\u0BAE'..'\u0BB5' | '\u0BB7'..'\u0BB9' |
        '\u0C05'..'\u0C0C' | '\u0C0E'..'\u0C10' | '\u0C12'..'\u0C28' |
        '\u0C2A'..'\u0C33' | '\u0C35'..'\u0C39' | '\u0C60'..'\u0C61' |
        '\u0C85'..'\u0C8C' | '\u0C8E'..'\u0C90' | '\u0C92'..'\u0CA8' |
        '\u0CAA'..'\u0CB3' | '\u0CB5'..'\u0CB9' | '\u0CDE'        |
        '\u0CE0'..'\u0CE1' | '\u0D05'..'\u0D0C' | '\u0D0E'..'\u0D10' |
        '\u0D12'..'\u0D28' | '\u0D2A'..'\u0D39' | '\u0D60'..'\u0D61' |
        '\u0E01'..'\u0E2E' | '\u0E30'        | '\u0E32'..'\u0E33' |
        '\u0E40'..'\u0E45' | '\u0E81'..'\u0E82' | '\u0E84'        |
        '\u0E87'..'\u0E88' | '\u0E8A'        | '\u0E8D'        |
        '\u0E94'..'\u0E97' | '\u0E99'..'\u0E9F' | '\u0EA1'..'\u0EA3' |
        '\u0EA5'        | '\u0EA7'        | '\u0EAA'..'\u0EAB' |
        '\u0EAD'..'\u0EAE' | '\u0EB0'        | '\u0EB2'..'\u0EB3' |
        '\u0EBD'        | '\u0EC0'..'\u0EC4' | '\u0F40'..'\u0F47' |
        '\u0F49'..'\u0F69' | '\u10A0'..'\u10C5' | '\u10D0'..'\u10F6' |
        '\u1100'        | '\u1102'..'\u1103' | '\u1105'..'\u1107' |
        '\u1109'        | '\u110B'..'\u110C' | '\u110E'..'\u1112' |
        '\u113C'        | '\u113E'        | '\u1140'        |
        '\u114C'        | '\u114E'        | '\u1150'        |
        '\u1154'..'\u1155' | '\u1159'        | '\u115F'..'\u1161' |
        '\u1163'        | '\u1165'        | '\u1167'        |
        '\u1169'        | '\u116D'..'\u116E' | '\u1172'..'\u1173' |
        '\u1175'        | '\u119E'        | '\u11A8'        |
        '\u11AB'        | '\u11AE'..'\u11AF' | '\u11B7'..'\u11B8' |
        '\u11BA'        | '\u11BC'..'\u11C2' | '\u11EB'        |
        '\u11F0'        | '\u11F9'        | '\u1E00'..'\u1E9B' |
        '\u1EA0'..'\u1EF9' | '\u1F00'..'\u1F15' | '\u1F18'..'\u1F1D' |
        '\u1F20'..'\u1F45' | '\u1F48'..'\u1F4D' | '\u1F50'..'\u1F57' |
        '\u1F59'        | '\u1F5B'        | '\u1F5D'        |
        '\u1F5F'..'\u1F7D' | '\u1F80'..'\u1FB4' | '\u1FB6'..'\u1FBC' |
        '\u1FBE'        | '\u1FC2'..'\u1FC4' | '\u1FC6'..'\u1FCC' |
        '\u1FD0'..'\u1FD3' | '\u1FD6'..'\u1FDB' | '\u1FE0'..'\u1FEC' |
        '\u1FF2'..'\u1FF4' | '\u1FF6'..'\u1FFC' | '\u2126'        |
        '\u212A'..'\u212B' | '\u212E'        | '\u2180'..'\u2182' |
        '\u3041'..'\u3094' | '\u30A1'..'\u30FA' | '\u3105'..'\u312C' |
        '\uAC00'..'\uD7A3';

DIGIT : [0-9];

DOLLAR : '$';

UNDERSCORE : '_';

DOUBLEQUOTE : '"';

QUOTE : '\'';

LEFTPAREN : '(';

RIGHTPAREN : ')';

LBRACE : '{';
RBRACE : '}';

LEFTSQUAREBRACKET : '[';

RIGHTSQUAREBRACKET : ']';

ASTERISK : '*';

PLUS : '+';

COMMA : ',';

SEMICOLON: ';';

CARET : '^';

MINUS : '-';

PERIOD : '.';

SOLIDUS : '/';

COLON : ':';

HASH  : '#';

/*
#=============================================================================#
# Definition of NUMERIC literals
#=============================================================================#
*/

UnsignedNumericLiteral : ExactNumericLiteral | ApproximateNumericLiteral;

SignedNumericLiteral : (Sign)? ExactNumericLiteral | ApproximateNumericLiteral;

ExactNumericLiteral : UnsignedInteger  (PERIOD (UnsignedInteger)? )?
                        |  PERIOD UnsignedInteger;

ApproximateNumericLiteral : Mantissa 'E' Exponent;

Mantissa : ExactNumericLiteral;

Exponent : SignedInteger;

SignedInteger : (Sign)? UnsignedInteger;

UnsignedInteger : (DIGIT)+;

Sign : PLUS | MINUS;

/*
#=============================================================================#
# Definition of TEMPORAL literals
#=============================================================================#
*/

NOW : N O W;

DATE : D A T E;

TIMESTAMP : T I M E S T A M P;

INTERVAL : I N T E R V A L;

DateString : QUOTE FullDate QUOTE;

TimestampString : QUOTE FullDate 'T' UtcTime QUOTE;

DotDotString : QUOTE '..' QUOTE;

Instant : FullDate | FullDate 'T' UtcTime;

FullDate : DateYear '-' DateMonth '-' DateDay;

DateYear : DIGIT DIGIT DIGIT DIGIT;

DateMonth : '0' [1-9] | '1' [0-2];

DateDay : '0' [1-9] | [1-2] DIGIT | '3' [0-1];

UtcTime : TimeHour ':' TimeMinute ':' TimeSecond Z;

TimeHour : [0-1] DIGIT | '2' [0-3];

TimeMinute : [0-5] DIGIT;

TimeSecond : [0-5] DIGIT (PERIOD (DIGIT)+)?;

/*
#=============================================================================#
# Definition of identifiers (property or function names)
#=============================================================================#
*/

Identifier : IdentifierBare | DOUBLEQUOTE IdentifierBare DOUBLEQUOTE;

//CHANGE: moved PERIOD to propertyName
IdentifierBare : IdentifierStart (COLON | IdentifierPart)*;

IdentifierStart : ALPHA;

IdentifierPart : ALPHA | DIGIT | UNDERSCORE | DOLLAR;

/*
#=============================================================================#
# ANTLR ignore whitespace
#=============================================================================#
*/

WS : [ \t\r\n]+ -> skip; // skip spaces, tabs, newlines

/*
#=============================================================================#
# ANTLR mode for CharacterStringLiteral with whitespaces
#=============================================================================#
*/

mode STR;

CharacterStringLiteral: '\'' -> mode(DEFAULT_MODE);

QuotedQuote: '\'\'' -> more;
