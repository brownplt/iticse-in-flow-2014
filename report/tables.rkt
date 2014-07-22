#lang racket
(require scribble/core
          scribble/decode
          scribble/html-properties
          scribble/latex-properties)

(provide add-width-wrappers)

(define (add-width-wrappers col-widths rows)
   (for/list ([cols (in-list rows)]
              [row-pos (in-naturals)])
     (for/list ([col-width (in-list col-widths)]
                [col (in-list cols)]
                [pos (in-naturals)])
       (add-width-wrapper col-width col
                          (zero? row-pos) (= row-pos (sub1 (length rows)))
                          (zero? pos) (= pos (sub1 (length cols)))))))

(define (add-width-wrapper w col first-row? last-row? first-col? last-col?)
   (define macro-name (format "In~aColumn~a~a~a~a"
                              w
                              (if first-row? "FR" "")
                              (if last-row? "LR" "")
                              (if first-col? "FC" "")
                              (if last-col? "LC" "")))
   ;; A TeX macro name cannot contain numbers, so replace digits with letters:
   (define name 
     (regexp-replace* #rx"[\\.]"
                      (regexp-replace* #rx"[0-9]"
                                       macro-name
                                       (lambda (s) (string
                                                    (list-ref (string->list "zotTfFsSen")
                                                              (string->number s)))))
                      (lambda (dot) "d")))
                     
     ;; CSS to set the width for HTML output:
   (define css-bytes (string->bytes/utf-8 
                      (format (string-append ".~a { width: ~s; }")
                              name
                              w)))
   ;; Macro to set the width for LaTeX output:
   (define tex-bytes (string->bytes/utf-8 
                      (format "\\newcommand{\\~a}[1]{~a~a\\parbox[t]{~a}{\\raggedright #1}~a~a}"
                              name
                              ;; Hack: add hline before first cell's content:
                              (if first-col? "\\hline" "")
                              ;; Add spacing (except first column) and vline:
                              (if first-col? "\\vline ~" "~ \\vline ~")
                              ;; The width:
                              w
                              ;; for last column, add spacing and vline after:
                              (if last-col? "~ \\vline" "")
                              ;; For last row and column, hline after:
                              (if (and last-row? last-col?) "\\\\ \\hline" ""))))
   ;; Produce a paragraph for the table cell; we rely on the fact that
   ;; only one copy of literal bytes for `css-addition` or `tex-addition` will
   ;; be included in the output:
   (paragraph (style name ; used for CSS
                     (list (box-mode* name) ; avoids a `minipage` wrapper in LaTeX
                           (css-addition css-bytes) ; the generated CSS
                           'command ; use generated TeX as command (not environment)
                           (tex-addition tex-bytes))) ; generated TeX
                     ;; Parse content as a paragraph:
                     (decode-content col)))

#|
@tabular[
  #:style (style #f (list (attributes '((style . "border-collapse: collapse;")))))
  #:column-properties (list (list (attributes '((style . "border: 1px solid black;")))))
  (add-width-wrappers
   (list "1in" "2in") ; both Latex and CSS recognize "<n>in"
   (list
    (list @list{This text is in the narrow first column.}
          @list{This text is in the wider second column, so it needs
                more text to demonstrate.})
    (list @list{This additional block of text is also in the narrow first column.}
          @list{This additional block text is in the wider second column, so
                that we end up with four cells all together.})))
]
|#