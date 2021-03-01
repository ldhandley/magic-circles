#lang codespells

(require magic-circles/mod-info)

(define-classic-rune (basic-circle)
  #:background "red"
  #:foreground (circle 40 'outline 'cyan)
  (spawn-mod-blueprint pak-folder mod-name "BasicCircle"))

(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (basic-circle))

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".." ".."))
  
  (once-upon-a-time
   #:world (demo-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))


