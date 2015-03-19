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

(defconst darktooth-colors-simple
    '((darktooth-dark0_hard      . '("#1D2021" "color-234"     ))
      (darktooth-dark0           . '("#282828" "color-235"     ))
      (darktooth-dark0_soft      . '("#32302F" "color-236"     ))
      (darktooth-dark1           . '("#3C3836" "color-237"     ))
      (darktooth-dark2           . '("#504945" "color-239"     ))
      (darktooth-dark3           . '("#665C54" "color-241"     ))
      (darktooth-dark4           . '("#7C6F64" "color-243"     ))
      (darktooth-medium          . '("#928374" "color-245"     )) ;; or 244
      (darktooth-light0_hard     . '("#FFFFC8" "color-230"     ))
      (darktooth-light0          . '("#FDF4C1" "color-229"     ))
      (darktooth-light0_soft     . '("#F4E8BA" "color-228"     ))
      (darktooth-light1          . '("#EBDBB2" "color-223"     ))
      (darktooth-light2          . '("#D5C4A1" "color-250"     ))
      (darktooth-light3          . '("#BDAE93" "color-248"     ))
      (darktooth-light4          . '("#A89984" "color-246"     ))
      (darktooth-bright_red      . '("#FB4933" "color-167"     ))
      (darktooth-bright_green    . '("#B8BB26" "color-142"     ))
      (darktooth-bright_yellow   . '("#FABD2F" "color-214"     ))
      (darktooth-bright_blue     . '("#83A598" "color-109"     ))
      (darktooth-bright_purple   . '("#D3869B" "color-175"     ))
      (darktooth-bright_aqua     . '("#8EC07C" "color-108"     ))
      (darktooth-bright_orange   . '("#FE8019" "color-208"     ))
      (darktooth-neutral_red     . '("#FB4934" "#D75F5F"       ))
      (darktooth-neutral_green   . '("#B8BB26" "#AFAF00"       ))
      (darktooth-neutral_yellow  . '("#FABD2F" "#FFAF00"       ))
      (darktooth-neutral_blue    . '("#83A598" "#87AFAF"       ))
      (darktooth-neutral_purple  . '("#D3869B" "#D787AF"       ))
      (darktooth-neutral_aqua    . '("#8EC07C" "#87AF87"       ))
      (darktooth-neutral_orange  . '("#FE8019" "#FF8700"       ))
      (darktooth-faded_red       . '("#9D0006" "color-88"      ))
      (darktooth-faded_green     . '("#79740E" "color-100"     ))
      (darktooth-faded_yellow    . '("#B57614" "color-136"     ))
      (darktooth-faded_blue      . '("#076678" "color-24"      ))
      (darktooth-faded_purple    . '("#8F3F71" "color-96"      ))
      (darktooth-faded_aqua      . '("#427B58" "color-66"      ))
      (darktooth-faded_orange    . '("#AF3A03" "color-130"     ))
      (darktooth-delimiter-one   . '("#1E8C99" "color-66"      ))
      (darktooth-delimiter-two   . '("#3A44AA" "color-102"     ))
      (darktooth-delimiter-three . '("#84489C" "color-94"      ))
      (darktooth-delimiter-four  . '("#407B24" "color-137"     ))
      (darktooth-white           . '("#FFFFFF" "white"         ))
      (darktooth-black           . '("#000000" "black"         ))
      (darktooth-sienna          . '("#DD6F48" "sienna"        ))
      (darktooth-darkslategray4  . '("#528B8B" "DarkSlateGray4"))
      (darktooth-lightblue4      . '("#66999D" "LightBlue4"    ))
      (darktooth-burlywood4      . '("#BBAA97" "burlywood4"    ))
      (darktooth-aquamarine4     . '("#83A598" "aquamarine4"   ))
      (darktooth-turquoise4      . '("#61ACBB" "turquoise4"    )))
    "Simple palette.")

(defconst darktooth-colors
  '(
    (darktooth-dark0_hard      . ((((type graphic)) . "#1D2021") (t . "color-234"     )))
    (darktooth-dark0           . ((((type graphic)) . "#282828") (t . "color-235"     )))
    (darktooth-dark0_soft      . ((((type graphic)) . "#32302F") (t . "color-236"     )))
    (darktooth-dark1           . ((((type graphic)) . "#3C3836") (t . "color-237"     )))
    (darktooth-dark2           . ((((type graphic)) . "#504945") (t . "color-239"     )))
    (darktooth-dark3           . ((((type graphic)) . "#665C54") (t . "color-241"     )))
    (darktooth-dark4           . ((((type graphic)) . "#7C6F64") (t . "color-243"     )))
    (darktooth-medium          . ((((type graphic)) . "#928374") (t . "color-245"     ))) ;; or 244
    (darktooth-light0_hard     . ((((type graphic)) . "#FFFFC8") (t . "color-230"     )))
    (darktooth-light0          . ((((type graphic)) . "#FDF4C1") (t . "color-229"     )))
    (darktooth-light0_soft     . ((((type graphic)) . "#F4E8BA") (t . "color-228"     )))
    (darktooth-light1          . ((((type graphic)) . "#EBDBB2") (t . "color-223"     )))
    (darktooth-light2          . ((((type graphic)) . "#D5C4A1") (t . "color-250"     )))
    (darktooth-light3          . ((((type graphic)) . "#BDAE93") (t . "color-248"     )))
    (darktooth-light4          . ((((type graphic)) . "#A89984") (t . "color-246"     )))
    (darktooth-bright_red      . ((((type graphic)) . "#FB4933") (t . "color-167"     )))
    (darktooth-bright_green    . ((((type graphic)) . "#B8BB26") (t . "color-142"     )))
    (darktooth-bright_yellow   . ((((type graphic)) . "#FABD2F") (t . "color-214"     )))
    (darktooth-bright_blue     . ((((type graphic)) . "#83A598") (t . "color-109"     )))
    (darktooth-bright_purple   . ((((type graphic)) . "#D3869B") (t . "color-175"     )))
    (darktooth-bright_aqua     . ((((type graphic)) . "#8EC07C") (t . "color-108"     )))
    (darktooth-bright_orange   . ((((type graphic)) . "#FE8019") (t . "color-208"     )))
    (darktooth-neutral_red     . ((((type graphic)) . "#FB4934") (t . "#D75F5F"       )))
    (darktooth-neutral_green   . ((((type graphic)) . "#B8BB26") (t . "#AFAF00"       )))
    (darktooth-neutral_yellow  . ((((type graphic)) . "#FABD2F") (t . "#FFAF00"       )))
    (darktooth-neutral_blue    . ((((type graphic)) . "#83A598") (t . "#87AFAF"       )))
    (darktooth-neutral_purple  . ((((type graphic)) . "#D3869B") (t . "#D787AF"       )))
    (darktooth-neutral_aqua    . ((((type graphic)) . "#8EC07C") (t . "#87AF87"       )))
    (darktooth-neutral_orange  . ((((type graphic)) . "#FE8019") (t . "#FF8700"       )))
    (darktooth-faded_red       . ((((type graphic)) . "#9D0006") (t . "color-88"      )))
    (darktooth-faded_green     . ((((type graphic)) . "#79740E") (t . "color-100"     )))
    (darktooth-faded_yellow    . ((((type graphic)) . "#B57614") (t . "color-136"     )))
    (darktooth-faded_blue      . ((((type graphic)) . "#076678") (t . "color-24"      )))
    (darktooth-faded_purple    . ((((type graphic)) . "#8F3F71") (t . "color-96"      )))
    (darktooth-faded_aqua      . ((((type graphic)) . "#427B58") (t . "color-66"      )))
    (darktooth-faded_orange    . ((((type graphic)) . "#AF3A03") (t . "color-130"     )))
    (darktooth-delimiter-one   . ((((type graphic)) . "#1E8C99") (t . "color-66"      )))
    (darktooth-delimiter-two   . ((((type graphic)) . "#3A44AA") (t . "color-102"     )))
    (darktooth-delimiter-three . ((((type graphic)) . "#84489C") (t . "color-94"      )))
    (darktooth-delimiter-four  . ((((type graphic)) . "#407B24") (t . "color-137"     )))
    (darktooth-white           . ((((type graphic)) . "#FFFFFF") (t . "white"         )))
    (darktooth-black           . ((((type graphic)) . "#000000") (t . "black"         )))
    (darktooth-sienna          . ((((type graphic)) . "#DD6F48") (t . "sienna"        )))
    (darktooth-darkslategray4  . ((((type graphic)) . "#528B8B") (t . "DarkSlateGray4")))
    (darktooth-lightblue4      . ((((type graphic)) . "#66999D") (t . "LightBlue4"    )))
    (darktooth-burlywood4      . ((((type graphic)) . "#BBAA97") (t . "burlywood4"    )))
    (darktooth-aquamarine4     . ((((type graphic)) . "#83A598") (t . "aquamarine4"   )))
    (darktooth-turquoise4      . ((((type graphic)) . "#61ACBB") (t . "turquoise4"    ))))
  "Each color is provided in the form graphic and substitute, ie. 24bit and xterm 256color.")

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
        `((default                                    (:foreground darktooth-light0 :background darktooth-dark0))
          (cursor                                     (:background darktooth-light0))

          (mode-line                                  (:box nil :foreground darktooth-light1 :background darktooth-dark0_hard))
          (mode-line-inactive                         (:box nil :background darktooth-dark2 :foreground darktooth-light4))
          (fringe                                     (:background darktooth-dark0))
          (linum                                      (:foreground darktooth-dark4))
          (hl-line                                    (:background darktooth-dark1))
          (region                                     (:background darktooth-dark2))
          (secondary-selection                        (:background darktooth-dark1))
          (minibuffer-prompt                          (:background darktooth-dark0 :foreground darktooth-turquoise4 :bold nil))

          ;;                                          Built-in      syntax
          (font-lock-builtin-face                     (:foreground darktooth-bright_orange))
          (font-lock-constant-face                    (:foreground darktooth-burlywood4))
          (font-lock-comment-face                     (:foreground darktooth-dark4))
          (font-lock-function-name-face               (:foreground darktooth-light4))
          (font-lock-keyword-face                     (:foreground darktooth-sienna))
          (font-lock-string-face                      (:foreground darktooth-darkslategray4))
          (font-lock-variable-name-face               (:foreground darktooth-aquamarine4))
          (font-lock-type-face                        (:foreground darktooth-lightblue4))
          (font-lock-warning-face                     (:foreground darktooth-neutral_red :bold t))

          ;;                                          whitespace-mode
          (whitespace-space                           (:background darktooth-dark0 :foreground darktooth-dark4))
          (whitespace-hspace                          (:background darktooth-dark0 :foreground darktooth-dark4))
          (whitespace-tab                             (:background darktooth-dark0 :foreground darktooth-dark4))
          (whitespace-newline                         (:background darktooth-dark0 :foreground darktooth-dark4))
          (whitespace-trailing                        (:background darktooth-dark1 :foreground darktooth-neutral_red))
          (whitespace-line                            (:background darktooth-dark1 :foreground darktooth-neutral_red))
          (whitespace-space-before-tab                (:background darktooth-dark0 :foreground darktooth-dark4))
          (whitespace-indentation                     (:background darktooth-dark0 :foreground darktooth-dark4))
          (whitespace-empty                           (:background nil :foreground nil))
          (whitespace-space-after-tab                 (:background darktooth-dark0 :foreground darktooth-dark4))

          ;;                                          RainbowDelimiters
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
          (rainbow-delimiters-unmatched-face          (:background nil :foreground darktooth-light0))

          ;;                                          linum-relative
          (linum-relative-current-face                (:background darktooth-dark1 :foreground darktooth-light4))

          ;;                                          Highlight     indentation                mode
          (highlight-indentation-current-column-face  (:background darktooth-dark2 ))
          (highlight-indentation-face                 (:background darktooth-dark1 ))

          ;;                                          Smartparens
          (sp-pair-overlay-face                       (:background darktooth-dark2))
          ;;(sp-wrap-overlay-face                     (:inherit sp-wrap-overlay-face))
          ;;(sp-wrap-tag-overlay-face                 (:inherit sp-wrap-overlay-face))
          (sp-show-pair-match-face                    (:background darktooth-dark2)) ;; Pair tags highlight
          (sp-show-pair-mismatch-face                 (:background darktooth-neutral_red)) ;; Highlight for bracket without pair

          ;;                                          elscreen
          (elscreen-tab-background-face               (:box nil :background darktooth-dark0)) ;; Tab bar not the tabs
          (elscreen-tab-control-face                  (:box nil :background darktooth-dark2 :foreground darktooth-neutral_red :underline nil)) ;; The controls
          (elscreen-tab-current-screen-face           (:box nil :background darktooth-dark4 :foreground darktooth-dark0)) ;; Current tab
          (elscreen-tab-other-screen-face             (:box nil :background darktooth-dark2 :foreground darktooth-light4 :underline nil)) ;; Inactive tab

          ;;                                          ag            (The                       Silver                   Searcher)
          (ag-hit-face                                (:foreground darktooth-neutral_blue))
          (ag-match-face                              (:foreground darktooth-neutral_red))

          ;;                                          Diffs
          (diff-changed                               (:background nil :foreground darktooth-light1))
          (diff-added                                 (:background nil :foreground darktooth-neutral_green))
          (diff-removed                               (:background nil :foreground darktooth-neutral_red))
          (diff-indicator-changed                     (:inherit diff-changed))
          (diff-indicator-added                       (:inherit diff-added))
          (diff-indicator-removed                     (:inherit diff-removed))

          (js2-warning                                (:underline (:color darktooth-bright_yellow :style wave)))
          (js2-error                                  (:underline (:color darktooth-bright_red :style wave)))
          (js2-external-variable                      (:underline (:color darktooth-bright_aqua :style wave)))
          (js2-jsdoc-tag                              (:background nil :foreground darktooth-medium ))
          (js2-jsdoc-type                             (:background nil :foreground darktooth-light4 ))
          (js2-jsdoc-value                            (:background nil :foreground darktooth-light3 ))
          (js2-function-param                         (:background nil :foreground darktooth-bright_aqua ))
          (js2-function-call                          (:background nil :foreground darktooth-bright_blue ))
          (js2-instance-member                        (:background nil :foreground darktooth-bright_orange ))
          (js2-private-member                         (:background nil :foreground darktooth-faded_yellow ))
          (js2-private-function-call                  (:background nil :foreground darktooth-faded_aqua ))
          (js2-jsdoc-html-tag-name                    (:background nil :foreground darktooth-light4 ))
          (js2-jsdoc-html-tag-delimiter               (:background nil :foreground darktooth-light3 ))


          ;;                                          org-mode
          (org-agenda-date-today                      (:foreground darktooth-light2 :slant italic :weight bold))
          (org-agenda-structure                       (:inherit font-lock-comment-face ))
          (org-archived                               (:foreground darktooth-light0 :weight bold ))
          (org-checkbox                               (:foreground darktooth-light2 :background darktooth-dark0 :box (:line-width 1 :style released-button) ))
          (org-date                                   (:foreground darktooth-faded_blue :underline t ))
          (org-deadline-announce                      (:foreground darktooth-faded_red ))
          (org-done                                   (:foreground darktooth-bright_green :bold t :weight bold ))
          (org-formula                                (:foreground darktooth-bright_yellow ))
          (org-headline-done                          (:foreground darktooth-bright_green ))
          (org-hide                                   (:foreground darktooth-dark0 ))
          (org-level-1                                (:foreground darktooth-bright_orange ))
          (org-level-2                                (:foreground darktooth-bright_green ))
          (org-level-3                                (:foreground darktooth-bright_blue ))
          (org-level-4                                (:foreground darktooth-bright_yellow ))
          (org-level-5                                (:foreground darktooth-faded_aqua ))
          (org-level-6                                (:foreground darktooth-bright_green ))
          (org-level-7                                (:foreground darktooth-bright_red ))
          (org-level-8                                (:foreground darktooth-bright_blue ))
          (org-link                                   (:foreground darktooth-bright_yellow :underline t ))
          (org-scheduled                              (:foreground darktooth-bright_green ))
          (org-scheduled-previously                   (:foreground darktooth-bright_red ))
          (org-scheduled-today                        (:foreground darktooth-bright_blue ))
          (org-sexp-date                              (:foreground darktooth-bright_blue :underline t ))
          (org-special-keyword                        (:inherit font-lock-comment-face ))
          (org-table                                  (:foreground darktooth-bright_green ))
          (org-tag                                    (:bold t :weight bold ))
          (org-time-grid                              (:foreground darktooth-bright_orange ))
          (org-todo                                   (:foreground darktooth-bright_red :weight bold :bold t ))
          (org-upcoming-deadline                      (:inherit font-lock-keyword-face ))
          (org-warning                                (:foreground darktooth-bright_red :weight bold :underline nil :bold t ))
          (org-column                                 (:background darktooth-dark0 ))
          (org-column-title                           (:background darktooth-dark0_hard :underline t :weight bold ))
          (org-mode-line-clock                        (:foreground darktooth-light2 :background darktooth-dark0 ))
          (org-mode-line-clock-overrun                (:foreground darktooth-black :background darktooth-bright_red ))
          (org-ellipsis                               (:foreground darktooth-bright_yellow :underline t ))
          (org-footnote                               (:foreground darktooth-faded_aqua :underline t ))


          ;;                                          helm
          (helm-M-x-key                               (:foreground darktooth-neutral_orange ))
          (helm-action                                (:foreground darktooth-white :underline t ))
          (helm-bookmark-addressbook                  (:foreground darktooth-neutral_red ))
          (helm-bookmark-directory                    (:foreground darktooth-bright_purple ))
          (helm-bookmark-file                         (:foreground darktooth-faded_blue ))
          (helm-bookmark-gnus                         (:foreground darktooth-faded_purple ))
          (helm-bookmark-info                         (:foreground darktooth-turquoise4 ))
          (helm-bookmark-man                          (:foreground darktooth-sienna ))
          (helm-bookmark-w3m                          (:foreground darktooth-neutral_yellow ))
          (helm-buffer-directory                      (:foreground darktooth-white :background darktooth-bright_blue ))
          (helm-buffer-not-saved                      (:foreground darktooth-faded_red ))
          (helm-buffer-process                        (:foreground darktooth-burlywood4 ))
          (helm-buffer-saved-out                      (:foreground darktooth-bright_red ))
          (helm-buffer-size                           (:foreground darktooth-bright_purple ))
          (helm-candidate-number                      (:foreground darktooth-neutral_green ))
          (helm-ff-directory                          (:foreground darktooth-neutral_purple ))
          (helm-ff-executable                         (:foreground darktooth-turquoise4 ))
          (helm-ff-file                               (:foreground darktooth-sienna ))
          (helm-ff-invalid-symlink                    (:foreground darktooth-white :background darktooth-bright_red ))
          (helm-ff-prefix                             (:foreground darktooth-black :background darktooth-neutral_yellow ))
          (helm-ff-symlink                            (:foreground darktooth-neutral_orange ))
          (helm-grep-cmd-line                         (:foreground darktooth-neutral_green ))
          (helm-grep-file                             (:foreground darktooth-faded_purple ))
          (helm-grep-finish                           (:foreground darktooth-turquoise4 ))
          (helm-grep-lineno                           (:foreground darktooth-neutral_orange ))
          (helm-grep-match                            (:foreground darktooth-neutral_yellow ))
          (helm-grep-running                          (:foreground darktooth-neutral_red ))
          (helm-header                                (:foreground darktooth-aquamarine4 ))
          (helm-helper                                (:foreground darktooth-aquamarine4 ))
          (helm-history-deleted                       (:foreground darktooth-black :background darktooth-bright_red ))
          (helm-history-remote                        (:foreground darktooth-faded_red ))
          (helm-lisp-completion-info                  (:foreground darktooth-faded_orange ))
          (helm-lisp-show-completion                  (:foreground darktooth-bright_red ))
          (helm-locate-finish                         (:foreground darktooth-white :background darktooth-aquamarine4 ))
          (helm-match                                 (:foreground darktooth-neutral_orange ))
          (helm-moccur-buffer                         (:foreground darktooth-bright_aqua :underline t ))
          (helm-prefarg                               (:foreground darktooth-turquoise4 ))
          (helm-selection                             (:foreground darktooth-white :background darktooth-dark2 ))
          (helm-selection-line                        (:foreground darktooth-white :background darktooth-dark2 ))
          (helm-separator                             (:foreground darktooth-faded_red ))
          (helm-source-header                         (:foreground darktooth-light2 ))
          (helm-visible-mark                          (:foreground darktooth-black :background darktooth-light3 ))

          ;;                                          Term
          (term-color-black                           (:foreground darktooth-dark1))
          (term-color-blue                            (:foreground darktooth-neutral_blue))
          (term-color-cyan                            (:foreground darktooth-neutral_aqua))
          (term-color-green                           (:foreground darktooth-neutral_green))
          (term-color-magenta                         (:foreground darktooth-neutral_purple))
          (term-color-red                             (:foreground darktooth-neutral_red))
          (term-color-white                           (:foreground darktooth-light1))
          (term-color-yellow                          (:foreground darktooth-neutral_yellow))
          (term-default-fg-color                      (:foreground darktooth-light0))
          (term-default-bg-color                      (:background darktooth-dark0)))))

;; TODO: BROKEN
(custom-theme-set-variables
 'darktooth
 `(ansi-color-names-vector [darktooth-dark1
                            darktooth-neutral_red
                            darktooth-neutral_green
                            darktooth-neutral_yellow
                            darktooth-neutral_blue
                            darktooth-neutral_purple
                            darktooth-neutral_aqua
                            darktooth-light1)]))
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
