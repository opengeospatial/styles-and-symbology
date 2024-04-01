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
// CQL2ish Expressions
///////////////////////////////

///////////////////////////////
// Expressions

idOrConstant:
     IDENTIFIER
   | expConstant;
   
tuple:
     idOrConstant idOrConstant
   | tuple idOrConstant; 

expression:
     //IDENTIFIER //expIdentifier
     
     idOrConstant |

   // | expMember
   /*|*/ expression DOT IDENTIFIER

   //| expConstant
   | expString
   | expCall
   | expArray

   | expInstance

   | LPAR expression RPAR

   // | expIndex
   | expression LSBR expConstant RSBR

   //| expOperation
   | expression arithmeticOperatorExp expression
   | expression arithmeticOperatorMul expression
   | expression arithmeticOperatorAdd expression
   | expression binaryLogicalOperator expression
   | expression relationalOperator expression
   | expression betweenOperator expression AND expression
   | expression QUESTION expression COLON expression
   | unaryLogicalOperator expression
   | unaryArithmeticOperator expression

   // | expTuple
   //| expression expression
   | tuple
   ;

// expIdentifier: IDENTIFIER;

expConstant: NUMERIC_LITERAL UNIT? | HEX_LITERAL;

expString: CHARACTER_LITERAL;


/*
expTuple:
     expression
   | expTuple expression;
*/

// expMember: expression DOT IDENTIFIER;

// expIndex: expression LSBR expConstant RSBR;

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

///////////////////////////////
// Expressions: Operations

/*
expOperation:
     expression arithmeticOperatorExp expression
   | expression arithmeticOperatorMul expression
   | expression arithmeticOperatorAdd expression
   | expression binaryLogicalOperator expression
   | expression relationalOperator expression
   | expression betweenOperator expression AND expression
   | expression QUESTION expression COLON expression
   | unaryLogicalOperator expression
   | unaryArithmeticOperator expression;
*/

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
