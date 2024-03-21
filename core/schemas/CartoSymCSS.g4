grammar CartoSymCSS;

// =============================================================================
//  High level style sheet rules
// =============================================================================

styleSheet: stylingRuleList;

stylingRuleList
    : stylingRule
    | stylingRuleList stylingRule;

stylingRule
    : selector* '{' propertyAssignmentList? stylingRuleList? '}'
    ;

selector
    : '#' identifier
    | '[' expression ']'
    ;

// =============================================================================
// CQL2ish Expressions
// =============================================================================

// Numeric literals

numericLiteral : unsignedNumericLiteral | signedNumericLiteral;

unsignedNumericLiteral : exactNumericLiteral | approximateNumericLiteral;

signedNumericLiteral : sign? exactNumericLiteral | approximateNumericLiteral;

exactNumericLiteral : unsignedInteger ('.' unsignedInteger?)?
                    | '.' unsignedInteger;

approximateNumericLiteral : mantissa 'E' exponent;

mantissa : exactNumericLiteral;

exponent : signedInteger;

signedInteger : sign? unsignedInteger;

unsignedInteger : DIGIT+;

sign : '+' | '-';

DIGIT : [0-9];

// Character Literals

characterLiteral : '\'' character* '\'';

character : ALPHA | DIGIT | WS | escapeQuote;

escapeQuote : '\'\'' | '\\\'';

WS : [ \t\r\n]+ -> skip;

// The ALPHA rule needs to be adapted to avoid mutiple use of ?, 0-? and F characters. The following is a possible solution:

ALPHA
    : [a-zA-Z\u0007-\u0008\u0021-\u0026\u0028-\u0039\u003A-\u0084\u0086-\u009F\u00A1-\u167F\u1681-\u1FFF\u200B-\u2027\u202A-\u202E\u2030-\u205E\u2060-\u2FFF\u3001-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
    ;

// Identifiers
// The identifiers rules need to be adapted to better correspond to the original ones below and handle unicode characters correctly.

idStart
    : ':' | ALPHA | '_'
    ;

idCont
    : '-' | '.' | DIGIT | '\u00B7'
    ;

identifier
    : idStart idCont* 
    | '"' ANY_CHAR '"'
    ;

ANY_CHAR : . ;

// Orignal Identifiers rules:
// idStart:
//    ":" | [A-Z] | "_" | [a-z] | [#xC0-#xD6] | [#xD8-#xF6] | [#xF8-#x2FF] | [#x370-#x37D] | [#x37F-#x1FFF] | [#x200C-#x200D] | [#x2070-#x218F] | [#x2C00-#x2FEF] | [#x3001-#xD7FF] | [#xF900-#xFDCF] | [#xFDF0-#xFFFD] | [#x10000-#xEFFFF]
//    ;

// idCont: "-" | "." | [0-9] | #xB7 | [#x0300-#x036F] | [#x203F-#x2040]  ;

// identifier:
//      idStart [idCont]*
//    | '"' . '"' ;

// Expressions

expression
   : expIdentifier
   | expConstant
   | expString
   | expCall
   | expInstance
   | '(' expression ')'
   | expression '.' identifier
   | expression '[' expression ']'
   | expression arithmeticOperator expression
   | expression binaryLogicalOperator expression
   | expression relationalOperator expression
   | expression betweenOperator expression 'and' expression
   | expression '?' expression ':' expression
   | unaryLogicalOperator expression
   ;

expIdentifier: identifier;
expConstant: numericLiteral;
expString: characterLiteral;

// Note: expMember & expIndex rules have been moved to the expression rule to avoid left recursion 

// Expressions: Instances

expInstance : identifier? '{' propertyAssignmentList? '}';

lhValue
    : identifier
    | lhValue '.' identifier
    | lhValue '[' expConstant ']'
    ;

propertyAssignment : lhValue ':' expression;

propertyAssignmentList
    : propertyAssignment (';' propertyAssignment)*
    ;

// Expressions: Arrays

expArray : '[' arrayElements? ']';

arrayElements
    : expression
    | arrayElements ',' expression ;

// Expressions: Function calls

expCall : identifier '(' arguments ')';

arguments
    : expression
    | arguments ',' expression
    ;

// Expressions: Operations

// Note: expOperation has been moved to the expression rule to avoid left recursion

binaryLogicalOperator : 'and' | 'or';
unaryLogicalOperator : 'not';
arithmeticOperator : '-' | '+' | '*' | '/' | 'div' | '%' | '^';
relationalOperator : '<' | '<=' | '>' | '>=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' | 'like' | 'not' 'like';
betweenOperator : 'between' | 'not' 'between';