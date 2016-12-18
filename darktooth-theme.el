;;; darktooth-theme.el --- From the darkness... it watches

;; Copyright (c) 2015-2016 Jason Milkins (GNU/GPL Licence)

;; Authors: Jason Milkins <jasonm23@gmail.com>
;; URL: http://github.com/emacsfodder/emacs-theme-darktooth
;; Version: 0.2.3
;; Package-Requires: ((autothemer "0.2"))

;;; Commentary:
;;  From the darkness... it watches

;;  Since 0.2.0  : Built using autothemer
;;  Since 0.1.60 : includes `darktooth-modeline'

;;; Code:
(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(deftheme darktooth "From the darkness... it watches")

(autothemer-deftheme darktooth "A color theme for Emacs, from the darkness... it watches"

                     ((((class color) (min-colors #xFFFFFF)) ((class color) (min-colors #xFF)))
                      (darktooth-dark0_hard      "#1D2021" "#1c1c1c")
                      (darktooth-dark0           "#282828" "#262626")
                      (darktooth-dark0_soft      "#32302F" "#303030")
                      (darktooth-dark1           "#3C3836" "#3a3a3a")
                      (darktooth-dark2           "#504945" "#4e4e4e")
                      (darktooth-dark3           "#665C54" "#626262")
                      (darktooth-dark4           "#7C6F64" "#767676")

                      (darktooth-medium          "#928374" "#8a8a8a") ;; or 244

                      (darktooth-light0_hard     "#FFFFC8" "#ffffdf")
                      (darktooth-light0          "#FDF4C1" "#ffffaf")
                      (darktooth-light0_soft     "#F4E8BA" "#ffff87")
                      (darktooth-light1          "#EBDBB2" "#ffdfaf")
                      (darktooth-light2          "#D5C4A1" "#bcbcbc")
                      (darktooth-light3          "#BDAE93" "#a8a8a8")
                      (darktooth-light4          "#A89984" "#949494")

                      (darktooth-bright_red      "#FB4933" "#d75f5f")
                      (darktooth-bright_green    "#B8BB26" "#afaf00")
                      (darktooth-bright_yellow   "#FABD2F" "#ffaf00")
                      (darktooth-bright_blue     "#83A598" "#87afaf")
                      (darktooth-bright_purple   "#D3869B" "#d787af")
                      (darktooth-bright_aqua     "#8EC07C" "#87af87")
                      (darktooth-bright_orange   "#FE8019" "#ff8700")
                      (darktooth-bright_cyan     "#3FD7E5" "#00d7ff")

                      ;; neutral, no 256-color code, requested, nice work-around meanwhile
                      (darktooth-neutral_red     "#FB4934" "#D75F5F")
                      (darktooth-neutral_green   "#B8BB26" "#73AF00")
                      (darktooth-neutral_yellow  "#FABD2F" "#FFAF00")
                      (darktooth-neutral_blue    "#83A598" "#87AFAF")
                      (darktooth-neutral_purple  "#D3869B" "#D787AF")
                      (darktooth-neutral_aqua    "#8EC07C" "#87AF87")
                      (darktooth-neutral_orange  "#FE8019" "#FF8700")
                      (darktooth-neutral_cyan    "#17CCD5" "#17CCD5")

                      (darktooth-faded_red       "#9D0006" "#870000")
                      (darktooth-faded_green     "#79740E" "#878700")
                      (darktooth-faded_yellow    "#B57614" "#af8700")
                      (darktooth-faded_blue      "#076678" "#005f87")
                      (darktooth-faded_purple    "#8F3F71" "#875f87")
                      (darktooth-faded_aqua      "#427B58" "#5f8787")
                      (darktooth-faded_orange    "#AF3A03" "#af5f00")
                      (darktooth-faded_cyan      "#00A7AF" "#00afaf")

                      (darktooth-muted_red       "#901A1E" "#870000")
                      (darktooth-muted_green     "#556C21" "#878700")
                      (darktooth-muted_yellow    "#A87933" "#af8700")
                      (darktooth-muted_blue      "#1B5C6B" "#005f87")
                      (darktooth-muted_purple    "#82526E" "#875f87")
                      (darktooth-muted_aqua      "#506E59" "#5f8787")
                      (darktooth-muted_orange    "#A24921" "#af5f00")
                      (darktooth-muted_cyan      "#18A7AF" "#00afaf")

                      (darktooth-dark_red        "#421E1E" "#5f0000")
                      (darktooth-dark_green      "#232B0F" "#005f00")
                      (darktooth-dark_yellow     "#4D3B27" "#5f5f00")
                      (darktooth-dark_blue       "#2B3C44" "#00005f")
                      (darktooth-dark_purple     "#4E3D45" "#5f00af")
                      (darktooth-dark_aqua       "#36473A" "#005f5f")
                      (darktooth-dark_orange     "#613620" "#af5f00")
                      (darktooth-dark_cyan       "#205161" "#005f87")

                      (darktooth-mid_red         "#3F1B1B" "#5f0000")
                      (darktooth-mid_green       "#1F321C" "#005f00")
                      (darktooth-mid_yellow      "#4C3A25" "#5f5f00")
                      (darktooth-mid_blue        "#30434C" "#00005f")
                      (darktooth-mid_purple      "#4C3B43" "#5f00af")
                      (darktooth-mid_aqua        "#394C3D" "#005f5f")
                      (darktooth-mid_orange      "#603000" "#af5f00")
                      (darktooth-mid_cyan        "#005560" "#005f87")

                      (darktooth-delimiter-one   "#5C7E81" "#5f8787")
                      (darktooth-delimiter-two   "#837486" "#875f5f")
                      (darktooth-delimiter-three "#9C6F68" "#af5f5f")
                      (darktooth-delimiter-four  "#7B665C" "#5f5f5f")

                      ;; 24 bit has tints from light0 and terminal cycles through
                      ;; the 4 darktooth-delimiter colors
                      (darktooth-identifiers-1   "#E5D5C5" "#ffdfaf")
                      (darktooth-identifiers-2   "#DFE5C5" "#dfdfaf")
                      (darktooth-identifiers-3   "#D5E5C5" "#dfe5c5")
                      (darktooth-identifiers-4   "#CAE5C5" "#ffd7af")
                      (darktooth-identifiers-5   "#C5E5CA" "#dfdf87")
                      (darktooth-identifiers-6   "#C5E5D5" "#dfdfdf")
                      (darktooth-identifiers-7   "#C5E5DF" "#afdfdf")
                      (darktooth-identifiers-8   "#C5DFE5" "#dfdfff")
                      (darktooth-identifiers-9   "#C5D5E5" "#afdfff")
                      (darktooth-identifiers-10  "#C5CAE5" "#dfafff")
                      (darktooth-identifiers-11  "#CAC5E5" "#afafff")
                      (darktooth-identifiers-12  "#D5C5E5" "#dfafaf")
                      (darktooth-identifiers-13  "#DFC5E5" "#dfc5e5")
                      (darktooth-identifiers-14  "#E5C5DF" "#ffafaf")
                      (darktooth-identifiers-15  "#E5C5D5" "#dfdfff")

                      (darktooth-white           "#FFFFFF" "white")
                      (darktooth-black           "#000000" "black")
                      (darktooth-sienna          "#DD6F48" "sienna")
                      (darktooth-darkslategray4  "#528B8B" "DarkSlateGray4")
                      (darktooth-lightblue4      "#66999D" "LightBlue4")
                      (darktooth-burlywood4      "#BBAA97" "burlywood4")
                      (darktooth-aquamarine4     "#83A598" "aquamarine4")
                      (darktooth-turquoise4      "#61ACBB" "turquoise4"))

                     (
                      ;; UI
                      (default                                    (:foreground darktooth-light0 :background darktooth-dark0))
                      (cursor                                     (:background darktooth-light0))
                      (link                                       (:foreground darktooth-bright_blue :underline t))
                      (link-visited                               (:foreground darktooth-bright_blue :underline nil))

                      (mode-line                                  (:foreground darktooth-light1 :background darktooth-dark0_hard :box nil))
                      (mode-line-inactive                         (:foreground darktooth-light4 :background darktooth-dark2 :box nil))
                      (fringe                                     (:background darktooth-dark0))
                      (linum                                      (:foreground darktooth-dark4))
                      (hl-line                                    (:background darktooth-dark_purple))
                      (region                                     (:background darktooth-mid_blue :distant-foreground darktooth-light0))
                      (secondary-selection                        (:background darktooth-dark_blue))
                      (cua-rectangle                              (:background darktooth-mid_blue))
                      (header-line                                (:foreground darktooth-turquoise4 :background darktooth-dark0 :bold nil))
                      (minibuffer-prompt                          (:foreground darktooth-bright_cyan :background darktooth-dark0 :bold nil))

                      ;; compilation messages (also used by several other modes)
                      (compilation-info                           (:foreground darktooth-neutral_green))
                      (compilation-mode-line-fail                 (:foreground darktooth-neutral_red))
                      (error                                      (:foreground darktooth-bright_orange :bold t))
                      (success                                    (:foreground darktooth-neutral_green :bold t))
                      (warning                                    (:foreground darktooth-bright_red :bold t))

                      ;; Built-in syntax
                      (font-lock-builtin-face                     (:foreground darktooth-bright_orange))
                      (font-lock-constant-face                    (:foreground darktooth-burlywood4))
                      (font-lock-comment-face                     (:foreground darktooth-dark4))
                      (font-lock-function-name-face               (:foreground darktooth-light4))
                      (font-lock-keyword-face                     (:foreground darktooth-sienna))
                      (font-lock-string-face                      (:foreground darktooth-darkslategray4))
                      (font-lock-variable-name-face               (:foreground darktooth-aquamarine4))
                      (font-lock-type-face                        (:foreground darktooth-lightblue4))
                      (font-lock-warning-face                     (:foreground darktooth-neutral_red :bold t))

                      ;; MODE SUPPORT: elixir-mode
                      (elixir-atom-face                           (:foreground darktooth-lightblue4))
                      (elixir-attribute-face                      (:foreground darktooth-burlywood4))

                      ;; MODE SUPPORT: whitespace-mode
                      (whitespace-space                           (:foreground darktooth-dark4 :background darktooth-dark0))
                      (whitespace-hspace                          (:foreground darktooth-dark4 :background darktooth-dark0))
                      (whitespace-tab                             (:foreground darktooth-dark4 :background darktooth-dark0))
                      (whitespace-newline                         (:foreground darktooth-dark4 :background darktooth-dark0))
                      (whitespace-trailing                        (:foreground darktooth-neutral_red :background darktooth-dark1))
                      (whitespace-line                            (:foreground darktooth-neutral_red :background darktooth-dark1))
                      (whitespace-space-before-tab                (:foreground darktooth-dark4 :background darktooth-dark0))
                      (whitespace-indentation                     (:foreground darktooth-dark4 :background darktooth-dark0))
                      (whitespace-empty                           (:foreground nil :background nil))
                      (whitespace-space-after-tab                 (:foreground darktooth-dark4 :background darktooth-dark0))

                      ;; MODE SUPPORT: rainbow-delimiters
                      (rainbow-delimiters-depth-1-face            (:foreground darktooth-delimiter-one))
                      (rainbow-delimiters-depth-2-face            (:foreground darktooth-delimiter-two))
                      (rainbow-delimiters-depth-3-face            (:foreground darktooth-delimiter-three))
                      (rainbow-delimiters-depth-4-face            (:foreground darktooth-delimiter-four))
                      (rainbow-delimiters-depth-5-face            (:foreground darktooth-delimiter-one))
                      (rainbow-delimiters-depth-6-face            (:foreground darktooth-delimiter-two))
                      (rainbow-delimiters-depth-7-face            (:foreground darktooth-delimiter-three))
                      (rainbow-delimiters-depth-8-face            (:foreground darktooth-delimiter-four))
                      (rainbow-delimiters-depth-9-face            (:foreground darktooth-delimiter-one))
                      (rainbow-delimiters-depth-10-face           (:foreground darktooth-delimiter-two))
                      (rainbow-delimiters-depth-11-face           (:foreground darktooth-delimiter-three))
                      (rainbow-delimiters-depth-12-face           (:foreground darktooth-delimiter-four))
                      (rainbow-delimiters-unmatched-face          (:foreground darktooth-light0 :background nil))

                      ;; MODE SUPPORT: rainbow-identifiers
                      (rainbow-identifiers-identifier-1           (:foreground darktooth-identifiers-1))
                      (rainbow-identifiers-identifier-2           (:foreground darktooth-identifiers-2))
                      (rainbow-identifiers-identifier-3           (:foreground darktooth-identifiers-3))
                      (rainbow-identifiers-identifier-4           (:foreground darktooth-identifiers-4))
                      (rainbow-identifiers-identifier-5           (:foreground darktooth-identifiers-5))
                      (rainbow-identifiers-identifier-6           (:foreground darktooth-identifiers-6))
                      (rainbow-identifiers-identifier-7           (:foreground darktooth-identifiers-7))
                      (rainbow-identifiers-identifier-8           (:foreground darktooth-identifiers-8))
                      (rainbow-identifiers-identifier-9           (:foreground darktooth-identifiers-9))
                      (rainbow-identifiers-identifier-10          (:foreground darktooth-identifiers-10))
                      (rainbow-identifiers-identifier-11          (:foreground darktooth-identifiers-11))
                      (rainbow-identifiers-identifier-12          (:foreground darktooth-identifiers-12))
                      (rainbow-identifiers-identifier-13          (:foreground darktooth-identifiers-13))
                      (rainbow-identifiers-identifier-14          (:foreground darktooth-identifiers-14))
                      (rainbow-identifiers-identifier-15          (:foreground darktooth-identifiers-15))

                      ;; MODE SUPPORT: ido
                      (ido-indicator                              (:background darktooth-bright_red :foreground darktooth-bright_yellow))
                      (ido-subdir                                 (:foreground darktooth-light3))
                      (ido-first-match                            (:foreground darktooth-faded_cyan :background darktooth-dark0_hard))
                      (ido-only-match                             (:foreground darktooth-darkslategray4))
                      (ido-vertical-match-face                    (:bold t))
                      (ido-vertical-only-match-face               (:foreground darktooth-bright_cyan))
                      (ido-vertical-first-match-face              (:foreground darktooth-bright_cyan :background darktooth-dark_blue))

                      ;; MODE SUPPORT: linum-relative
                      (linum-relative-current-face                (:foreground darktooth-light4 :background darktooth-dark1))

                      ;; MODE SUPPORT: highlight-indentation-mode
                      (highlight-indentation-current-column-face  (:background darktooth-dark4))
                      (highlight-indentation-face                 (:background darktooth-dark1))

                      ;; MODE SUPPORT: highlight-numbers
                      (highlight-numbers-number                   (:foreground darktooth-bright_purple :bold nil))

                      ;; MODE SUPPORT: highlight-symbol
                      (highlight-symbol-face                      (:foreground darktooth-neutral_purple))

                      ;; MODE SUPPORT: hi-lock
                      (hi-blue                                    (:foreground darktooth-dark0_hard :background darktooth-bright_blue ))
                      (hi-green                                   (:foreground darktooth-dark0_hard :background darktooth-bright_green ))
                      (hi-pink                                    (:foreground darktooth-dark0_hard :background darktooth-bright_purple ))
                      (hi-yellow                                  (:foreground darktooth-dark0_hard :background darktooth-bright_yellow ))
                      (hi-blue-b                                  (:foreground darktooth-bright_blue :bold t ))
                      (hi-green-b                                 (:foreground darktooth-bright_green :bold t ))
                      (hi-red-b                                   (:foreground darktooth-bright_red :bold t  ))
                      (hi-black-b                                 (:foreground darktooth-bright_orange :background darktooth-dark0_hard :bold t  ))
                      (hi-black-hb                                (:foreground darktooth-bright_cyan :background darktooth-dark0_hard :bold t  ))

                      ;; MODE SUPPORT: smartparens
                      (sp-pair-overlay-face                       (:background darktooth-dark2))
                      (sp-show-pair-match-face                    (:background darktooth-dark2))
                      (sp-show-pair-mismatch-face                 (:background darktooth-neutral_red))

                      ;; MODE SUPPORT: auctex
                      (font-latex-math-face                       (:foreground darktooth-lightblue4))
                      (font-latex-sectioning-5-face               (:foreground darktooth-neutral_green))
                      (font-latex-string-face                     (:inherit 'font-lock-string-face))
                      (font-latex-warning-face                    (:inherit 'warning))

                      ;; MODE SUPPORT: elscreen
                      (elscreen-tab-background-face               (:background darktooth-dark0 :box nil))
                      (elscreen-tab-control-face                  (:foreground darktooth-neutral_red :background darktooth-dark2 :box nil :underline nil))
                      (elscreen-tab-current-screen-face           (:foreground darktooth-dark0 :background darktooth-dark4 :box nil))
                      (elscreen-tab-other-screen-face             (:foreground darktooth-light4 :background darktooth-dark2 :box nil :underline nil))

                      ;; MODE SUPPORT: embrace
                      (embrace-help-pair-face                     (:foreground darktooth-bright_blue))
                      (embrace-help-separator-face                (:foreground darktooth-bright_orange))
                      (embrace-help-key-face                      (:weight 'bold darktooth-bright_green))
                      (embrace-help-mark-func-face                (:foreground darktooth-bright_cyan))

                      ;; MODE SUPPORT: ag (The Silver Searcher)
                      (ag-hit-face                                (:foreground darktooth-neutral_blue))
                      (ag-match-face                              (:foreground darktooth-neutral_red))

                      ;; MODE SUPPORT: RipGrep
                      (ripgrep-hit-face                           (:inherit 'ag-hit-face))
                      (ripgrep-match-face                         (:inherit 'ag-match-face))

                      ;; MODE SUPPORT: diff
                      (diff-changed                               (:foreground darktooth-light1 :background nil))
                      (diff-added                                 (:foreground darktooth-neutral_green :background nil))
                      (diff-removed                               (:foreground darktooth-neutral_red :background nil))

                      ;; MODE SUPPORT: diff-indicator
                      (diff-indicator-changed                     (:inherit 'diff-changed))
                      (diff-indicator-added                       (:inherit 'diff-added))
                      (diff-indicator-removed                     (:inherit 'diff-removed))

                      ;; MODE SUPPORT: diff-hl
                      (diff-hl-change                             (:inherit 'diff-changed))
                      (diff-hl-delete                             (:inherit 'diff-removed))
                      (diff-hl-insert                             (:inherit 'diff-added))

                      (js2-warning                                (:underline (:color darktooth-bright_yellow :style 'wave)))
                      (js2-error                                  (:underline (:color darktooth-bright_red :style 'wave)))
                      (js2-external-variable                      (:underline (:color darktooth-bright_aqua :style 'wave)))
                      (js2-jsdoc-tag                              (:foreground darktooth-medium :background nil))
                      (js2-jsdoc-type                             (:foreground darktooth-light4 :background nil))
                      (js2-jsdoc-value                            (:foreground darktooth-light3 :background nil))
                      (js2-function-param                         (:foreground darktooth-bright_aqua :background nil))
                      (js2-function-call                          (:foreground darktooth-bright_blue :background nil))
                      (js2-instance-member                        (:foreground darktooth-bright_orange :background nil))
                      (js2-private-member                         (:foreground darktooth-faded_yellow :background nil))
                      (js2-private-function-call                  (:foreground darktooth-faded_aqua :background nil))
                      (js2-jsdoc-html-tag-name                    (:foreground darktooth-light4 :background nil))
                      (js2-jsdoc-html-tag-delimiter               (:foreground darktooth-light3 :background nil))

                      ;; MODE SUPPORT: haskell
                      (haskell-interactive-face-compile-warning   (:underline (:color darktooth-bright_yellow :style 'wave)))
                      (haskell-interactive-face-compile-error     (:underline (:color darktooth-bright_red :style 'wave)))
                      (haskell-interactive-face-garbage           (:foreground darktooth-dark4 :background nil))
                      (haskell-interactive-face-prompt            (:foreground darktooth-light0 :background nil))
                      (haskell-interactive-face-result            (:foreground darktooth-light3 :background nil))
                      (haskell-literate-comment-face              (:foreground darktooth-light0 :background nil))
                      (haskell-pragma-face                        (:foreground darktooth-medium :background nil))
                      (haskell-constructor-face                   (:foreground darktooth-neutral_aqua :background nil))

                      ;; MODE SUPPORT: org-mode
                      (org-agenda-date-today                      (:foreground darktooth-light2 :slant 'italic :weight 'bold))
                      (org-agenda-structure                       (:inherit 'font-lock-comment-face))
                      (org-archived                               (:foreground darktooth-light0 :weight 'bold))
                      (org-checkbox                               (:foreground darktooth-light2 :background darktooth-dark0 :box (:line-width 1 :style 'released-button)))
                      (org-date                                   (:foreground darktooth-faded_blue :underline t))
                      (org-deadline-announce                      (:foreground darktooth-faded_red))
                      (org-done                                   (:foreground darktooth-bright_green :bold t :weight 'bold))
                      (org-formula                                (:foreground darktooth-bright_yellow))
                      (org-headline-done                          (:foreground darktooth-bright_green))
                      (org-hide                                   (:foreground darktooth-dark0))
                      (org-level-1                                (:foreground darktooth-bright_orange))
                      (org-level-2                                (:foreground darktooth-bright_green))
                      (org-level-3                                (:foreground darktooth-bright_blue))
                      (org-level-4                                (:foreground darktooth-bright_yellow))
                      (org-level-5                                (:foreground darktooth-faded_aqua))
                      (org-level-6                                (:foreground darktooth-bright_green))
                      (org-level-7                                (:foreground darktooth-bright_red))
                      (org-level-8                                (:foreground darktooth-bright_blue))
                      (org-link                                   (:foreground darktooth-bright_yellow :underline t))
                      (org-scheduled                              (:foreground darktooth-bright_green))
                      (org-scheduled-previously                   (:foreground darktooth-bright_red))
                      (org-scheduled-today                        (:foreground darktooth-bright_blue))
                      (org-sexp-date                              (:foreground darktooth-bright_blue :underline t))
                      (org-special-keyword                        (:inherit 'font-lock-comment-face))
                      (org-table                                  (:foreground darktooth-bright_green))
                      (org-tag                                    (:bold t :weight 'bold))
                      (org-time-grid                              (:foreground darktooth-bright_orange))
                      (org-todo                                   (:foreground darktooth-bright_red :weight 'bold :bold t))
                      (org-upcoming-deadline                      (:inherit 'font-lock-keyword-face))
                      (org-warning                                (:foreground darktooth-bright_red :weight 'bold :underline nil :bold t))
                      (org-column                                 (:background darktooth-dark0))
                      (org-column-title                           (:background darktooth-dark0_hard :underline t :weight 'bold))
                      (org-mode-line-clock                        (:foreground darktooth-light2 :background darktooth-dark0))
                      (org-mode-line-clock-overrun                (:foreground darktooth-black :background darktooth-bright_red))
                      (org-ellipsis                               (:foreground darktooth-bright_yellow :underline t))
                      (org-footnote                               (:foreground darktooth-faded_aqua :underline t))

                      ;; MODE SUPPORT: powerline
                      (powerline-active1                          (:background darktooth-dark2 :inherit 'mode-line))
                      (powerline-active2                          (:background darktooth-dark1 :inherit 'mode-line))
                      (powerline-inactive1                        (:background darktooth-medium :inherit 'mode-line-inactive))
                      (powerline-inactive2                        (:background darktooth-dark2 :inherit 'mode-line-inactive))

                      ;; MODE SUPPORT: smart-mode-line
                      (sml/modes                                  (:foreground darktooth-light0_hard :weight 'bold :bold t))
                      (sml/minor-modes                            (:foreground darktooth-neutral_orange))
                      (sml/filename                               (:foreground darktooth-light0_hard :weight 'bold :bold t))
                      (sml/prefix                                 (:foreground darktooth-neutral_blue))
                      (sml/git                                    (:inherit 'sml/prefix))
                      (sml/process                                (:inherit 'sml/prefix))
                      (sml/sudo                                   (:foreground darktooth-dark_orange :weight 'bold))
                      (sml/read-only                              (:foreground darktooth-neutral_blue))
                      (sml/outside-modified                       (:foreground darktooth-neutral_blue))
                      (sml/modified                               (:foreground darktooth-neutral_blue))
                      (sml/vc                                     (:foreground darktooth-faded_green))
                      (sml/vc-edited                              (:foreground darktooth-bright_green))
                      (sml/charging                               (:foreground darktooth-faded_aqua))
                      (sml/discharging                            (:foreground darktooth-faded_aqua :weight 'bold))
                      (sml/col-number                             (:foreground darktooth-neutral_orange))
                      (sml/position-percentage                    (:foreground darktooth-faded_aqua))

                      ;; Matches and Isearch
                      (lazy-highlight                             (:foreground darktooth-light0 :background darktooth-dark2))
                      (highlight                                  (:foreground darktooth-light0_hard :background darktooth-faded_blue))
                      (match                                      (:foreground darktooth-light0 :background darktooth-dark2))

                      ;; MODE SUPPORT: isearch
                      (isearch                                    (:foreground darktooth-light0 :background darktooth-faded_aqua))
                      (isearch-fail                               (:foreground darktooth-light0_hard :background darktooth-faded_red))

                      ;; MODE SUPPORT: show-paren
                      (show-paren-match                           (:foreground darktooth-light0 :background darktooth-faded_blue))
                      (show-paren-mismatch                        (:foreground darktooth-light0_hard :background darktooth-faded_red))

                      ;; MODE SUPPORT: anzu
                      (anzu-mode-line                             (:foreground darktooth-light0 :height 100 :background darktooth-faded_blue))
                      (anzu-match-1                               (:foreground darktooth-dark0 :background darktooth-bright_green))
                      (anzu-match-2                               (:foreground darktooth-dark0 :background darktooth-bright_yellow))
                      (anzu-match-3                               (:foreground darktooth-dark0 :background darktooth-bright_cyan))
                      (anzu-replace-highlight                     (:background darktooth-dark_aqua))
                      (anzu-replace-to                            (:background darktooth-dark_cyan))

                      ;; MODE SUPPORT: el-search
                      (el-search-match                            (:background darktooth-dark_cyan))
                      (el-search-other-match                      (:background darktooth-dark_blue))

                      ;; MODE SUPPORT: avy
                      (avy-lead-face-0                            (:foreground darktooth-bright_blue ))
                      (avy-lead-face-1                            (:foreground darktooth-bright_aqua ))
                      (avy-lead-face-2                            (:foreground darktooth-bright_purple ))
                      (avy-lead-face                              (:foreground darktooth-bright_red ))
                      (avy-background-face                        (:foreground darktooth-dark3 ))
                      (avy-goto-char-timer-face                   (:inherit 'highlight ))

                      ;; MODE SUPPORT: popup
                      (popup-face                                 (:foreground darktooth-light0 :background darktooth-dark1))
                      (popup-menu-mouse-face                      (:foreground darktooth-light0 :background darktooth-faded_blue))
                      (popup-menu-selection-face                  (:foreground darktooth-light0 :background darktooth-faded_blue))
                      (popup-tip-face                             (:foreground darktooth-light0_hard :background darktooth-dark_aqua))
                      ;; Use tip colors for the pos-tip color vars (see below)

                      ;; Inherit ac-dabbrev from popup menu face
                      ;; MODE SUPPORT: ac-dabbrev
                      (ac-dabbrev-menu-face                       (:inherit 'popup-face))
                      (ac-dabbrev-selection-face                  (:inherit 'popup-menu-selection-face))

                      ;; MODE SUPPORT: sh mode
                      (sh-heredoc                                 (:foreground darktooth-darkslategray4 :background nil))
                      (sh-quoted-exec                             (:foreground darktooth-darkslategray4 :background nil))

                      ;; MODE SUPPORT: company
                      (company-echo                               (:inherit 'company-echo-common))
                      (company-echo-common                        (:foreground darktooth-bright_blue :background nil))
                      (company-preview-common                     (:underline darktooth-light1))
                      (company-preview                            (:inherit 'company-preview-common))
                      (company-preview-search                     (:inherit 'company-preview-common))
                      (company-template-field                     (:foreground darktooth-bright_blue :background nil :underline darktooth-dark_blue))
                      (company-scrollbar-fg                       (:foreground nil :background darktooth-dark2))
                      (company-scrollbar-bg                       (:foreground nil :background darktooth-dark3))
                      (company-tooltip                            (:foreground darktooth-light0_hard :background darktooth-dark1))
                      (company-preview-common                     (:inherit 'font-lock-comment-face))
                      (company-tooltip-common                     (:foreground darktooth-light0 :background darktooth-dark1))
                      (company-tooltip-annotation                 (:foreground darktooth-bright_blue :background darktooth-dark1))
                      (company-tooltip-common-selection           (:foreground darktooth-light0 :background darktooth-faded_blue))
                      (company-tooltip-mouse                      (:foreground darktooth-dark0 :background darktooth-bright_blue))
                      (company-tooltip-selection                  (:foreground darktooth-light0 :background darktooth-faded_blue))

                      ;; MODE SUPPORT: dired+
                      (diredp-file-name                           (:foreground darktooth-light2 ))
                      (diredp-file-suffix                         (:foreground darktooth-light4 ))
                      (diredp-compressed-file-suffix              (:foreground darktooth-faded_cyan ))
                      (diredp-dir-name                            (:foreground darktooth-faded_cyan ))
                      (diredp-dir-heading                         (:foreground darktooth-bright_cyan ))
                      (diredp-symlink                             (:foreground darktooth-bright_orange ))
                      (diredp-date-time                           (:foreground darktooth-light3 ))
                      (diredp-number                              (:foreground darktooth-faded_cyan ))
                      (diredp-no-priv                             (:foreground darktooth-dark4 ))
                      (diredp-other-priv                          (:foreground darktooth-dark2 ))
                      (diredp-rare-priv                           (:foreground darktooth-dark4 ))
                      (diredp-ignored-file-name                   (:foreground darktooth-dark4 ))

                      (diredp-dir-priv                            (:foreground darktooth-faded_cyan  :background darktooth-dark_blue))
                      (diredp-exec-priv                           (:foreground darktooth-faded_cyan  :background darktooth-dark_blue))
                      (diredp-link-priv                           (:foreground darktooth-faded_aqua  :background darktooth-dark_aqua))
                      (diredp-read-priv                           (:foreground darktooth-bright_red  :background darktooth-dark_red))
                      (diredp-write-priv                          (:foreground darktooth-bright_aqua :background darktooth-dark_aqua))

                      ;; MODE SUPPORT: helm
                      (helm-M-x-key                               (:foreground darktooth-neutral_orange))
                      (helm-action                                (:foreground darktooth-white :underline t))
                      (helm-bookmark-addressbook                  (:foreground darktooth-neutral_red))
                      (helm-bookmark-directory                    (:foreground darktooth-bright_purple))
                      (helm-bookmark-file                         (:foreground darktooth-faded_blue))
                      (helm-bookmark-gnus                         (:foreground darktooth-faded_purple))
                      (helm-bookmark-info                         (:foreground darktooth-turquoise4))
                      (helm-bookmark-man                          (:foreground darktooth-sienna))
                      (helm-bookmark-w3m                          (:foreground darktooth-neutral_yellow))
                      (helm-buffer-directory                      (:foreground darktooth-white :background darktooth-bright_blue))
                      (helm-buffer-not-saved                      (:foreground darktooth-faded_red))
                      (helm-buffer-process                        (:foreground darktooth-burlywood4))
                      (helm-buffer-saved-out                      (:foreground darktooth-bright_red))
                      (helm-buffer-size                           (:foreground darktooth-bright_purple))
                      (helm-candidate-number                      (:foreground darktooth-neutral_green))
                      (helm-ff-directory                          (:foreground darktooth-neutral_purple))
                      (helm-ff-executable                         (:foreground darktooth-turquoise4))
                      (helm-ff-file                               (:foreground darktooth-sienna))
                      (helm-ff-invalid-symlink                    (:foreground darktooth-white :background darktooth-bright_red))
                      (helm-ff-prefix                             (:foreground darktooth-black :background darktooth-neutral_yellow))
                      (helm-ff-symlink                            (:foreground darktooth-neutral_orange))
                      (helm-grep-cmd-line                         (:foreground darktooth-neutral_green))
                      (helm-grep-file                             (:foreground darktooth-faded_purple))
                      (helm-grep-finish                           (:foreground darktooth-turquoise4))
                      (helm-grep-lineno                           (:foreground darktooth-neutral_orange))
                      (helm-grep-match                            (:foreground darktooth-neutral_yellow))
                      (helm-grep-running                          (:foreground darktooth-neutral_red))
                      (helm-header                                (:foreground darktooth-aquamarine4))
                      (helm-helper                                (:foreground darktooth-aquamarine4))
                      (helm-history-deleted                       (:foreground darktooth-black :background darktooth-bright_red))
                      (helm-history-remote                        (:foreground darktooth-faded_red))
                      (helm-lisp-completion-info                  (:foreground darktooth-faded_orange))
                      (helm-lisp-show-completion                  (:foreground darktooth-bright_red))
                      (helm-locate-finish                         (:foreground darktooth-white :background darktooth-aquamarine4))
                      (helm-match                                 (:foreground darktooth-neutral_orange))
                      (helm-moccur-buffer                         (:foreground darktooth-bright_aqua :underline t))
                      (helm-prefarg                               (:foreground darktooth-turquoise4))
                      (helm-selection                             (:foreground darktooth-white :background darktooth-dark2))
                      (helm-selection-line                        (:foreground darktooth-white :background darktooth-dark2))
                      (helm-separator                             (:foreground darktooth-faded_red))
                      (helm-source-header                         (:foreground darktooth-light2 :background darktooth-dark1))
                      (helm-visible-mark                          (:foreground darktooth-black :background darktooth-light3))

                      ;; MODE SUPPORT: column-marker
                      (column-marker-1                            (:background darktooth-faded_blue))
                      (column-marker-2                            (:background darktooth-faded_purple))
                      (column-marker-3                            (:background darktooth-faded_cyan))

                      ;; MODE SUPPORT: vline
                      (vline                                      (:background darktooth-dark_aqua))
                      (vline-visual                               (:background darktooth-dark_aqua))

                      ;; MODE SUPPORT: col-highlight
                      (col-highlight                              (:inherit 'vline))

                      ;; MODE SUPPORT: column-enforce-mode
                      (column-enforce-face                        (:foreground darktooth-dark4 :background darktooth-dark_red))

                      ;; MODE SUPPORT: hydra
                      (hydra-face-red                             (:foreground darktooth-bright_red))
                      (hydra-face-blue                            (:foreground darktooth-bright_blue))
                      (hydra-face-pink                            (:foreground darktooth-identifiers-15))
                      (hydra-face-amaranth                        (:foreground darktooth-faded_purple))
                      (hydra-face-teal                            (:foreground darktooth-faded_cyan))

                      ;; MODE SUPPORT: ivy
                      (ivy-current-match                          (:foreground darktooth-light0 :background darktooth-faded_blue))
                      (ivy-minibuffer-match-face-1                (:background darktooth-dark1))
                      (ivy-minibuffer-match-face-2                (:background darktooth-dark2))
                      (ivy-minibuffer-match-face-3                (:background darktooth-faded_aqua))
                      (ivy-minibuffer-match-face-4                (:background darktooth-faded_purple))
                      (ivy-confirm-face                           (:foreground darktooth-bright_green))
                      (ivy-match-required-face                    (:foreground darktooth-bright_red))
                      (ivy-remote                                 (:foreground darktooth-neutral_blue))

                      ;; MODE SUPPORT: smerge
                      ;; TODO: smerge-base smerge-refined-changed
                      (smerge-mine                                (:background darktooth-mid_purple))
                      (smerge-other                               (:background darktooth-mid_blue))
                      (smerge-markers                             (:background darktooth-dark0_soft))
                      (smerge-refined-added                       (:background darktooth-dark_green))
                      (smerge-refined-removed                     (:background darktooth-dark_red))

                      ;; MODE SUPPORT: git-gutter
                      (git-gutter:separator                       (:inherit 'git-gutter+-separator ))
                      (git-gutter:modified                        (:inherit 'git-gutter+-modified ))
                      (git-gutter:added                           (:inherit 'git-gutter+-added ))
                      (git-gutter:deleted                         (:inherit 'git-gutter+-deleted ))
                      (git-gutter:unchanged                       (:inherit 'git-gutter+-unchanged ))

                      ;; MODE SUPPORT: git-gutter+
                      (git-gutter+-commit-header-face             (:inherit 'font-lock-comment-face))
                      (git-gutter+-added                          (:foreground darktooth-faded_green :background darktooth-muted_green ))
                      (git-gutter+-deleted                        (:foreground darktooth-faded_red :background darktooth-muted_red ))
                      (git-gutter+-modified                       (:foreground darktooth-faded_purple :background darktooth-muted_purple ))
                      (git-gutter+-separator                      (:foreground darktooth-faded_cyan :background darktooth-muted_cyan ))
                      (git-gutter+-unchanged                      (:foreground darktooth-faded_yellow :background darktooth-muted_yellow ))


                      ;; MODE SUPPORT: git-gutter-fr+
                      (git-gutter-fr+-added                       (:inherit 'git-gutter+-added))
                      (git-gutter-fr+-deleted                     (:inherit 'git-gutter+-deleted))
                      (git-gutter-fr+-modified                    (:inherit 'git-gutter+-modified))

                      ;; MODE SUPPORT: magit
                      (magit-branch                               (:foreground darktooth-turquoise4 :background nil))
                      (magit-branch-local                         (:foreground darktooth-turquoise4 :background nil))
                      (magit-branch-remote                        (:foreground darktooth-aquamarine4 :background nil))
                      (magit-cherry-equivalent                    (:foreground darktooth-neutral_orange))
                      (magit-cherry-unmatched                     (:foreground darktooth-neutral_purple))
                      (magit-diff-context                         (:foreground darktooth-dark3 :background nil))
                      (magit-diff-context-highlight               (:foreground darktooth-dark4 :background darktooth-dark0_soft))
                      (magit-diff-added                           (:foreground darktooth-bright_green :background darktooth-mid_green))
                      (magit-diff-added-highlight                 (:foreground darktooth-bright_green :background darktooth-mid_green))
                      (magit-diff-removed                         (:foreground darktooth-bright_red :background darktooth-mid_red))
                      (magit-diff-removed-highlight               (:foreground darktooth-bright_red :background darktooth-mid_red))
                      (magit-diff-add                             (:foreground darktooth-bright_green))
                      (magit-diff-del                             (:foreground darktooth-bright_red))
                      (magit-diff-file-header                     (:foreground darktooth-bright_blue))
                      (magit-diff-hunk-header                     (:foreground darktooth-neutral_aqua))
                      (magit-diff-merge-current                   (:background darktooth-dark_yellow))
                      (magit-diff-merge-diff3-separator           (:foreground darktooth-neutral_orange :weight 'bold))
                      (magit-diff-merge-proposed                  (:background darktooth-dark_green))
                      (magit-diff-merge-separator                 (:foreground darktooth-neutral_orange))
                      (magit-diff-none                            (:foreground darktooth-medium))
                      (magit-item-highlight                       (:background darktooth-dark1 :weight 'normal))
                      (magit-item-mark                            (:background darktooth-dark0))
                      (magit-key-mode-args-face                   (:foreground darktooth-light4))
                      (magit-key-mode-button-face                 (:foreground darktooth-neutral_orange :weight 'bold))
                      (magit-key-mode-header-face                 (:foreground darktooth-light4 :weight 'bold))
                      (magit-key-mode-switch-face                 (:foreground darktooth-turquoise4 :weight 'bold))
                      (magit-log-author                           (:foreground darktooth-neutral_aqua))
                      (magit-log-date                             (:foreground darktooth-faded_orange))
                      (magit-log-graph                            (:foreground darktooth-light1))
                      (magit-log-head-label-bisect-bad            (:foreground darktooth-bright_red))
                      (magit-log-head-label-bisect-good           (:foreground darktooth-bright_green))
                      (magit-log-head-label-bisect-skip           (:foreground darktooth-neutral_yellow))
                      (magit-log-head-label-default               (:foreground darktooth-neutral_blue))
                      (magit-log-head-label-head                  (:foreground darktooth-light0 :background darktooth-dark_aqua))
                      (magit-log-head-label-local                 (:foreground darktooth-faded_blue :weight 'bold))
                      (magit-log-head-label-patches               (:foreground darktooth-faded_orange))
                      (magit-log-head-label-remote                (:foreground darktooth-neutral_blue :weight 'bold))
                      (magit-log-head-label-tags                  (:foreground darktooth-neutral_aqua))
                      (magit-log-head-label-wip                   (:foreground darktooth-neutral_red))
                      (magit-log-message                          (:foreground darktooth-light1))
                      (magit-log-reflog-label-amend               (:foreground darktooth-bright_blue))
                      (magit-log-reflog-label-checkout            (:foreground darktooth-bright_yellow))
                      (magit-log-reflog-label-cherry-pick         (:foreground darktooth-neutral_red))
                      (magit-log-reflog-label-commit              (:foreground darktooth-neutral_green))
                      (magit-log-reflog-label-merge               (:foreground darktooth-bright_green))
                      (magit-log-reflog-label-other               (:foreground darktooth-faded_red))
                      (magit-log-reflog-label-rebase              (:foreground darktooth-bright_blue))
                      (magit-log-reflog-label-remote              (:foreground darktooth-neutral_orange))
                      (magit-log-reflog-label-reset               (:foreground darktooth-neutral_yellow))
                      (magit-log-sha1                             (:foreground darktooth-bright_orange))
                      (magit-process-ng                           (:foreground darktooth-bright_red :weight 'bold))
                      (magit-process-ok                           (:foreground darktooth-bright_green :weight 'bold))
                      (magit-section-heading                      (:foreground darktooth-light2 :background darktooth-dark_blue))
                      (magit-signature-bad                        (:foreground darktooth-bright_red :weight 'bold))
                      (magit-signature-good                       (:foreground darktooth-bright_green :weight 'bold))
                      (magit-signature-none                       (:foreground darktooth-faded_red))
                      (magit-signature-untrusted                  (:foreground darktooth-bright_purple :weight 'bold))
                      (magit-tag                                  (:foreground darktooth-darkslategray4))
                      (magit-whitespace-warning-face              (:background darktooth-faded_red))
                      (magit-bisect-bad                           (:foreground darktooth-faded_red))
                      (magit-bisect-good                          (:foreground darktooth-neutral_green))
                      (magit-bisect-skip                          (:foreground darktooth-light2))
                      (magit-blame-date                           (:inherit 'magit-blame-heading))
                      (magit-blame-name                           (:inherit 'magit-blame-heading))
                      (magit-blame-hash                           (:inherit 'magit-blame-heading))
                      (magit-blame-summary                        (:inherit 'magit-blame-heading))
                      (magit-blame-heading                        (:background darktooth-dark1 :foreground darktooth-light0))
                      (magit-sequence-onto                        (:inherit 'magit-sequence-done))
                      (magit-sequence-done                        (:inherit 'magit-hash))
                      (magit-sequence-drop                        (:foreground darktooth-faded_red))
                      (magit-sequence-head                        (:foreground darktooth-faded_cyan))
                      (magit-sequence-part                        (:foreground darktooth-bright_yellow))
                      (magit-sequence-stop                        (:foreground darktooth-bright_aqua))
                      (magit-sequence-pick                        (:inherit 'default))
                      (magit-filename                             (:weight 'normal))
                      (magit-refname-wip                          (:inherit 'magit-refname))
                      (magit-refname-stash                        (:inherit 'magit-refname))
                      (magit-refname                              (:foreground darktooth-light2))
                      (magit-head                                 (:inherit 'magit-branch-local))
                      (magit-popup-disabled-argument              (:foreground darktooth-light4))

                      ;; MODE SUPPORT: term
                      (term-color-black                           (:foreground darktooth-dark1))
                      (term-color-blue                            (:foreground darktooth-neutral_blue))
                      (term-color-cyan                            (:foreground darktooth-neutral_cyan))
                      (term-color-green                           (:foreground darktooth-neutral_green))
                      (term-color-magenta                         (:foreground darktooth-neutral_purple))
                      (term-color-red                             (:foreground darktooth-neutral_red))
                      (term-color-white                           (:foreground darktooth-light1))
                      (term-color-yellow                          (:foreground darktooth-neutral_yellow))
                      (term-default-fg-color                      (:foreground darktooth-light0))
                      (term-default-bg-color                      (:background darktooth-dark0))

                      ;; MODE SUPPORT: Elfeed
                      (elfeed-search-date-face                     (:foreground darktooth-muted_cyan))
                      (elfeed-search-feed-face                     (:foreground darktooth-faded_cyan))
                      (elfeed-search-tag-face                      (:foreground darktooth-light3))
                      (elfeed-search-title-face                    (:foreground darktooth-light3 :bold nil))
                      (elfeed-search-unread-title-face             (:foreground darktooth-light0_hard :bold nil))

                      ;; MODE SUPPORT: message
                      (message-header-to                           (:foreground darktooth-bright_cyan ))
                      (message-header-cc                           (:foreground darktooth-bright_cyan ))
                      (message-header-subject                      (:foreground darktooth-light2 ))
                      (message-header-newsgroups                   (:foreground darktooth-bright_cyan ))
                      (message-header-other                        (:foreground darktooth-muted_cyan  ))
                      (message-header-name                         (:foreground darktooth-bright_cyan ))
                      (message-header-xheader                      (:foreground darktooth-faded_cyan ))
                      (message-separator                           (:foreground darktooth-faded_cyan ))
                      (message-cited-text                          (:foreground darktooth-light3 ))
                      (message-mml                                 (:foreground darktooth-faded_aqua )))

                     (custom-theme-set-variables 'darktooth
                                                 `(pos-tip-foreground-color ,darktooth-light0_hard)
                                                 `(pos-tip-background-color ,darktooth-dark_aqua)
                                                 `(ansi-color-names-vector [,darktooth-dark0_soft
                                                                            ,darktooth-neutral_red
                                                                            ,darktooth-neutral_green
                                                                            ,darktooth-neutral_yellow
                                                                            ,darktooth-neutral_blue
                                                                            ,darktooth-neutral_purple
                                                                            ,darktooth-neutral_cyan
                                                                            ,darktooth-light1]))

                     (defun darktooth-modeline ()
                       "Optional modeline styling for darktooth."
                       (interactive)
                       (set-face-attribute 'mode-line nil
                                           :inherit 'mode-line-face
                                           :foreground ,darktooth-light3
                                           :background ,darktooth-dark0_hard
                                           :height 120
                                           :inverse-video nil
                                           :box '(:line-width 6 :color ,darktooth-dark0_hard :style nil))
                       (set-face-attribute 'mode-line-inactive nil
                                           :inherit 'mode-line-face
                                           :foreground ,darktooth-dark2
                                           :background ,darktooth-dark0_soft
                                           :height 120
                                           :inverse-video nil
                                           :box '(:line-width 6 :color ,darktooth-dark0_soft :style nil))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'darktooth)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode 1))
;; End:

;;; darktooth-theme.el ends here
