;;; darktooth-theme.el --- colour theme for Emacs, a remix of gruvbox

;; Copyright (c) 2015 Jasonm23

;; Authors: Jasonm23 <jasonm23@gmail.com>
;; URL: http://github.com/emacsfodder/emacs-theme-darktooth
;; Version: 0.2.0

;;; Commentary:

;; A remix of the excellent theme Gruvbox.

;;; Code:

(unless (>= emacs-major-version 24) (error "Requires Emacs 24 or later"))

(deftheme darktooth "A retro-groove colour theme")

(defconst darktooth-colors
  '(
    (darktooth-dark0_hard      . ((((type graphic)) . "#1d2021") (t "color-234"     )))
    (darktooth-dark0           . ((((type graphic)) . "#282828") (t "color-235"     )))
    (darktooth-dark0_soft      . ((((type graphic)) . "#32302f") (t "color-236"     )))
    (darktooth-dark1           . ((((type graphic)) . "#3c3836") (t "color-237"     )))
    (darktooth-dark2           . ((((type graphic)) . "#504945") (t "color-239"     )))
    (darktooth-dark3           . ((((type graphic)) . "#665c54") (t "color-241"     )))
    (darktooth-dark4           . ((((type graphic)) . "#7c6f64") (t "color-243"     )))
    (darktooth-medium          . ((((type graphic)) . "#928374") (t "color-245"     ))) ;; or 244
    (darktooth-light0_hard     . ((((type graphic)) . "#ffffc8") (t "color-230"     )))
    (darktooth-light0          . ((((type graphic)) . "#fdf4c1") (t "color-229"     )))
    (darktooth-light0_soft     . ((((type graphic)) . "#f4e8ba") (t "color-228"     )))
    (darktooth-light1          . ((((type graphic)) . "#ebdbb2") (t "color-223"     )))
    (darktooth-light2          . ((((type graphic)) . "#d5c4a1") (t "color-250"     )))
    (darktooth-light3          . ((((type graphic)) . "#bdae93") (t "color-248"     )))
    (darktooth-light4          . ((((type graphic)) . "#a89984") (t "color-246"     )))
    (darktooth-bright_red      . ((((type graphic)) . "#fb4933") (t "color-167"     )))
    (darktooth-bright_green    . ((((type graphic)) . "#b8bb26") (t "color-142"     )))
    (darktooth-bright_yellow   . ((((type graphic)) . "#fabd2f") (t "color-214"     )))
    (darktooth-bright_blue     . ((((type graphic)) . "#83a598") (t "color-109"     )))
    (darktooth-bright_purple   . ((((type graphic)) . "#d3869b") (t "color-175"     )))
    (darktooth-bright_aqua     . ((((type graphic)) . "#8ec07c") (t "color-108"     )))
    (darktooth-bright_orange   . ((((type graphic)) . "#fe8019") (t "color-208"     )))
    (darktooth-neutral_red     . ((((type graphic)) . "#fb4934") (t "#d75f5f"       )))
    (darktooth-neutral_green   . ((((type graphic)) . "#b8bb26") (t "#afaf00"       )))
    (darktooth-neutral_yellow  . ((((type graphic)) . "#fabd2f") (t "#ffaf00"       )))
    (darktooth-neutral_blue    . ((((type graphic)) . "#83a598") (t "#87afaf"       )))
    (darktooth-neutral_purple  . ((((type graphic)) . "#d3869b") (t "#d787af"       )))
    (darktooth-neutral_aqua    . ((((type graphic)) . "#8ec07c") (t "#87af87"       )))
    (darktooth-neutral_orange  . ((((type graphic)) . "#fe8019") (t "#ff8700"       )))
    (darktooth-faded_red       . ((((type graphic)) . "#9d0006") (t "color-88"      )))
    (darktooth-faded_green     . ((((type graphic)) . "#79740e") (t "color-100"     )))
    (darktooth-faded_yellow    . ((((type graphic)) . "#b57614") (t "color-136"     )))
    (darktooth-faded_blue      . ((((type graphic)) . "#076678") (t "color-24"      )))
    (darktooth-faded_purple    . ((((type graphic)) . "#8f3f71") (t "color-96"      )))
    (darktooth-faded_aqua      . ((((type graphic)) . "#427b58") (t "color-66"      )))
    (darktooth-faded_orange    . ((((type graphic)) . "#af3a03") (t "color-130"     )))
    (darktooth-delimiter-one   . ((((type graphic)) . "#1E8C99") (t "color-66"      )))
    (darktooth-delimiter-two   . ((((type graphic)) . "#3A44AA") (t "color-102"     )))
    (darktooth-delimiter-three . ((((type graphic)) . "#84489C") (t "color-94"      )))
    (darktooth-delimiter-four  . ((((type graphic)) . "#407B24") (t "color-137"     )))
    (darktooth-sienna          . ((((type graphic)) . "#dd6f48") (t "sienna"        )))
    (darktooth-darkslategray4  . ((((type graphic)) . "#528B8B") (t "DarkSlateGray4")))
    (darktooth-lightblue4      . ((((type graphic)) . "#66999d") (t "LightBlue4"    )))
    (darktooth-burlywood4      . ((((type graphic)) . "#bbaa97") (t "burlywood4"    )))
    (darktooth-aquamarine4     . ((((type graphic)) . "#83a598") (t "aquamarine4"   )))
    (darktooth-turquoise4      . ((((type graphic)) . "#61acbb") (t "turquoise4"    ))))
  "Each color is provided in the form graphic and substitute, ie. 24bit and xterm 256color."
  )


