;;; creamsody-theme.el --- Straight from the soda fountain.

;; Copyright (c) 2015-2016 Jason Milkins (GNU/GPL Licence)

;; Authors: Jason Milkins <jasonm23@gmail.com>
;; URL: http://github.com/emacsfodder/emacs-theme-creamsody
;; Version: 0.1.1

;;; Commentary:
;;  Straight from the soda fountain.

;;  Please note: this theme is not intended for terminal use.

;;; Code:

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(deftheme creamsody "Straight from the soda fountain.")

(let (
      (creamsody-dark0_hard      "#1D2021")
      (creamsody-dark0           "#282C32")
      (creamsody-dark0_soft      "#32302F")
      (creamsody-dark1           "#3C3836")
      (creamsody-dark2           "#504945")
      (creamsody-dark3           "#665C54")
      (creamsody-dark4           "#7C6F64")

      (creamsody-medium          "#928374")
      (creamsody-light0_hard     "#FFFFC8")
      (creamsody-light0          "#FDF4C1")
      (creamsody-light0_soft     "#F4E8BA")
      (creamsody-light1          "#EBDBB2")
      (creamsody-light2          "#D5C4A1")
      (creamsody-light3          "#BDAE93")
      (creamsody-light4          "#A89984")

      (creamsody-bright_red      "#FB4933")
      (creamsody-bright_green    "#86C9D3")
      (creamsody-bright_yellow   "#8DD1CA")
      (creamsody-bright_blue     "#419BB0")
      (creamsody-bright_purple   "#A59FC0")
      (creamsody-bright_aqua     "#67C6BD")
      (creamsody-bright_orange   "#77FEE9")
      (creamsody-bright_cyan     "#3FD7E5")

      (creamsody-neutral_red     "#FB4934")
      (creamsody-neutral_green   "#90CAD3")
      (creamsody-neutral_yellow  "#97D1CB")
      (creamsody-neutral_blue    "#499CB0")
      (creamsody-neutral_purple  "#ACA8C0")
      (creamsody-neutral_aqua    "#70C6BD")
      (creamsody-neutral_orange  "#83FEEF")
      (creamsody-neutral_cyan    "#17CCD5")

      (creamsody-faded_red       "#9D0006")
      (creamsody-faded_green     "#7DBCC6")
      (creamsody-faded_yellow    "#84C4BD")
      (creamsody-faded_blue      "#3C8FA3")
      (creamsody-faded_purple    "#9A94B3")
      (creamsody-faded_aqua      "#60B9B0")
      (creamsody-faded_orange    "#76F1E8")
      (creamsody-faded_cyan      "#00A7AF")

      (creamsody-muted_red       "#901A1E")
      (creamsody-muted_green     "#6CA2AC")
      (creamsody-muted_yellow    "#72AAA3")
      (creamsody-muted_blue      "#327789")
      (creamsody-muted_purple    "#847E99")
      (creamsody-muted_aqua      "#529F96")
      (creamsody-muted_orange    "#4DB0AE")
      (creamsody-muted_cyan      "#18A7AF")

      (creamsody-dark_red        "#421E1E")
      (creamsody-dark_green      "#2A4044")
      (creamsody-dark_yellow     "#2A423E")
      (creamsody-dark_blue       "#0A1C21")
      (creamsody-dark_purple     "#2A2631")
      (creamsody-dark_aqua       "#1A3734")
      (creamsody-dark_orange     "#14393B")
      (creamsody-dark_cyan       "#0E252D")

      (creamsody-mid_red         "#3F1B1B")
      (creamsody-mid_green       "#324C51")
      (creamsody-mid_yellow      "#334F4A")
      (creamsody-mid_blue        "#0F272E")
      (creamsody-mid_purple      "#35313E")
      (creamsody-mid_aqua        "#214440")
      (creamsody-mid_orange      "#204448")
      (creamsody-mid_cyan        "#005560")

      (creamsody-delimiter-one   "#5C7E81")
      (creamsody-delimiter-two   "#507073")
      (creamsody-delimiter-three "#466265")
      (creamsody-delimiter-four  "#3C5457")

      (creamsody-identifiers-1   "#E5D5C5")
      (creamsody-identifiers-2   "#DFE5C5")
      (creamsody-identifiers-3   "#D5E5C5")
      (creamsody-identifiers-4   "#CAE5C5")
      (creamsody-identifiers-5   "#C5E5CA")
      (creamsody-identifiers-6   "#C5E5D5")
      (creamsody-identifiers-7   "#C5E5DF")
      (creamsody-identifiers-8   "#C5DFE5")
      (creamsody-identifiers-9   "#C5D5E5")
      (creamsody-identifiers-10  "#C5CAE5")
      (creamsody-identifiers-11  "#CAC5E5")
      (creamsody-identifiers-12  "#D5C5E5")
      (creamsody-identifiers-13  "#DFC5E5")
      (creamsody-identifiers-14  "#E5C5DF")
      (creamsody-identifiers-15  "#E5C5D5")

      (creamsody-white           "#FFFFFF")
      (creamsody-black           "#000000")
      (creamsody-floaty          "#66999D")
      (creamsody-darkslategray4  "#528B8B")
      (creamsody-lightblue4      "#66999D")
      (creamsody-sandyblur       "#BBAA97")
      (creamsody-aquamarine4     "#83A598")
      (creamsody-turquoise4      "#61ACBB")
      )

  (custom-theme-set-faces
   'creamsody

   ;; UI
   `(default                                   ((t (:foreground ,creamsody-light0 :background ,creamsody-dark0))))
   `(cursor                                    ((t (:background ,creamsody-light0))))
   `(link                                      ((t (:foreground ,creamsody-bright_blue :underline t))))
   `(link-visited                              ((t (:foreground ,creamsody-bright_blue :underline nil))))

   `(mode-line                                 ((t (:foreground ,creamsody-light1 :background ,creamsody-dark0_hard :box nil))))
   `(mode-line-inactive                        ((t (:foreground ,creamsody-light4 :background ,creamsody-dark2 :box nil))))
   `(fringe                                    ((t (:background ,creamsody-dark0))))
   `(linum                                     ((t (:foreground ,creamsody-dark4))))
   `(hl-line                                   ((t (:background ,creamsody-dark_purple))))
   `(region                                    ((t (:background ,creamsody-mid_green :distant-foreground ,creamsody-light0))))
   `(secondary-selection                       ((t (:background ,creamsody-mid_orange))))
   `(cua-rectangle                             ((t (:background ,creamsody-mid_blue))))
   `(header-line                               ((t (:foreground ,creamsody-turquoise4 :background ,creamsody-dark0 :bold nil))))
   `(minibuffer-prompt                         ((t (:foreground ,creamsody-bright_cyan :background ,creamsody-dark0 :bold nil))))

   ;; compilation messages (also used by several other modes)
   `(compilation-info                          ((t (:foreground ,creamsody-neutral_green))))
   `(compilation-mode-line-fail                ((t (:foreground ,creamsody-neutral_red))))
   `(error                                     ((t (:foreground ,creamsody-bright_orange :bold t))))
   `(success                                   ((t (:foreground ,creamsody-neutral_green :bold t))))
   `(warning                                   ((t (:foreground ,creamsody-bright_red :bold t))))

   ;; Built-in syntax
   `(font-lock-builtin-face                    ((t (:foreground ,creamsody-bright_orange))))
   `(font-lock-constant-face                   ((t (:foreground ,creamsody-sandyblur ))))
   `(font-lock-comment-face                    ((t (:foreground ,creamsody-dark4))))
   `(font-lock-function-name-face              ((t (:foreground ,creamsody-light4))))
   `(font-lock-keyword-face                    ((t (:foreground ,creamsody-floaty))))
   `(font-lock-string-face                     ((t (:foreground ,creamsody-darkslategray4))))
   `(font-lock-variable-name-face              ((t (:foreground ,creamsody-aquamarine4))))
   `(font-lock-type-face                       ((t (:foreground ,creamsody-lightblue4))))
   `(font-lock-warning-face                    ((t (:foreground ,creamsody-neutral_red :bold t))))

   ;; MODE SUPPORT: whitespace-mode
   `(whitespace-space                          ((t (:foreground ,creamsody-dark4 :background ,creamsody-dark0))))
   `(whitespace-hspace                         ((t (:foreground ,creamsody-dark4 :background ,creamsody-dark0))))
   `(whitespace-tab                            ((t (:foreground ,creamsody-dark4 :background ,creamsody-dark0))))
   `(whitespace-newline                        ((t (:foreground ,creamsody-dark4 :background ,creamsody-dark0))))
   `(whitespace-trailing                       ((t (:foreground ,creamsody-neutral_red :background ,creamsody-dark1))))
   `(whitespace-line                           ((t (:foreground ,creamsody-neutral_red :background ,creamsody-dark1))))
   `(whitespace-space-before-tab               ((t (:foreground ,creamsody-dark4 :background ,creamsody-dark0))))
   `(whitespace-indentation                    ((t (:foreground ,creamsody-dark4 :background ,creamsody-dark0))))
   `(whitespace-empty                          ((t (:foreground nil :background nil))))
   `(whitespace-space-after-tab                ((t (:foreground ,creamsody-dark4 :background ,creamsody-dark0))))

   ;; MODE SUPPORT: rainbow-delimiters
   `(rainbow-delimiters-depth-1-face           ((t (:foreground ,creamsody-delimiter-one))))
   `(rainbow-delimiters-depth-2-face           ((t (:foreground ,creamsody-delimiter-two))))
   `(rainbow-delimiters-depth-3-face           ((t (:foreground ,creamsody-delimiter-three))))
   `(rainbow-delimiters-depth-4-face           ((t (:foreground ,creamsody-delimiter-four))))
   `(rainbow-delimiters-depth-5-face           ((t (:foreground ,creamsody-delimiter-one))))
   `(rainbow-delimiters-depth-6-face           ((t (:foreground ,creamsody-delimiter-two))))
   `(rainbow-delimiters-depth-7-face           ((t (:foreground ,creamsody-delimiter-three))))
   `(rainbow-delimiters-depth-8-face           ((t (:foreground ,creamsody-delimiter-four))))
   `(rainbow-delimiters-depth-9-face           ((t (:foreground ,creamsody-delimiter-one))))
   `(rainbow-delimiters-depth-10-face          ((t (:foreground ,creamsody-delimiter-two))))
   `(rainbow-delimiters-depth-11-face          ((t (:foreground ,creamsody-delimiter-three))))
   `(rainbow-delimiters-depth-12-face          ((t (:foreground ,creamsody-delimiter-four))))
   `(rainbow-delimiters-unmatched-face         ((t (:foreground ,creamsody-light0 :background nil))))

   ;; MODE SUPPORT: rainbow-identifiers
   `(rainbow-identifiers-identifier-1          ((t (:foreground ,creamsody-identifiers-1))))
   `(rainbow-identifiers-identifier-2          ((t (:foreground ,creamsody-identifiers-2))))
   `(rainbow-identifiers-identifier-3          ((t (:foreground ,creamsody-identifiers-3))))
   `(rainbow-identifiers-identifier-4          ((t (:foreground ,creamsody-identifiers-4))))
   `(rainbow-identifiers-identifier-5          ((t (:foreground ,creamsody-identifiers-5))))
   `(rainbow-identifiers-identifier-6          ((t (:foreground ,creamsody-identifiers-6))))
   `(rainbow-identifiers-identifier-7          ((t (:foreground ,creamsody-identifiers-7))))
   `(rainbow-identifiers-identifier-8          ((t (:foreground ,creamsody-identifiers-8))))
   `(rainbow-identifiers-identifier-9          ((t (:foreground ,creamsody-identifiers-9))))
   `(rainbow-identifiers-identifier-10         ((t (:foreground ,creamsody-identifiers-10))))
   `(rainbow-identifiers-identifier-11         ((t (:foreground ,creamsody-identifiers-11))))
   `(rainbow-identifiers-identifier-12         ((t (:foreground ,creamsody-identifiers-12))))
   `(rainbow-identifiers-identifier-13         ((t (:foreground ,creamsody-identifiers-13))))
   `(rainbow-identifiers-identifier-14         ((t (:foreground ,creamsody-identifiers-14))))
   `(rainbow-identifiers-identifier-15         ((t (:foreground ,creamsody-identifiers-15))))

   ;; MODE SUPPORT: ido
   `(ido-indicator                             ((t (:background ,creamsody-bright_red :foreground ,creamsody-bright_yellow))))
   `(ido-subdir                                ((t (:foreground ,creamsody-light3))))
   `(ido-first-match                           ((t (:foreground ,creamsody-faded_cyan :background ,creamsody-dark0_hard))))
   `(ido-only-match                            ((t (:foreground ,creamsody-darkslategray4))))
   `(ido-vertical-match-face                   ((t (:bold t))))
   `(ido-vertical-only-match-face              ((t (:foreground ,creamsody-bright_cyan))))
   `(ido-vertical-first-match-face             ((t (:foreground ,creamsody-bright_cyan :background ,creamsody-dark_blue))))

   ;; MODE SUPPORT: linum-relative
   `(linum-relative-current-face               ((t (:foreground ,creamsody-light4 :background ,creamsody-dark1))))

   ;; MODE SUPPORT: highlight-indentation-mode
   `(highlight-indentation-current-column-face ((t (:background ,creamsody-dark4))))
   `(highlight-indentation-face                ((t (:background ,creamsody-dark1))))

   ;; MODE SUPPORT: highlight-numbers
   `(highlight-numbers-number                  ((t (:foreground ,creamsody-bright_purple :bold nil))))

   ;; MODE SUPPORT: highlight-symbol
   `(highlight-symbol-face                     ((t (:foreground ,creamsody-neutral_purple))))

   ;; MODE SUPPORT: hi-lock
   `(hi-blue                                   ((t (:foreground ,creamsody-dark0_hard :background ,creamsody-bright_blue ))))
   `(hi-green                                  ((t (:foreground ,creamsody-dark0_hard :background ,creamsody-bright_green ))))
   `(hi-pink                                   ((t (:foreground ,creamsody-dark0_hard :background ,creamsody-bright_purple ))))
   `(hi-yellow                                 ((t (:foreground ,creamsody-dark0_hard :background ,creamsody-bright_yellow ))))
   `(hi-blue-b                                 ((t (:foreground ,creamsody-bright_blue :bold t ))))
   `(hi-green-b                                ((t (:foreground ,creamsody-bright_green :bold t ))))
   `(hi-red-b                                  ((t (:foreground ,creamsody-bright_red :bold t  ))))
   `(hi-black-b                                ((t (:foreground ,creamsody-bright_orange :background ,creamsody-dark0_hard :bold t  ))))
   `(hi-black-hb                               ((t (:foreground ,creamsody-bright_cyan :background ,creamsody-dark0_hard :bold t  ))))

   ;; MODE SUPPORT: smartparens
   `(sp-pair-overlay-face                      ((t (:background ,creamsody-dark2))))
   `(sp-show-pair-match-face                   ((t (:background ,creamsody-dark2)))) ;; Pair tags highlight
   `(sp-show-pair-mismatch-face                ((t (:background ,creamsody-neutral_red)))) ;; Highlight for bracket without pair

   ;; MODE SUPPORT: auctex
   `(font-latex-math-face                      ((t (:foreground ,creamsody-lightblue4))))
   `(font-latex-sectioning-5-face              ((t (:foreground ,creamsody-neutral_green))))
   `(font-latex-string-face                    ((t (:inherit font-lock-string-face))))
   `(font-latex-warning-face                   ((t (:inherit warning))))

   ;; MODE SUPPORT: elscreen
   `(elscreen-tab-background-face              ((t (:background ,creamsody-dark0 :box nil)))) ;; Tab bar, not the tabs
   `(elscreen-tab-control-face                 ((t (:foreground ,creamsody-neutral_red :background ,creamsody-dark2 :box nil :underline nil)))) ;; The controls
   `(elscreen-tab-current-screen-face          ((t (:foreground ,creamsody-dark0 :background ,creamsody-dark4 :box nil)))) ;; Current tab
   `(elscreen-tab-other-screen-face            ((t (:foreground ,creamsody-light4 :background ,creamsody-dark2 :box nil :underline nil)))) ;; Inactive tab

   ;; MODE SUPPORT: embrace
   `(embrace-help-pair-face                    ((t (:foreground ,creamsody-bright_blue))))
   `(embrace-help-separator-face               ((t (:foreground ,creamsody-bright_orange))))
   `(embrace-help-key-face                     ((t (:weight bold ,creamsody-bright_green))))
   `(embrace-help-mark-func-face               ((t (:foreground ,creamsody-bright_cyan))))

   ;; MODE SUPPORT: ag (The Silver Searcher)
   `(ag-hit-face                               ((t (:foreground ,creamsody-neutral_blue))))
   `(ag-match-face                             ((t (:foreground ,creamsody-neutral_red))))

   ;; MODE SUPPORT: RipGrep
   `(ripgrep-hit-face                          ((t (:inherit ag-hit-face))))
   `(ripgrep-match-face                        ((t (:inherit ag-match-face))))

   ;; MODE SUPPORT: diff
   `(diff-changed                              ((t (:foreground ,creamsody-light1 :background nil))))
   `(diff-added                                ((t (:foreground ,creamsody-neutral_green :background nil))))
   `(diff-removed                              ((t (:foreground ,creamsody-neutral_red :background nil))))

   ;; MODE SUPPORT: diff-indicator
   `(diff-indicator-changed                    ((t (:inherit diff-changed))))
   `(diff-indicator-added                      ((t (:inherit diff-added))))
   `(diff-indicator-removed                    ((t (:inherit diff-removed))))

   ;; MODE SUPPORT: diff-hl
   `(diff-hl-change                            ((t (:inherit diff-changed))))
   `(diff-hl-delete                            ((t (:inherit diff-removed))))
   `(diff-hl-insert                            ((t (:inherit diff-added))))

   `(js2-warning                               ((t (:underline (:color ,creamsody-bright_yellow :style wave)))))
   `(js2-error                                 ((t (:underline (:color ,creamsody-bright_red :style wave)))))
   `(js2-external-variable                     ((t (:underline (:color ,creamsody-bright_aqua :style wave)))))
   `(js2-jsdoc-tag                             ((t (:foreground ,creamsody-medium :background nil))))
   `(js2-jsdoc-type                            ((t (:foreground ,creamsody-light4 :background nil))))
   `(js2-jsdoc-value                           ((t (:foreground ,creamsody-light3 :background nil))))
   `(js2-function-param                        ((t (:foreground ,creamsody-bright_aqua :background nil))))
   `(js2-function-call                         ((t (:foreground ,creamsody-bright_blue :background nil))))
   `(js2-instance-member                       ((t (:foreground ,creamsody-bright_orange :background nil))))
   `(js2-private-member                        ((t (:foreground ,creamsody-faded_yellow :background nil))))
   `(js2-private-function-call                 ((t (:foreground ,creamsody-faded_aqua :background nil))))
   `(js2-jsdoc-html-tag-name                   ((t (:foreground ,creamsody-light4 :background nil))))
   `(js2-jsdoc-html-tag-delimiter              ((t (:foreground ,creamsody-light3 :background nil))))

   ;; MODE SUPPORT: haskell
   `(haskell-interactive-face-compile-warning  ((t (:underline (:color ,creamsody-bright_yellow :style wave)))))
   `(haskell-interactive-face-compile-error    ((t (:underline (:color ,creamsody-bright_red :style wave)))))
   `(haskell-interactive-face-garbage          ((t (:foreground ,creamsody-dark4 :background nil))))
   `(haskell-interactive-face-prompt           ((t (:foreground ,creamsody-light0 :background nil))))
   `(haskell-interactive-face-result           ((t (:foreground ,creamsody-light3 :background nil))))
   `(haskell-literate-comment-face             ((t (:foreground ,creamsody-light0 :background nil))))
   `(haskell-pragma-face                       ((t (:foreground ,creamsody-medium :background nil))))
   `(haskell-constructor-face                  ((t (:foreground ,creamsody-neutral_aqua :background nil))))

   ;; MODE SUPPORT: org-mode
   `(org-agenda-date-today                     ((t (:foreground ,creamsody-light2 :slant italic :weight bold))) t)
   `(org-agenda-structure                      ((t (:inherit font-lock-comment-face))))
   `(org-archived                              ((t (:foreground ,creamsody-light0 :weight bold))))
   `(org-checkbox                              ((t (:foreground ,creamsody-light2 :background ,creamsody-dark0 :box (:line-width 1 :style released-button)))))
   `(org-date                                  ((t (:foreground ,creamsody-faded_blue :underline t))))
   `(org-deadline-announce                     ((t (:foreground ,creamsody-faded_red))))
   `(org-done                                  ((t (:foreground ,creamsody-bright_green :bold t :weight bold))))
   `(org-formula                               ((t (:foreground ,creamsody-bright_yellow))))
   `(org-headline-done                         ((t (:foreground ,creamsody-bright_green))))
   `(org-hide                                  ((t (:foreground ,creamsody-dark0))))
   `(org-level-1                               ((t (:foreground ,creamsody-bright_orange))))
   `(org-level-2                               ((t (:foreground ,creamsody-bright_green))))
   `(org-level-3                               ((t (:foreground ,creamsody-bright_blue))))
   `(org-level-4                               ((t (:foreground ,creamsody-bright_yellow))))
   `(org-level-5                               ((t (:foreground ,creamsody-faded_aqua))))
   `(org-level-6                               ((t (:foreground ,creamsody-bright_green))))
   `(org-level-7                               ((t (:foreground ,creamsody-bright_red))))
   `(org-level-8                               ((t (:foreground ,creamsody-bright_blue))))
   `(org-link                                  ((t (:foreground ,creamsody-bright_yellow :underline t))))
   `(org-scheduled                             ((t (:foreground ,creamsody-bright_green))))
   `(org-scheduled-previously                  ((t (:foreground ,creamsody-bright_red))))
   `(org-scheduled-today                       ((t (:foreground ,creamsody-bright_blue))))
   `(org-sexp-date                             ((t (:foreground ,creamsody-bright_blue :underline t))))
   `(org-special-keyword                       ((t (:inherit font-lock-comment-face))))
   `(org-table                                 ((t (:foreground ,creamsody-bright_green))))
   `(org-tag                                   ((t (:bold t :weight bold))))
   `(org-time-grid                             ((t (:foreground ,creamsody-bright_orange))))
   `(org-todo                                  ((t (:foreground ,creamsody-bright_red :weight bold :bold t))))
   `(org-upcoming-deadline                     ((t (:inherit font-lock-keyword-face))))
   `(org-warning                               ((t (:foreground ,creamsody-bright_red :weight bold :underline nil :bold t))))
   `(org-column                                ((t (:background ,creamsody-dark0))))
   `(org-column-title                          ((t (:background ,creamsody-dark0_hard :underline t :weight bold))))
   `(org-mode-line-clock                       ((t (:foreground ,creamsody-light2 :background ,creamsody-dark0))))
   `(org-mode-line-clock-overrun               ((t (:foreground ,creamsody-black :background ,creamsody-bright_red))))
   `(org-ellipsis                              ((t (:foreground ,creamsody-bright_yellow :underline t))))
   `(org-footnote                              ((t (:foreground ,creamsody-faded_aqua :underline t))))

   ;; MODE SUPPORT: powerline
   `(powerline-active1                         ((t (:background ,creamsody-dark2 :inherit mode-line))))
   `(powerline-active2                         ((t (:background ,creamsody-dark1 :inherit mode-line))))
   `(powerline-inactive1                       ((t (:background ,creamsody-medium :inherit mode-line-inactive))))
   `(powerline-inactive2                       ((t (:background ,creamsody-dark2 :inherit mode-line-inactive))))

   ;; MODE SUPPORT: smart-mode-line
   `(sml/modes                                 ((t (:foreground ,creamsody-light0_hard :weight bold :bold t))))
   `(sml/minor-modes                           ((t (:foreground ,creamsody-neutral_orange))))
   `(sml/filename                              ((t (:foreground ,creamsody-light0_hard :weight bold :bold t))))
   `(sml/prefix                                ((t (:foreground ,creamsody-neutral_blue))))
   `(sml/git                                   ((t (:inherit sml/prefix))))
   `(sml/process                               ((t (:inherit sml/prefix))))
   `(sml/sudo                                  ((t (:foreground ,creamsody-dark_orange :weight bold))))
   `(sml/read-only                             ((t (:foreground ,creamsody-neutral_blue))))
   `(sml/outside-modified                      ((t (:foreground ,creamsody-neutral_blue))))
   `(sml/modified                              ((t (:foreground ,creamsody-neutral_blue))))
   `(sml/vc                                    ((t (:foreground ,creamsody-faded_green))))
   `(sml/vc-edited                             ((t (:foreground ,creamsody-bright_green))))
   `(sml/charging                              ((t (:foreground ,creamsody-faded_aqua))))
   `(sml/discharging                           ((t (:foreground ,creamsody-faded_aqua :weight bold))))
   `(sml/col-number                            ((t (:foreground ,creamsody-neutral_orange))))
   `(sml/position-percentage                   ((t (:foreground ,creamsody-faded_aqua))))

   ;; Matches and Isearch
   `(lazy-highlight                            ((t (:foreground ,creamsody-light0 :background ,creamsody-dark3))))
   `(highlight                                 ((t (:foreground ,creamsody-light0_hard :background ,creamsody-faded_blue))))
   `(match                                     ((t (:foreground ,creamsody-light0 :background ,creamsody-mid_orange))))

   ;; MODE SUPPORT: isearch
   `(isearch                                   ((t (:foreground ,creamsody-light0 :background ,creamsody-mid_cyan))))
   `(isearch-fail                              ((t (:foreground ,creamsody-light0_hard :background ,creamsody-faded_red))))

   ;; MODE SUPPORT: show-paren
   `(show-paren-match                          ((t (:foreground ,creamsody-light0 :background ,creamsody-faded_blue))))
   `(show-paren-mismatch                       ((t (:foreground ,creamsody-light0_hard :background ,creamsody-faded_red))))

   ;; MODE SUPPORT: anzu
   `(anzu-mode-line                            ((t (:foreground ,creamsody-light0 :height 100 :background ,creamsody-faded_blue))))
   `(anzu-match-1                              ((t (:foreground ,creamsody-dark0 :background ,creamsody-bright_green))))
   `(anzu-match-2                              ((t (:foreground ,creamsody-dark0 :background ,creamsody-bright_yellow))))
   `(anzu-match-3                              ((t (:foreground ,creamsody-dark0 :background ,creamsody-bright_cyan))))
   `(anzu-replace-highlight                    ((t (:background ,creamsody-dark_aqua))))
   `(anzu-replace-to                           ((t (:background ,creamsody-dark_cyan))))

   ;; MODE SUPPORT: el-search
   `(el-search-match                           ((t (:background ,creamsody-dark_cyan))))
   `(el-search-other-match                     ((t (:background ,creamsody-dark_blue))))

   ;; MODE SUPPORT: avy
   `(avy-lead-face-0                           ((t (:foreground ,creamsody-bright_blue ))))
   `(avy-lead-face-1                           ((t (:foreground ,creamsody-bright_aqua ))))
   `(avy-lead-face-2                           ((t (:foreground ,creamsody-bright_purple ))))
   `(avy-lead-face                             ((t (:foreground ,creamsody-bright_red ))))
   `(avy-background-face                       ((t (:foreground ,creamsody-dark3 ))))
   `(avy-goto-char-timer-face                  ((t (:inherit    highlight ))))

   ;; MODE SUPPORT: popup
   `(popup-face                                ((t (:foreground ,creamsody-light0 :background ,creamsody-dark1))))
   `(popup-menu-mouse-face                     ((t (:foreground ,creamsody-light0 :background ,creamsody-faded_blue))))
   `(popup-menu-selection-face                 ((t (:foreground ,creamsody-light0 :background ,creamsody-faded_blue))))
   `(popup-tip-face                            ((t (:foreground ,creamsody-light0_hard :background ,creamsody-dark_aqua))))
   ;; Use tip colors for the pos-tip color vars (see below)

   ;; Inherit ac-dabbrev from popup menu face
   ;; MODE SUPPORT: ac-dabbrev
   `(ac-dabbrev-menu-face                      ((t (:inherit popup-face))))
   `(ac-dabbrev-selection-face                 ((t (:inherit popup-menu-selection-face))))

   ;; MODE SUPPORT: sh mode
   `(sh-heredoc                                ((t (:foreground ,creamsody-darkslategray4 :background nil))))
   `(sh-quoted-exec                            ((t (:foreground ,creamsody-darkslategray4 :background nil))))

   ;; MODE SUPPORT: company
   `(company-echo                              ((t (:inherit company-echo-common))))
   `(company-echo-common                       ((t (:foreground ,creamsody-bright_blue :background nil))))
   `(company-preview-common                    ((t (:underline ,creamsody-light1))))
   `(company-preview                           ((t (:inherit company-preview-common))))
   `(company-preview-search                    ((t (:inherit company-preview-common))))
   `(company-template-field                    ((t (:foreground ,creamsody-bright_blue :background nil :underline ,creamsody-dark_blue))))
   `(company-scrollbar-fg                      ((t (:foreground nil :background ,creamsody-dark2))))
   `(company-scrollbar-bg                      ((t (:foreground nil :background ,creamsody-dark3))))
   `(company-tooltip                           ((t (:foreground ,creamsody-light0_hard :background ,creamsody-dark1))))
   `(company-preview-common                    ((t (:inherit font-lock-comment-face))))
   `(company-tooltip-common                    ((t (:foreground ,creamsody-light0 :background ,creamsody-dark1))))
   `(company-tooltip-annotation                ((t (:foreground ,creamsody-bright_blue :background ,creamsody-dark1))))
   `(company-tooltip-common-selection          ((t (:foreground ,creamsody-light0 :background ,creamsody-faded_blue))))
   `(company-tooltip-mouse                     ((t (:foreground ,creamsody-dark0 :background ,creamsody-bright_blue))))
   `(company-tooltip-selection                 ((t (:foreground ,creamsody-light0 :background ,creamsody-faded_blue))))

   ;; MODE SUPPORT: dired+
   `(diredp-file-name                          ((t (:foreground ,creamsody-light2 ))))
   `(diredp-file-suffix                        ((t (:foreground ,creamsody-light4 ))))
   `(diredp-compressed-file-suffix             ((t (:foreground ,creamsody-faded_cyan ))))
   `(diredp-dir-name                           ((t (:foreground ,creamsody-faded_cyan ))))
   `(diredp-dir-heading                        ((t (:foreground ,creamsody-bright_cyan ))))
   `(diredp-symlink                            ((t (:foreground ,creamsody-bright_orange ))))
   `(diredp-date-time                          ((t (:foreground ,creamsody-light3 ))))
   `(diredp-number                             ((t (:foreground ,creamsody-faded_cyan ))))
   `(diredp-no-priv                            ((t (:foreground ,creamsody-dark4 ))))
   `(diredp-other-priv                         ((t (:foreground ,creamsody-dark2 ))))
   `(diredp-rare-priv                          ((t (:foreground ,creamsody-dark4 ))))
   `(diredp-ignored-file-name                  ((t (:foreground ,creamsody-dark4 ))))

   `(diredp-dir-priv                           ((t (:foreground ,creamsody-faded_cyan  :background ,creamsody-dark_blue))))
   `(diredp-exec-priv                          ((t (:foreground ,creamsody-faded_cyan  :background ,creamsody-dark_blue))))
   `(diredp-link-priv                          ((t (:foreground ,creamsody-faded_aqua  :background ,creamsody-dark_aqua))))
   `(diredp-read-priv                          ((t (:foreground ,creamsody-bright_red  :background ,creamsody-dark_red))))
   `(diredp-write-priv                         ((t (:foreground ,creamsody-bright_aqua :background ,creamsody-dark_aqua))))

   ;; MODE SUPPORT: helm
   `(helm-M-x-key                              ((t (:foreground ,creamsody-neutral_orange))))
   `(helm-action                               ((t (:foreground ,creamsody-white :underline t))))
   `(helm-bookmark-addressbook                 ((t (:foreground ,creamsody-neutral_red))))
   `(helm-bookmark-directory                   ((t (:foreground ,creamsody-bright_purple))))
   `(helm-bookmark-file                        ((t (:foreground ,creamsody-faded_blue))))
   `(helm-bookmark-gnus                        ((t (:foreground ,creamsody-faded_purple))))
   `(helm-bookmark-info                        ((t (:foreground ,creamsody-turquoise4))))
   `(helm-bookmark-man                         ((t (:foreground ,creamsody-floaty))))
   `(helm-bookmark-w3m                         ((t (:foreground ,creamsody-neutral_yellow))))
   `(helm-buffer-directory                     ((t (:foreground ,creamsody-white :background ,creamsody-bright_blue))))
   `(helm-buffer-not-saved                     ((t (:foreground ,creamsody-faded_red))))
   `(helm-buffer-process                       ((t (:foreground ,creamsody-sandyblur ))))
   `(helm-buffer-saved-out                     ((t (:foreground ,creamsody-bright_red))))
   `(helm-buffer-size                          ((t (:foreground ,creamsody-bright_purple))))
   `(helm-candidate-number                     ((t (:foreground ,creamsody-neutral_green))))
   `(helm-ff-directory                         ((t (:foreground ,creamsody-neutral_purple))))
   `(helm-ff-executable                        ((t (:foreground ,creamsody-turquoise4))))
   `(helm-ff-file                              ((t (:foreground ,creamsody-floaty))))
   `(helm-ff-invalid-symlink                   ((t (:foreground ,creamsody-white :background ,creamsody-bright_red))))
   `(helm-ff-prefix                            ((t (:foreground ,creamsody-black :background ,creamsody-neutral_yellow))))
   `(helm-ff-symlink                           ((t (:foreground ,creamsody-neutral_orange))))
   `(helm-grep-cmd-line                        ((t (:foreground ,creamsody-neutral_green))))
   `(helm-grep-file                            ((t (:foreground ,creamsody-faded_purple))))
   `(helm-grep-finish                          ((t (:foreground ,creamsody-turquoise4))))
   `(helm-grep-lineno                          ((t (:foreground ,creamsody-neutral_orange))))
   `(helm-grep-match                           ((t (:foreground ,creamsody-neutral_yellow))))
   `(helm-grep-running                         ((t (:foreground ,creamsody-neutral_red))))
   `(helm-header                               ((t (:foreground ,creamsody-aquamarine4))))
   `(helm-helper                               ((t (:foreground ,creamsody-aquamarine4))))
   `(helm-history-deleted                      ((t (:foreground ,creamsody-black :background ,creamsody-bright_red))))
   `(helm-history-remote                       ((t (:foreground ,creamsody-faded_red))))
   `(helm-lisp-completion-info                 ((t (:foreground ,creamsody-faded_orange))))
   `(helm-lisp-show-completion                 ((t (:foreground ,creamsody-bright_red))))
   `(helm-locate-finish                        ((t (:foreground ,creamsody-white :background ,creamsody-aquamarine4))))
   `(helm-match                                ((t (:foreground ,creamsody-neutral_orange))))
   `(helm-moccur-buffer                        ((t (:foreground ,creamsody-bright_aqua :underline t))))
   `(helm-prefarg                              ((t (:foreground ,creamsody-turquoise4))))
   `(helm-selection                            ((t (:foreground ,creamsody-white :background ,creamsody-dark2))))
   `(helm-selection-line                       ((t (:foreground ,creamsody-white :background ,creamsody-dark2))))
   `(helm-separator                            ((t (:foreground ,creamsody-faded_red))))
   `(helm-source-header                        ((t (:foreground ,creamsody-light2 :background ,creamsody-dark1))))
   `(helm-visible-mark                         ((t (:foreground ,creamsody-black :background ,creamsody-light3))))

   ;; MODE SUPPORT: column-marker
   `(column-marker-1                           ((t (:background ,creamsody-faded_blue))))
   `(column-marker-2                           ((t (:background ,creamsody-faded_purple))))
   `(column-marker-3                           ((t (:background ,creamsody-faded_cyan))))

   ;; MODE SUPPORT: vline
   `(vline                                     ((t (:background ,creamsody-dark_aqua))))
   `(vline-visual                              ((t (:background ,creamsody-dark_aqua))))

   ;; MODE SUPPORT: col-highlight
   `(col-highlight                             ((t (:inherit vline))))

   ;; MODE SUPPORT: column-enforce-mode
   `(column-enforce-face                       ((t (:foreground ,creamsody-dark4 :background ,creamsody-dark_red))))

   ;; MODE SUPPORT: hydra
   `(hydra-face-red                            ((t (:foreground ,creamsody-bright_red))))
   `(hydra-face-blue                           ((t (:foreground ,creamsody-bright_blue))))
   `(hydra-face-pink                           ((t (:foreground ,creamsody-identifiers-15))))
   `(hydra-face-amaranth                       ((t (:foreground ,creamsody-faded_purple))))
   `(hydra-face-teal                           ((t (:foreground ,creamsody-faded_cyan))))

   ;; MODE SUPPORT: ivy
   `(ivy-current-match                         ((t (:foreground ,creamsody-light0 :background ,creamsody-faded_blue))))
   `(ivy-minibuffer-match-face-1               ((t (:background ,creamsody-dark1))))
   `(ivy-minibuffer-match-face-2               ((t (:background ,creamsody-dark2))))
   `(ivy-minibuffer-match-face-3               ((t (:background ,creamsody-faded_aqua))))
   `(ivy-minibuffer-match-face-4               ((t (:background ,creamsody-faded_purple))))
   `(ivy-confirm-face                          ((t (:foreground ,creamsody-bright_green))))
   `(ivy-match-required-face                   ((t (:foreground ,creamsody-bright_red))))
   `(ivy-remote                                ((t (:foreground ,creamsody-neutral_blue))))

   ;; MODE SUPPORT: smerge
   ;; TODO: smerge-base, smerge-refined-changed
   `(smerge-mine                               ((t (:background ,creamsody-mid_purple))))
   `(smerge-other                              ((t (:background ,creamsody-mid_blue))))
   `(smerge-markers                            ((t (:background ,creamsody-dark0_soft))))
   `(smerge-refined-added                      ((t (:background ,creamsody-dark_green))))
   `(smerge-refined-removed                    ((t (:background ,creamsody-dark_red))))

   ;; MODE SUPPORT: git-gutter
   `(git-gutter:separator                      ((t (:inherit git-gutter+-separator ))))
   `(git-gutter:modified                       ((t (:inherit git-gutter+-modified ))))
   `(git-gutter:added                          ((t (:inherit git-gutter+-added ))))
   `(git-gutter:deleted                        ((t (:inherit git-gutter+-deleted ))))
   `(git-gutter:unchanged                      ((t (:inherit git-gutter+-unchanged ))))

   ;; MODE SUPPORT: git-gutter+
   `(git-gutter+-commit-header-face            ((t (:inherit font-lock-comment-face))))
   `(git-gutter+-added                         ((t (:foreground ,creamsody-faded_green :background ,creamsody-muted_green ))))
   `(git-gutter+-deleted                       ((t (:foreground ,creamsody-faded_red :background ,creamsody-muted_red ))))
   `(git-gutter+-modified                      ((t (:foreground ,creamsody-faded_purple :background ,creamsody-muted_purple ))))
   `(git-gutter+-separator                     ((t (:foreground ,creamsody-faded_cyan :background ,creamsody-muted_cyan ))))
   `(git-gutter+-unchanged                     ((t (:foreground ,creamsody-faded_yellow :background ,creamsody-muted_yellow ))))


   ;; MODE SUPPORT: git-gutter-fr+
   `(git-gutter-fr+-added                      ((t (:inherit git-gutter+-added))))
   `(git-gutter-fr+-deleted                    ((t (:inherit git-gutter+-deleted))))
   `(git-gutter-fr+-modified                   ((t (:inherit git-gutter+-modified))))

   ;; MODE SUPPORT: magit
   `(magit-branch                              ((t (:foreground ,creamsody-turquoise4 :background nil))))
   `(magit-branch-local                        ((t (:foreground ,creamsody-turquoise4 :background nil))))
   `(magit-branch-remote                       ((t (:foreground ,creamsody-aquamarine4 :background nil))))
   `(magit-cherry-equivalent                   ((t (:foreground ,creamsody-neutral_orange))))
   `(magit-cherry-unmatched                    ((t (:foreground ,creamsody-neutral_purple))))
   `(magit-diff-context                        ((t (:foreground ,creamsody-dark3 :background nil))))
   `(magit-diff-context-highlight              ((t (:foreground ,creamsody-dark4 :background ,creamsody-dark0_soft))))
   `(magit-diff-added                          ((t (:foreground ,creamsody-bright_green :background ,creamsody-mid_green))))
   `(magit-diff-added-highlight                ((t (:foreground ,creamsody-bright_green :background ,creamsody-mid_green))))
   `(magit-diff-removed                        ((t (:foreground ,creamsody-bright_red :background ,creamsody-mid_red))))
   `(magit-diff-removed-highlight              ((t (:foreground ,creamsody-bright_red :background ,creamsody-mid_red))))
   `(magit-diff-add                            ((t (:foreground ,creamsody-bright_green))))
   `(magit-diff-del                            ((t (:foreground ,creamsody-bright_red))))
   `(magit-diff-file-header                    ((t (:foreground ,creamsody-bright_blue))))
   `(magit-diff-hunk-header                    ((t (:foreground ,creamsody-neutral_aqua))))
   `(magit-diff-merge-current                  ((t (:background ,creamsody-dark_yellow))))
   `(magit-diff-merge-diff3-separator          ((t (:foreground ,creamsody-neutral_orange :weight bold))))
   `(magit-diff-merge-proposed                 ((t (:background ,creamsody-dark_green))))
   `(magit-diff-merge-separator                ((t (:foreground ,creamsody-neutral_orange))))
   `(magit-diff-none                           ((t (:foreground ,creamsody-medium))))
   `(magit-item-highlight                      ((t (:background ,creamsody-dark1 :weight normal))))
   `(magit-item-mark                           ((t (:background ,creamsody-dark0))))
   `(magit-key-mode-args-face                  ((t (:foreground ,creamsody-light4))))
   `(magit-key-mode-button-face                ((t (:foreground ,creamsody-neutral_orange :weight bold))))
   `(magit-key-mode-header-face                ((t (:foreground ,creamsody-light4 :weight bold))))
   `(magit-key-mode-switch-face                ((t (:foreground ,creamsody-turquoise4 :weight bold))))
   `(magit-log-author                          ((t (:foreground ,creamsody-neutral_aqua))))
   `(magit-log-date                            ((t (:foreground ,creamsody-faded_orange))))
   `(magit-log-graph                           ((t (:foreground ,creamsody-light1))))
   `(magit-log-head-label-bisect-bad           ((t (:foreground ,creamsody-bright_red))))
   `(magit-log-head-label-bisect-good          ((t (:foreground ,creamsody-bright_green))))
   `(magit-log-head-label-bisect-skip          ((t (:foreground ,creamsody-neutral_yellow))))
   `(magit-log-head-label-default              ((t (:foreground ,creamsody-neutral_blue))))
   `(magit-log-head-label-head                 ((t (:foreground ,creamsody-light0 :background ,creamsody-dark_aqua))))
   `(magit-log-head-label-local                ((t (:foreground ,creamsody-faded_blue :weight bold))))
   `(magit-log-head-label-patches              ((t (:foreground ,creamsody-faded_orange))))
   `(magit-log-head-label-remote               ((t (:foreground ,creamsody-neutral_blue :weight bold))))
   `(magit-log-head-label-tags                 ((t (:foreground ,creamsody-neutral_aqua))))
   `(magit-log-head-label-wip                  ((t (:foreground ,creamsody-neutral_red))))
   `(magit-log-message                         ((t (:foreground ,creamsody-light1))))
   `(magit-log-reflog-label-amend              ((t (:foreground ,creamsody-bright_blue))))
   `(magit-log-reflog-label-checkout           ((t (:foreground ,creamsody-bright_yellow))))
   `(magit-log-reflog-label-cherry-pick        ((t (:foreground ,creamsody-neutral_red))))
   `(magit-log-reflog-label-commit             ((t (:foreground ,creamsody-neutral_green))))
   `(magit-log-reflog-label-merge              ((t (:foreground ,creamsody-bright_green))))
   `(magit-log-reflog-label-other              ((t (:foreground ,creamsody-faded_red))))
   `(magit-log-reflog-label-rebase             ((t (:foreground ,creamsody-bright_blue))))
   `(magit-log-reflog-label-remote             ((t (:foreground ,creamsody-neutral_orange))))
   `(magit-log-reflog-label-reset              ((t (:foreground ,creamsody-neutral_yellow))))
   `(magit-log-sha1                            ((t (:foreground ,creamsody-bright_orange))))
   `(magit-process-ng                          ((t (:foreground ,creamsody-bright_red :weight bold))))
   `(magit-process-ok                          ((t (:foreground ,creamsody-bright_green :weight bold))))
   `(magit-section-heading                     ((t (:foreground ,creamsody-light2 :background ,creamsody-dark_blue))))
   `(magit-signature-bad                       ((t (:foreground ,creamsody-bright_red :weight bold))))
   `(magit-signature-good                      ((t (:foreground ,creamsody-bright_green :weight bold))))
   `(magit-signature-none                      ((t (:foreground ,creamsody-faded_red))))
   `(magit-signature-untrusted                 ((t (:foreground ,creamsody-bright_purple :weight bold))))
   `(magit-tag                                 ((t (:foreground ,creamsody-darkslategray4))))
   `(magit-whitespace-warning-face             ((t (:background ,creamsody-faded_red))))
   `(magit-bisect-bad                          ((t (:foreground ,creamsody-faded_red))))
   `(magit-bisect-good                         ((t (:foreground ,creamsody-neutral_green))))
   `(magit-bisect-skip                         ((t (:foreground ,creamsody-light2))))   `(magit-blame-date                          ((t (:inherit magit-blame-heading))))
   `(magit-blame-name                          ((t (:inherit magit-blame-heading))))
   `(magit-blame-hash                          ((t (:inherit magit-blame-heading))))
   `(magit-blame-summary                       ((t (:inherit magit-blame-heading))))
   `(magit-blame-heading                       ((t (:background ,creamsody-dark1 :foreground ,creamsody-light0))))
   `(magit-sequence-onto                       ((t (:inherit magit-sequence-done))))
   `(magit-sequence-done                       ((t (:inherit magit-hash))))
   `(magit-sequence-drop                       ((t (:foreground ,creamsody-faded_red))))
   `(magit-sequence-head                       ((t (:foreground ,creamsody-faded_cyan))))
   `(magit-sequence-part                       ((t (:foreground ,creamsody-bright_yellow))))
   `(magit-sequence-stop                       ((t (:foreground ,creamsody-bright_aqua))))
   `(magit-sequence-pick                       ((t (:inherit default))))
   `(magit-filename                            ((t (:weight normal))))
   `(magit-refname-wip                         ((t (:inherit magit-refname))))
   `(magit-refname-stash                       ((t (:inherit magit-refname))))
   `(magit-refname                             ((t (:foreground ,creamsody-light2))))
   `(magit-head                                ((t (:inherit magit-branch-local))))
   `(magit-popup-disabled-argument             ((t (:foreground ,creamsody-light4))))

   ;; MODE SUPPORT: term
   `(term-color-black                          ((t (:foreground ,creamsody-dark1))))
   `(term-color-blue                           ((t (:foreground ,creamsody-neutral_blue))))
   `(term-color-cyan                           ((t (:foreground ,creamsody-neutral_cyan))))
   `(term-color-green                          ((t (:foreground ,creamsody-neutral_green))))
   `(term-color-magenta                        ((t (:foreground ,creamsody-neutral_purple))))
   `(term-color-red                            ((t (:foreground ,creamsody-neutral_red))))
   `(term-color-white                          ((t (:foreground ,creamsody-light1))))
   `(term-color-yellow                         ((t (:foreground ,creamsody-neutral_yellow))))
   `(term-default-fg-color                     ((t (:foreground ,creamsody-light0))))
   `(term-default-bg-color                     ((t (:background ,creamsody-dark0))))

   ;; MODE SUPPORT: Elfeed
   `(elfeed-search-date-face                    ((t (:foreground ,creamsody-muted_cyan))))
   `(elfeed-search-feed-face                    ((t (:foreground ,creamsody-faded_cyan))))
   `(elfeed-search-tag-face                     ((t (:foreground ,creamsody-light3))))
   `(elfeed-search-title-face                   ((t (:foreground ,creamsody-light3 :bold nil))))
   `(elfeed-search-unread-title-face            ((t (:foreground ,creamsody-light0_hard :bold nil))))

   ;; MODE SUPPORT: message
   `(message-header-to                          ((t (:foreground ,creamsody-bright_cyan ))))
   `(message-header-cc                          ((t (:foreground ,creamsody-bright_cyan ))))
   `(message-header-subject                     ((t (:foreground ,creamsody-light2 ))))
   `(message-header-newsgroups                  ((t (:foreground ,creamsody-bright_cyan ))))
   `(message-header-other                       ((t (:foreground ,creamsody-muted_cyan  ))))
   `(message-header-name                        ((t (:foreground ,creamsody-bright_cyan ))))
   `(message-header-xheader                     ((t (:foreground ,creamsody-faded_cyan ))))
   `(message-separator                          ((t (:foreground ,creamsody-faded_cyan ))))
   `(message-cited-text                         ((t (:foreground ,creamsody-light3 ))))
   `(message-mml                                ((t (:foreground ,creamsody-faded_aqua )))))

  (custom-theme-set-variables
   'creamsody

   `(pos-tip-foreground-color ,creamsody-light0_hard)
   `(pos-tip-background-color ,creamsody-dark_aqua)

   `(ansi-color-names-vector ["#3C3836"
                              "#FB4933"
                              "#86C9D3"
                              "#8DD1CA"
                              "#419BB0"
                              "#A59FC0"
                              "#67C6BD"
                              "#EBDBB2"])))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(defun creamsody-modeline ()
  "Optional modeline styling for creamsody."
  (interactive)
  (set-face-attribute 'mode-line nil
                      :inherit 'mode-line-face
                      :foreground "#7DBCC6"
                      :background "#0E252D"
                      :height 120
                      :inverse-video nil
                      :box '(:line-width 6 :color "#0E252D" :style nil))
  (set-face-attribute 'mode-line-inactive nil
                      :inherit 'mode-line-face
                      :foreground "#86C9D3"
                      :background "#327789"
                      :height 120
                      :inverse-video nil
                      :box '(:line-width 6 :color "#327789" :style nil)))

(provide-theme 'creamsody)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode 1))
;; End:

;;; creamsody-theme.el ends here
