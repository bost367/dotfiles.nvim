;; extends
(null) @keyword
(undefined) @keyword
; decorators as attribute instead of type.
(decorator
  (call_expression
    function: (identifier) @attribute
    (#set! priority 300)))
; lambda as property if it is member of type:
; random: {
;   pick(list: any[]): any;
;   shuffle(list: any[]): any[];
; }
(property_signature
  name: (property_identifier) @property)
; variable as constant in 'export const' expressions.
(export_statement
  declaration: (lexical_declaration
    (variable_declarator
      name: (identifier) @constant
      (#set! priority 300))))
; variable as constant in 'export declare const' expressions.
(export_statement
  declaration: (ambient_declaration
    (lexical_declaration
      (variable_declarator
        name: (identifier) @constant
        (#set! priority 300)))))