(defun darktooth-set-spec (spec)
  "Set a darktooth face from SPEC.
Uses `darktooth-colors' to lookup color names."
  (mapcar
   (lambda (display)
     (list display (mapcar
                    (lambda (element)
                      (message "%s" display)
                      (let* ((entry (assoc element darktooth-colors))
                             (variant (assoc display (cdr entry)))
                             (subst (cdr variant)))
                        (when (and entry (null subst))
                          (error "No %s entry for %s" display element))
                        (or subst element)))
                    spec)))
   '(((type graphic)) t)))


(apply #'custom-theme-set-faces
        'darktooth
        ;; UI
        (mapcar
         (lambda (entry)
           (list (car entry) (darktooth-set-spec (cdr entry))))
 `((default                           (:foreground darktooth-light0 :background darktooth-dark0))
 (cursor                            (:background darktooth-light0))

 (mode-line                         (:box nil :foreground darktooth-light1 :background darktooth-dark0_hard))
 (mode-line-inactive                (:box nil :background darktooth-dark2 :foreground darktooth-light4))
 (fringe                            (:background darktooth-dark0))
 (linum                             (:foreground darktooth-dark4))
 (hl-line                           (:background darktooth-dark1))
 (region                            (:background darktooth-dark2))
 (secondary-selection               (:background darktooth-dark1))
 (minibuffer-prompt                 (:background darktooth-dark0 :foreground darktooth-turquoise4 :bold nil))

 ; Built-in syntax
 (font-lock-builtin-face            (:foreground darktooth-bright_orange))
 (font-lock-constant-face           (:foreground darktooth-burlywood4))
 (font-lock-comment-face            (:foreground darktooth-dark4))
 (font-lock-function-name-face      (:foreground darktooth-light4))
 (font-lock-keyword-face            (:foreground darktooth-sienna))
 (font-lock-string-face             (:foreground darktooth-darkslategray4))
 (font-lock-variable-name-face      (:foreground darktooth-aquamarine4))
 (font-lock-type-face               (:foreground darktooth-lightblue4))
 (font-lock-warning-face            (:foreground darktooth-neutral_red :bold t))

 ; whitespace-mode
 (whitespace-space                  (:background darktooth-dark0 :foreground darktooth-dark4))
 (whitespace-hspace                 (:background darktooth-dark0 :foreground darktooth-dark4))
 (whitespace-tab                    (:background darktooth-dark0 :foreground darktooth-dark4))
 (whitespace-newline                (:background darktooth-dark0 :foreground darktooth-dark4))
 (whitespace-trailing               (:background darktooth-dark1 :foreground darktooth-neutral_red))
 (whitespace-line                   (:background darktooth-dark1 :foreground darktooth-neutral_red))
 (whitespace-space-before-tab       (:background darktooth-dark0 :foreground darktooth-dark4))
 (whitespace-indentation            (:background darktooth-dark0 :foreground darktooth-dark4))
 (whitespace-empty                  (:background nil :foreground nil))
 (whitespace-space-after-tab        (:background darktooth-dark0 :foreground darktooth-dark4))

 ; RainbowDelimiters
 (rainbow-delimiters-depth-1-face   (:foreground darktooth-delimiter-one))
 (rainbow-delimiters-depth-2-face   (:foreground darktooth-delimiter-two))
 (rainbow-delimiters-depth-3-face   (:foreground darktooth-delimiter-three))
 (rainbow-delimiters-depth-4-face   (:foreground darktooth-delimiter-four))
 (rainbow-delimiters-depth-5-face   (:foreground darktooth-delimiter-one))
 (rainbow-delimiters-depth-6-face   (:foreground darktooth-delimiter-two))
 (rainbow-delimiters-depth-7-face   (:foreground darktooth-delimiter-three))
 (rainbow-delimiters-depth-8-face   (:foreground darktooth-delimiter-four))
 (rainbow-delimiters-depth-9-face   (:foreground darktooth-delimiter-one))
 (rainbow-delimiters-depth-10-face  (:foreground darktooth-delimiter-two))
 (rainbow-delimiters-depth-11-face  (:foreground darktooth-delimiter-three))
 (rainbow-delimiters-depth-12-face  (:foreground darktooth-delimiter-four))
 (rainbow-delimiters-unmatched-face (:background nil :foreground darktooth-light0))

 ; linum-relative
 (linum-relative-current-face       (:background darktooth-dark1 :foreground darktooth-light4))

 ; Highlight indentation mode
 (highlight-indentation-current-column-face (:background darktooth-dark2 ))
 (highlight-indentation-face                (:background darktooth-dark1 ))

 ; Smartparens
 (sp-pair-overlay-face              (:background darktooth-dark2))
 ;(sp-wrap-overlay-face             (:inherit sp-wrap-overlay-face))
 ;(sp-wrap-tag-overlay-face         (:inherit sp-wrap-overlay-face))
 (sp-show-pair-match-face           (:background darktooth-dark2)) ;; Pair tags highlight
 (sp-show-pair-mismatch-face        (:background darktooth-neutral_red)) ;; Highlight for bracket without pair

 ; elscreen
 (elscreen-tab-background-face      (:box nil :background darktooth-dark0)) ;; Tab bar not the tabs
 (elscreen-tab-control-face         (:box nil :background darktooth-dark2 :foreground darktooth-neutral_red :underline nil)) ;; The controls
 (elscreen-tab-current-screen-face  (:box nil :background darktooth-dark4 :foreground darktooth-dark0)) ;; Current tab
 (elscreen-tab-other-screen-face    (:box nil :background darktooth-dark2 :foreground darktooth-light4 :underline nil)) ;; Inactive tab

 ; ag (The Silver Searcher)
 (ag-hit-face                       (:foreground darktooth-neutral_blue))
 (ag-match-face                     (:foreground darktooth-neutral_red))

 ; Diffs
 (diff-changed                      (:background nil :foreground darktooth-light1))
 (diff-added                        (:background nil :foreground darktooth-neutral_green))
 (diff-removed                      (:background nil :foreground darktooth-neutral_red))
 (diff-indicator-changed            (:inherit diff-changed))
 (diff-indicator-added              (:inherit diff-added))
 (diff-indicator-removed            (:inherit diff-removed))

 (js2-warning                       (:underline (:color darktooth-bright_yellow :style wave)))
 (js2-error                         (:underline (:color darktooth-bright_red :style wave)))
 (js2-external-variable             (:underline (:color darktooth-bright_aqua :style wave)))
 (js2-jsdoc-tag                     (:background nil :foreground darktooth-medium ))
 (js2-jsdoc-type                    (:background nil :foreground darktooth-light4 ))
 (js2-jsdoc-value                   (:background nil :foreground darktooth-light3 ))
 (js2-function-param                (:background nil :foreground darktooth-bright_aqua ))
 (js2-function-call                 (:background nil :foreground darktooth-bright_blue ))
 (js2-instance-member               (:background nil :foreground darktooth-bright_orange ))
 (js2-private-member                (:background nil :foreground darktooth-faded_yellow ))
 (js2-private-function-call         (:background nil :foreground darktooth-faded_aqua ))
 (js2-jsdoc-html-tag-name           (:background nil :foreground darktooth-light4 ))
 (js2-jsdoc-html-tag-delimiter      (:background nil :foreground darktooth-light3 ))

 ; Term
 (term-color-black                  (:foreground darktooth-dark1))
 (term-color-blue                   (:foreground darktooth-neutral_blue))
 (term-color-cyan                   (:foreground darktooth-neutral_aqua))
 (term-color-green                  (:foreground darktooth-neutral_green))
 (term-color-magenta                (:foreground darktooth-neutral_purple))
 (term-color-red                    (:foreground darktooth-neutral_red))
 (term-color-white                  (:foreground darktooth-light1))
 (term-color-yellow                 (:foreground darktooth-neutral_yellow))
 (term-default-fg-color             (:foreground darktooth-light0))
 (term-default-bg-color             (:background darktooth-dark0))

;; TODO: BROKEN
(custom-theme-set-variables
 'darktooth
 `(ansi-color-names-vector [(darktooth-dark1
                                         darktooth-neutral_red
                                         darktooth-neutral_green
                                         darktooth-neutral_yellow
                                         darktooth-neutral_blue
                                         darktooth-neutral_purple
                                         darktooth-neutral_aqua
                                         darktooth-light1))]))
;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'darktooth)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; darktooth-theme.el ends here
