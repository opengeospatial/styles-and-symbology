parser grammar StyleSheetParser;

options {
  tokenVocab=StyleSheetLexer;
}

styleSheet: stylingRuleList;

stylingRuleList: stylingRule+;

stylingRule: selector? LBRACE propertyAssignmentList? nestedStylingRuleList? RBRACE;

selector: HASH IDENTIFIER;

nestedStylingRuleList: LBRACE stylingRuleList RBRACE;

propertyAssignmentList: propertyAssignment+;

propertyAssignment: IDENTIFIER COLON (CharacterStringLiteral | BooleanLiteral | NumericLiteral) SEMICOLON;