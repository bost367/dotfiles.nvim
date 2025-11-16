;; extends
((lifetime) @lsp.type.lifetime.rust
  (#set! "priority" 300))
(outer_doc_comment_marker) @comment.documentation
; generics (<T>)
(type_parameter
  (type_identifier) @lsp.type.typeParameter)
; generics in `where: T: Type` clarification.
(where_predicate
  (type_identifier) @lsp.type.typeParameter)
; macros function call 'println!("Hello world!")'
(macro_invocation
  (identifier) @lsp.type.macro.rust)
; macros function call 'log::debug!("wait for response")'
(macro_invocation
  (scoped_identifier
    name: (identifier) @lsp.type.macro.rust))
