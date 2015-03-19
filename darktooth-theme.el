;;; darktooth-theme.el --- colour theme for Emacs, a remix of gruvbox

;; Copyright (c) 2015 Jasonm23

;; Authors: Jasonm23 <jasonm23@gmail.com>
;; URL: http://github.com/emacsfodder/emacs-theme-darktooth
;; Version: 0.1.2

;;; Commentary:

;; A remix of the excellent theme Gruvbox.

;;; Code:

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(deftheme darktooth "A retro-groove colour theme")
(let (
      (darktooth-dark0_hard      (if (display-graphic-p) "#1d2021" "color-234"))
      (darktooth-dark0           (if (display-graphic-p) "#282828" "color-235"))
      (darktooth-dark0_soft      (if (display-graphic-p) "#32302f" "color-236"))
      (darktooth-dark1           (if (display-graphic-p) "#3c3836" "color-237"))
      (darktooth-dark2           (if (display-graphic-p) "#504945" "color-239"))
      (darktooth-dark3           (if (display-graphic-p) "#665c54" "color-241"))
      (darktooth-dark4           (if (display-graphic-p) "#7c6f64" "color-243"))

      (darktooth-medium          (if (display-graphic-p) "#928374" "color-245")) ;; or 244

      (darktooth-light0_hard     (if (display-graphic-p) "#ffffc8" "color-230"))
      (darktooth-light0          (if (display-graphic-p) "#fdf4c1" "color-229"))
      (darktooth-light0_soft     (if (display-graphic-p) "#f4e8ba" "color-228"))
      (darktooth-light1          (if (display-graphic-p) "#ebdbb2" "color-223"))
      (darktooth-light2          (if (display-graphic-p) "#d5c4a1" "color-250"))
      (darktooth-light3          (if (display-graphic-p) "#bdae93" "color-248"))
      (darktooth-light4          (if (display-graphic-p) "#a89984" "color-246"))

      (darktooth-bright_red      (if (display-graphic-p) "#fb4933" "color-167"))
      (darktooth-bright_green    (if (display-graphic-p) "#b8bb26" "color-142"))
      (darktooth-bright_yellow   (if (display-graphic-p) "#fabd2f" "color-214"))
      (darktooth-bright_blue     (if (display-graphic-p) "#83a598" "color-109"))
      (darktooth-bright_purple   (if (display-graphic-p) "#d3869b" "color-175"))
      (darktooth-bright_aqua     (if (display-graphic-p) "#8ec07c" "color-108"))
      (darktooth-bright_orange   (if (display-graphic-p) "#fe8019" "color-208"))

      ;; neutral, no 256-color code, requested, nice work-around meanwhile
      (darktooth-neutral_red     (if (display-graphic-p) "#fb4934" "#d75f5f"))
      (darktooth-neutral_green   (if (display-graphic-p) "#b8bb26" "#afaf00"))
      (darktooth-neutral_yellow  (if (display-graphic-p) "#fabd2f" "#ffaf00"))
      (darktooth-neutral_blue    (if (display-graphic-p) "#83a598" "#87afaf"))
      (darktooth-neutral_purple  (if (display-graphic-p) "#d3869b" "#d787af"))
      (darktooth-neutral_aqua    (if (display-graphic-p) "#8ec07c" "#87af87"))
      (darktooth-neutral_orange  (if (display-graphic-p) "#fe8019" "#ff8700"))

      (darktooth-faded_red       (if (display-graphic-p) "#9d0006" "color-88"))
      (darktooth-faded_green     (if (display-graphic-p) "#79740e" "color-100"))
      (darktooth-faded_yellow    (if (display-graphic-p) "#b57614" "color-136"))
      (darktooth-faded_blue      (if (display-graphic-p) "#076678" "color-24"))
      (darktooth-faded_purple    (if (display-graphic-p) "#8f3f71" "color-96"))
      (darktooth-faded_aqua      (if (display-graphic-p) "#427b58" "color-66"))
      (darktooth-faded_orange    (if (display-graphic-p) "#af3a03" "color-130"))

      (darktooth-delimiter-one   (if (display-graphic-p) "#5C7E81" "color-66"))
      (darktooth-delimiter-two   (if (display-graphic-p) "#837486" "color-102"))
      (darktooth-delimiter-three (if (display-graphic-p) "#9C6F68" "color-94"))
      (darktooth-delimiter-four  (if (display-graphic-p) "#7B665C" "color-137"))

      (darktooth-sienna          (if (display-graphic-p) "#dd6f48" "sienna"))
      (darktooth-darkslategray4  (if (display-graphic-p) "#528B8B" "DarkSlateGray4"))
      (darktooth-lightblue4      (if (display-graphic-p) "#66999d" "LightBlue4"))
      (darktooth-burlywood4      (if (display-graphic-p) "#bbaa97" "burlywood4"))
      (darktooth-aquamarine4     (if (display-graphic-p) "#83a598" "aquamarine4"))
      (darktooth-turquoise4      (if (display-graphic-p) "#61acbb" "turquoise4"))
      )

  (custom-theme-set-faces
   'darktooth

   ;; UI
   `(default                           ((t (:foreground ,darktooth-light0 :background ,darktooth-dark0))))
   `(cursor                            ((t (:background ,darktooth-light0))))

   `(mode-line                         ((t (:box nil :foreground ,darktooth-light1 :background ,darktooth-dark0_hard))))
   `(mode-line-inactive                ((t (:box nil :background ,darktooth-dark2 :foreground ,darktooth-light4))))
   `(fringe                            ((t (:background ,darktooth-dark0))))
   `(linum                             ((t (:foreground ,darktooth-dark4))))
   `(hl-line                           ((t (:background ,darktooth-dark1))))
   `(region                            ((t (:background ,darktooth-dark2)))) ;;selection
   `(secondary-selection               ((t (:background ,darktooth-dark1))))
   `(minibuffer-prompt                 ((t (:background ,darktooth-dark0 :foreground ,darktooth-turquoise4 :bold nil))))

   ;; Built-in syntax
   `(font-lock-builtin-face            ((t (:foreground ,darktooth-bright_orange))))
   `(font-lock-constant-face           ((t (:foreground ,darktooth-burlywood4))))
   `(font-lock-comment-face            ((t (:foreground ,darktooth-dark4))))
   `(font-lock-function-name-face      ((t (:foreground ,darktooth-light4))))
   `(font-lock-keyword-face            ((t (:foreground ,darktooth-sienna))))
   `(font-lock-string-face             ((t (:foreground ,darktooth-darkslategray4))))
   `(font-lock-variable-name-face      ((t (:foreground ,darktooth-aquamarine4))))
   `(font-lock-type-face               ((t (:foreground ,darktooth-lightblue4))))
   `(font-lock-warning-face            ((t (:foreground ,darktooth-neutral_red :bold t))))

   ;; whitespace-mode
   `(whitespace-space                  ((t (:background ,darktooth-dark0 :foreground ,darktooth-dark4))))
   `(whitespace-hspace                 ((t (:background ,darktooth-dark0 :foreground ,darktooth-dark4))))
   `(whitespace-tab                    ((t (:background ,darktooth-dark0 :foreground ,darktooth-dark4))))
   `(whitespace-newline                ((t (:background ,darktooth-dark0 :foreground ,darktooth-dark4))))
   `(whitespace-trailing               ((t (:background ,darktooth-dark1 :foreground ,darktooth-neutral_red))))
   `(whitespace-line                   ((t (:background ,darktooth-dark1 :foreground ,darktooth-neutral_red))))
   `(whitespace-space-before-tab       ((t (:background ,darktooth-dark0 :foreground ,darktooth-dark4))))
   `(whitespace-indentation            ((t (:background ,darktooth-dark0 :foreground ,darktooth-dark4))))
   `(whitespace-empty                  ((t (:background nil :foreground nil))))
   `(whitespace-space-after-tab        ((t (:background ,darktooth-dark0 :foreground ,darktooth-dark4))))

   ;; RainbowDelimiters
   `(rainbow-delimiters-depth-1-face   ((t (:foreground ,darktooth-delimiter-one))))
   `(rainbow-delimiters-depth-2-face   ((t (:foreground ,darktooth-delimiter-two))))
   `(rainbow-delimiters-depth-3-face   ((t (:foreground ,darktooth-delimiter-three))))
   `(rainbow-delimiters-depth-4-face   ((t (:foreground ,darktooth-delimiter-four))))
   `(rainbow-delimiters-depth-5-face   ((t (:foreground ,darktooth-delimiter-one))))
   `(rainbow-delimiters-depth-6-face   ((t (:foreground ,darktooth-delimiter-two))))
   `(rainbow-delimiters-depth-7-face   ((t (:foreground ,darktooth-delimiter-three))))
   `(rainbow-delimiters-depth-8-face   ((t (:foreground ,darktooth-delimiter-four))))
   `(rainbow-delimiters-depth-9-face   ((t (:foreground ,darktooth-delimiter-one))))
   `(rainbow-delimiters-depth-10-face  ((t (:foreground ,darktooth-delimiter-two))))
   `(rainbow-delimiters-depth-11-face  ((t (:foreground ,darktooth-delimiter-three))))
   `(rainbow-delimiters-depth-12-face  ((t (:foreground ,darktooth-delimiter-four))))
   `(rainbow-delimiters-unmatched-face ((t (:background nil :foreground ,darktooth-light0))))

   ;; linum-relative
   `(linum-relative-current-face       ((t (:background ,darktooth-dark1 :foreground ,darktooth-light4))))

   ;; Highlight indentation mode
   `(highlight-indentation-current-column-face ((t (:background ,darktooth-dark2 ))))
   `(highlight-indentation-face                ((t (:background ,darktooth-dark1 ))))

   ;; Smartparens
   `(sp-pair-overlay-face              ((t (:background ,darktooth-dark2))))
                                        ;`(sp-wrap-overlay-face             ((t (:inherit sp-wrap-overlay-face))))
                                        ;`(sp-wrap-tag-overlay-face         ((t (:inherit sp-wrap-overlay-face))))
   `(sp-show-pair-match-face           ((t (:background ,darktooth-dark2)))) ;; Pair tags highlight
   `(sp-show-pair-mismatch-face        ((t (:background ,darktooth-neutral_red)))) ;; Highlight for bracket without pair

   ;; elscreen
   `(elscreen-tab-background-face      ((t (:box nil :background ,darktooth-dark0)))) ;; Tab bar, not the tabs
   `(elscreen-tab-control-face         ((t (:box nil :background ,darktooth-dark2 :foreground ,darktooth-neutral_red :underline nil)))) ;; The controls
   `(elscreen-tab-current-screen-face  ((t (:box nil :background ,darktooth-dark4 :foreground ,darktooth-dark0)))) ;; Current tab
   `(elscreen-tab-other-screen-face    ((t (:box nil :background ,darktooth-dark2 :foreground ,darktooth-light4 :underline nil)))) ;; Inactive tab

   ;; ag (The Silver Searcher)
   `(ag-hit-face                       ((t (:foreground ,darktooth-neutral_blue))))
   `(ag-match-face                     ((t (:foreground ,darktooth-neutral_red))))

   ;; Diffs
   `(diff-changed                      ((t (:background nil :foreground ,darktooth-light1))))
   `(diff-added                        ((t (:background nil :foreground ,darktooth-neutral_green))))
   `(diff-removed                      ((t (:background nil :foreground ,darktooth-neutral_red))))
   `(diff-indicator-changed            ((t (:inherit diff-changed))))
   `(diff-indicator-added              ((t (:inherit diff-added))))
   `(diff-indicator-removed            ((t (:inherit diff-removed))))

   `(js2-warning                       ((t (:underline (:color ,darktooth-bright_yellow :style wave)))))
   `(js2-error                         ((t (:underline (:color ,darktooth-bright_red :style wave)))))
   `(js2-external-variable             ((t (:underline (:color ,darktooth-bright_aqua :style wave)))))
   `(js2-jsdoc-tag                     ((t (:background nil :foreground ,darktooth-medium ))))
   `(js2-jsdoc-type                    ((t (:background nil :foreground ,darktooth-light4 ))))
   `(js2-jsdoc-value                   ((t (:background nil :foreground ,darktooth-light3 ))))
   `(js2-function-param                ((t (:background nil :foreground ,darktooth-bright_aqua ))))
   `(js2-function-call                 ((t (:background nil :foreground ,darktooth-bright_blue ))))
   `(js2-instance-member               ((t (:background nil :foreground ,darktooth-bright_orange ))))
   `(js2-private-member                ((t (:background nil :foreground ,darktooth-faded_yellow ))))
   `(js2-private-function-call         ((t (:background nil :foreground ,darktooth-faded_aqua ))))
   `(js2-jsdoc-html-tag-name           ((t (:background nil :foreground ,darktooth-light4 ))))
   `(js2-jsdoc-html-tag-delimiter      ((t (:background nil :foreground ,darktooth-light3 ))))

   ;; powerline
   `(powerline-active1                 ((t (:background ,darktooth-dark2 :inherit mode-line))))
   `(powerline-active2                 ((t (:background ,darktooth-dark1 :inherit mode-line))))
   `(powerline-inactive1               ((t (:background ,darktooth-medium :inherit mode-line-inactive))))
   `(powerline-inactive2               ((t (:background ,darktooth-dark2 :inherit mode-line-inactive))))
   ;; helm
   `(helm-M-x-key                      ((t (:foreground ,darktooth-neutral_orange))))
   `(helm-action                       ((t (:foreground ,"#ffffff" :underline t))))
   `(helm-bookmark-addressbook         ((t (:foreground ,darktooth-neutral_red))))
   `(helm-bookmark-directory           ((t (:foreground ,darktooth-bright_purple))))
   `(helm-bookmark-file                ((t (:foreground ,darktooth-faded_blue))))
   `(helm-bookmark-gnus                ((t (:foreground ,darktooth-faded_purple))))
   `(helm-bookmark-info                ((t (:foreground ,darktooth-turquoise4))))
   `(helm-bookmark-man                 ((t (:foreground ,darktooth-sienna))))
   `(helm-bookmark-w3m                 ((t (:foreground ,darktooth-neutral_yellow))))
   `(helm-buffer-directory             ((t (:foreground ,"#ffffff" :background ,darktooth-bright_blue))))
   `(helm-buffer-not-saved             ((t (:foreground ,darktooth-faded_red))))
   `(helm-buffer-process               ((t (:foreground ,darktooth-burlywood4))))
   `(helm-buffer-saved-out             ((t (:foreground ,darktooth-bright_red))))
   `(helm-buffer-size                  ((t (:foreground ,darktooth-bright_purple))))
   `(helm-candidate-number             ((t (:foreground ,darktooth-neutral_green))))
   `(helm-ff-directory                 ((t (:foreground ,darktooth-neutral_purple))))
   `(helm-ff-executable                ((t (:foreground ,darktooth-turquoise4))))
   `(helm-ff-file                      ((t (:foreground ,darktooth-sienna))))
   `(helm-ff-invalid-symlink           ((t (:foreground ,"#ffffff" :background ,darktooth-bright_red))))
   `(helm-ff-prefix                    ((t (:foreground ,"#000000" :background ,darktooth-neutral_yellow))))
   `(helm-ff-symlink                   ((t (:foreground ,darktooth-neutral_orange))))
   `(helm-grep-cmd-line                ((t (:foreground ,darktooth-neutral_green))))
   `(helm-grep-file                    ((t (:foreground ,darktooth-faded_purple))))
   `(helm-grep-finish                  ((t (:foreground ,darktooth-turquoise4))))
   `(helm-grep-lineno                  ((t (:foreground ,darktooth-neutral_orange))))
   `(helm-grep-match                   ((t (:foreground ,darktooth-neutral_yellow))))
   `(helm-grep-running                 ((t (:foreground ,darktooth-neutral_red))))
   `(helm-header                       ((t (:foreground ,darktooth-aquamarine4))))
   `(helm-helper                       ((t (:foreground ,darktooth-aquamarine4))))
   `(helm-history-deleted              ((t (:foreground ,"#000000" :background ,darktooth-bright_red))))
   `(helm-history-remote               ((t (:foreground ,darktooth-faded_red))))
   `(helm-lisp-completion-info         ((t (:foreground ,darktooth-faded_orange))))
   `(helm-lisp-show-completion         ((t (:foreground ,darktooth-bright_red))))
   `(helm-locate-finish                ((t (:foreground ,"#ffffff" :background ,darktooth-aquamarine4))))
   `(helm-match                        ((t (:foreground ,darktooth-neutral_orange))))
   `(helm-moccur-buffer                ((t (:foreground ,darktooth-bright_aqua :underline t))))
   `(helm-prefarg                      ((t (:foreground ,darktooth-turquoise4))))
   `(helm-selection                    ((t (:foreground ,"#ffffff" :background ,darktooth-dark2))))
   `(helm-selection-line               ((t (:foreground ,"#ffffff" :background ,darktooth-dark2))))
   `(helm-separator                    ((t (:foreground ,darktooth-faded_red))))
   `(helm-source-header                ((t (:foreground ,darktooth-light2))))
   `(helm-visible-mark                 ((t (:foreground ,"#000000" :background ,darktooth-light3))))

   ;; Term
   `(term-color-black                  ((t (:foreground ,darktooth-dark1))))
   `(term-color-blue                   ((t (:foreground ,darktooth-neutral_blue))))
   `(term-color-cyan                   ((t (:foreground ,darktooth-neutral_aqua))))
   `(term-color-green                  ((t (:foreground ,darktooth-neutral_green))))
   `(term-color-magenta                ((t (:foreground ,darktooth-neutral_purple))))
   `(term-color-red                    ((t (:foreground ,darktooth-neutral_red))))
   `(term-color-white                  ((t (:foreground ,darktooth-light1))))
   `(term-color-yellow                 ((t (:foreground ,darktooth-neutral_yellow))))
   `(term-default-fg-color             ((t (:foreground ,darktooth-light0))))
   `(term-default-bg-color             ((t (:background ,darktooth-dark0)))))

  (custom-theme-set-variables
   'darktooth

   `(ansi-color-names-vector [,darktooth-dark1 ,darktooth-neutral_red
                                               ,darktooth-neutral_green ,darktooth-neutral_yellow ,darktooth-neutral_blue
                                               ,darktooth-neutral_purple ,darktooth-neutral_aqua ,darktooth-light1])))

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
