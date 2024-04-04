parser grammar CartoSymCSSGrammar;
options { tokenVocab=CartoSymCSSLexer; }

///////////////////////////////
// High level style sheet rules
///////////////////////////////

styleSheet: metadata* stylingRuleList;

metadata:
    '.' IDENTIFIER CHARACTER_LITERAL;

stylingRuleList:
     stylingRule
   | stylingRuleList stylingRule;

stylingRule:
   ( selector )*
   LCBR
      (propertyAssignmentList SEMI)?
      stylingRuleList?
   RCBR;

selector:
     IDENTIFIER
   | LSBR expression RSBR ;

///////////////////////////////
// Expressions

idOrConstant:
     IDENTIFIER
   | expConstant;

tuple:
     idOrConstant idOrConstant
   | tuple idOrConstant;

expression:
     idOrConstant

   | expression DOT IDENTIFIER   // Member access

   | expString
   | expCall
   | expArray

   | expInstance

   | LPAR expression RPAR

   | expression LSBR expConstant RSBR  // Indexing

   // Operations
   | expression arithmeticOperatorExp expression
   | expression arithmeticOperatorMul expression
   | expression arithmeticOperatorAdd expression
   | expression binaryLogicalOperator expression
   | expression relationalOperator expression
   | expression betweenOperator expression AND expression
   | expression QUESTION expression COLON expression
   | unaryLogicalOperator expression
   | unaryArithmeticOperator expression

   | tuple
   ;

expConstant: NUMERIC_LITERAL UNIT? | HEX_LITERAL;

expString: CHARACTER_LITERAL;

///////////////////////////////
// Expressions: Instances

expInstance:
   IDENTIFIER?
   LCBR
      propertyAssignmentInferredList?
      SEMI?
   RCBR |
   IDENTIFIER
   LPAR
      propertyAssignmentInferredList?
      SEMI?
   RPAR
   ;

lhValue:
     IDENTIFIER
   | lhValue DOT IDENTIFIER
   | lhValue LSBR expConstant RSBR ;

propertyAssignment:
   lhValue COLON expression;

propertyAssignmentList:
     propertyAssignment
   | propertyAssignmentList SEMI propertyAssignment;

propertyAssignmentInferred:
     propertyAssignment
   | expression
   ;

propertyAssignmentInferredList:
     propertyAssignmentInferred
   | propertyAssignmentInferredList SEMI propertyAssignmentInferred
   | propertyAssignmentInferredList COMMA propertyAssignmentInferred
   ;

///////////////////////////////
// Expressions: Arrays

expArray:
     LSBR arrayElements? RSBR
   | LPAR arrayElements? RPAR;

arrayElements:
     expression
   | arrayElements COMMA expression ;

///////////////////////////////
// Expressions: Function calls

expCall: IDENTIFIER LPAR arguments RPAR ;

arguments:
   expression
   | arguments COMMA expression;

binaryLogicalOperator: AND | OR ;

unaryLogicalOperator: NOT ;

unaryArithmeticOperator: PLUS | MINUS;

arithmeticOperatorExp:
   POW;

arithmeticOperatorMul:
     MUL
   | DIV
   | IDIV
   | MOD;

arithmeticOperatorAdd:
     MINUS
   | PLUS
;

relationalOperator:
     EQ
   | LT
   | LTEQ
   | GT
   | GTEQ
   | IN
   | NOT IN
   | IS
   | IS NOT
   | LIKE
   | NOT LIKE;

betweenOperator:
     BETWEEN
   | NOT BETWEEN;
