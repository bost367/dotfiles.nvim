;; extends

; highlight link inside inline code block: `[label](https://example.com)`
(link_text
  (code_span) @markup.link.markdown_inline
  (#set! "priority" 300))
