;; extends

; code block start - end: '```'
(fenced_code_block
  (fenced_code_block_delimiter) @keyword)

; header marker: '#'
(
  [
    (atx_h1_marker)
    (atx_h2_marker)
    (atx_h3_marker)
    (atx_h4_marker)
    (atx_h5_marker)
    (atx_h6_marker)
  ] @keyword)

; label in link referende: '[label]: https://example.com'
(link_reference_definition
  (link_label) @keyword)
