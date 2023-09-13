;;; darktooth-darker-theme.el --- From the darkness... it watches

;; Copyright (c) 2015-2022 Jason Milkins (GNU/GPL Licence)

;; Authors: Jason Milkins <jasonm23@gmail.com>
;; URL: http://github.com/emacsfodder/emacs-theme-darktooth
;; Version: 1.0.2

;; Package-Requires: ((emacs "27.1") (autothemer "0.2"))

;;; Commentary:
;;  From the darkness... it watches

;;  Since 1.0.0  : Prepare for variations, create darktooth-deftheme.
;;  Since 0.4.0  : Restructure for simpler theme development
;;  Since 0.3.0  : Official release integrated with autothemer
;;  Since 0.2.0  : Built using autothemer
;;  Since 0.1.60 : includes `darktooth-modeline'

;;; Code:
(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(require 'darktooth)

(darktooth-deftheme darktooth-darker "From the darkness... it watches"
  ((((class color) (min-colors #xFFFFFF)) ;; color column 1 GUI/24bit
    ((class color) (min-colors #xFF)))    ;; color column 2 Xterm/256

   (darktooth-background-0-hard  "#060607" "#020202")
   (darktooth-background-0       "#0E0E0E" "#0C0C0C")
   (darktooth-background-0-soft  "#181616" "#161616")
   (darktooth-background-1       "#22201E" "#202020")
   (darktooth-background-2       "#36312E" "#343434")
   (darktooth-background-3       "#4C443E" "#484848")
   (darktooth-background-4       "#62574E" "#5C5C5C")

   (darktooth-medium             "#928374" "#8a8a8a") ;; or 244

   (darktooth-foreground-0-hard  "#FFFFC8" "#ffffdf")
   (darktooth-foreground-0       "#FDF4C1" "#ffffaf")
   (darktooth-foreground-0-soft  "#F4E8BA" "#ffff87")
   (darktooth-foreground-1       "#EBDBB2" "#ffdfaf")
   (darktooth-foreground-2       "#D5C4A1" "#bcbcbc")
   (darktooth-foreground-3       "#BDAE93" "#a8a8a8")
   (darktooth-foreground-4       "#A89984" "#949494")

   (darktooth-bright-red         "#FB4933" "#d75f5f")
   (darktooth-bright-green       "#B8BB26" "#afaf00")
   (darktooth-bright-yellow      "#FABD2F" "#ffaf00")
   (darktooth-bright-blue        "#83A598" "#87afaf")
   (darktooth-bright-purple      "#D3869B" "#d787af")
   (darktooth-bright-aqua        "#8EC07C" "#87af87")
   (darktooth-bright-orange      "#FE8019" "#ff8700")
   (darktooth-bright-cyan        "#3FD7E5" "#00d7ff")

   (darktooth-neutral-red        "#FB4934" "#D75F5F")
   (darktooth-neutral-green      "#B8BB26" "#73AF00")
   (darktooth-neutral-yellow     "#FABD2F" "#FFAF00")
   (darktooth-neutral-blue       "#83A598" "#87AFAF")
   (darktooth-neutral-purple     "#D3869B" "#D787AF")
   (darktooth-neutral-aqua       "#8EC07C" "#87AF87")
   (darktooth-neutral-orange     "#FE8019" "#FF8700")
   (darktooth-neutral-cyan       "#17CCD5" "#17CCD5")

   (darktooth-faded-red          "#9D0006" "#870000")
   (darktooth-faded-green        "#79740E" "#878700")
   (darktooth-faded-yellow       "#B57614" "#af8700")
   (darktooth-faded-blue         "#076678" "#005f87")
   (darktooth-faded-purple       "#8F3F71" "#875f87")
   (darktooth-faded-aqua         "#427B58" "#5f8787")
   (darktooth-faded-orange       "#AF3A03" "#af5f00")
   (darktooth-faded-cyan         "#00A7AF" "#00afaf")

   (darktooth-muted-red          "#901A1E" "#870000")
   (darktooth-muted-green        "#556C21" "#878700")
   (darktooth-muted-yellow       "#A87933" "#af8700")
   (darktooth-muted-blue         "#1B5C6B" "#005f87")
   (darktooth-muted-purple       "#82526E" "#875f87")
   (darktooth-muted-aqua         "#506E59" "#5f8787")
   (darktooth-muted-orange       "#A24921" "#af5f00")
   (darktooth-muted-cyan         "#18A7AF" "#00afaf")

   (darktooth-background-red     "#421E1E" "#5f0000")
   (darktooth-background-green   "#232B0F" "#005f00")
   (darktooth-background-yellow  "#4D3B27" "#5f5f00")
   (darktooth-background-blue    "#2B3C44" "#00005f")
   (darktooth-background-purple  "#4E3D45" "#5f00af")
   (darktooth-background-aqua    "#36473A" "#005f5f")
   (darktooth-background-orange  "#613620" "#af5f00")
   (darktooth-background-cyan    "#205161" "#005f87")

   (darktooth-mid-red            "#3F1B1B" "#5f0000")
   (darktooth-mid-green          "#1F321C" "#005f00")
   (darktooth-mid-yellow         "#4C3A25" "#5f5f00")
   (darktooth-mid-blue           "#30434C" "#00005f")
   (darktooth-mid-purple         "#4C3B43" "#5f00af")
   (darktooth-mid-aqua           "#394C3D" "#005f5f")
   (darktooth-mid-orange         "#603000" "#af5f00")
   (darktooth-mid-cyan           "#005560" "#005f87")

   (darktooth-delimiter-one      "#5C7E81" "#5f8787")
   (darktooth-delimiter-two      "#837486" "#875f5f")
   (darktooth-delimiter-three    "#9C6F68" "#af5f5f")
   (darktooth-delimiter-four     "#7B665C" "#5f5f5f")

   (darktooth-identifiers-1      "#FDF4C1" "#FDF4C1")
   (darktooth-identifiers-2      "#F4E8BA" "#F4E8BA")
   (darktooth-identifiers-3      "#EBDBB2" "#EBDBB2")
   (darktooth-identifiers-4      "#D5C4A1" "#D5C4A1")
   (darktooth-identifiers-5      "#FDF4C1" "#FDF4C1")
   (darktooth-identifiers-6      "#F4E8BA" "#F4E8BA")
   (darktooth-identifiers-7      "#EBDBB2" "#EBDBB2")
   (darktooth-identifiers-8      "#D5C4A1" "#D5C4A1")
   (darktooth-identifiers-9      "#FDF4C1" "#FDF4C1")
   (darktooth-identifiers-10     "#F4E8BA" "#F4E8BA")
   (darktooth-identifiers-11     "#EBDBB2" "#EBDBB2")
   (darktooth-identifiers-12     "#D5C4A1" "#D5C4A1")
   (darktooth-identifiers-13     "#FDF4C1" "#FDF4C1")
   (darktooth-identifiers-14     "#F4E8BA" "#F4E8BA")
   (darktooth-identifiers-15     "#EBDBB2" "#EBDBB2")

   (darktooth-white              "#FFFFFF" "white")
   (darktooth-black              "#000000" "black")
   (darktooth-sienna             "#DD6F48" "sienna")
   (darktooth-darkslategray4     "#528B8B" "DarkSlateGray4")
   (darktooth-lightblue4         "#66999D" "LightBlue4")
   (darktooth-burlywood4         "#BBAA97" "burlywood4")
   (darktooth-aquamarine4        "#83A598" "aquamarine4")
   (darktooth-turquoise4         "#61ACBB" "turquoise4"))

 ;; autothemer body
 (defface darktooth-modeline-one-active
   `((t
      (:foreground ,darktooth-background-0
       :background ,darktooth-background-4
       :height 120
       :inverse-video nil
       :box (:line-width 6 :color ,darktooth-background-4 :style nil))))
   "darktooth modeline active one"
   :group 'mode-line-faces)

 (defface darktooth-modeline-one-inactive
   `((t
      (:foreground ,darktooth-background-0
       :background ,darktooth-background-2
       :height 120
       :inverse-video nil
       :box (:line-width 6 :color ,darktooth-background-2 :style nil))))
   "darktooth modeline inactive one"
   :group 'mode-line-faces)

 (defface darktooth-modeline-two-active
   `((t
      (:foreground ,darktooth-foreground-2
       :background ,darktooth-background-2
       :height 120
       :inverse-video nil
       :box (:line-width 6 :color ,darktooth-background-2 :style nil))))
   "darktooth modeline active two"
   :group 'mode-line-faces)

 (defface darktooth-modeline-two-inactive
   `((t
      (:foreground ,darktooth-background-1
       :background ,darktooth-background-4
       :height 120
       :inverse-video nil
       :box (:line-width 6 :color ,darktooth-background-4 :style nil))))
   "darktooth modeline inactive two"
   :group 'mode-line-faces)

 (defface darktooth-modeline-three-active
   `((t
      (:foreground ,darktooth-background-orange
       :background ,darktooth-background-0-hard
       :height 120
       :inverse-video nil
       :box (:line-width 6 :color ,darktooth-background-0-hard :style nil))))
   "darktooth modeline inactive three"
   :group 'mode-line-faces)

 (defface darktooth-modeline-three-inactive
   `((t
      (:foreground ,darktooth-muted-orange
       :background ,darktooth-background-1
       :height 120
       :inverse-video nil
       :box (:line-width 6 :color ,darktooth-background-1 :style nil))))
   "darktooth modeline active three"
   :group 'mode-line-faces)

 (defface darktooth-modeline-four-active
   `((t
      (:foreground ,darktooth-black
       :background ,darktooth-background-4
       :height 120
       :inverse-video nil
       :box (:line-width 6 :color ,darktooth-background-4 :style nil))))
   "darktooth modeline active four"
   :group 'mode-line-faces)

 (defface darktooth-modeline-four-inactive
   `((t
      (:foreground ,darktooth-background-4
       :background ,darktooth-black
       :height 120
       :inverse-video nil
       :box (:line-width 6 :color ,darktooth-black :style nil))))
   "darktooth modeline inactive four"
   :group 'mode-line-faces)

 (custom-theme-set-variables 'darktooth
                             `(pos-tip-foreground-color ,darktooth-foreground-0-hard)
                             `(pos-tip-background-color ,darktooth-background-aqua)
                             `(ansi-color-names-vector [,darktooth-background-0-soft
                                                        ,darktooth-neutral-red
                                                        ,darktooth-neutral-green
                                                        ,darktooth-neutral-yellow
                                                        ,darktooth-neutral-blue
                                                        ,darktooth-neutral-purple
                                                        ,darktooth-neutral-cyan
                                                        ,darktooth-foreground-1])
                             `(pdf-view-midnight-colors '(,darktooth-foreground-0 . ,darktooth-background-0))))

(defun darktooth-modeline-one ()
  "Optional modeline style one for darktooth."
  (interactive)
  (set-face-attribute 'mode-line nil
                      :foreground (face-attribute 'darktooth-modeline-two-active :foreground)
                      :background (face-attribute 'darktooth-modeline-two-active :background)
                      :height 120
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'darktooth-modeline-two-active :background) :style nil))
  (set-face-attribute 'mode-line-inactive nil
                      :foreground (face-attribute 'darktooth-modeline-two-inactive :foreground)
                      :background (face-attribute 'darktooth-modeline-two-inactive :background)
                      :height 120
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'darktooth-modeline-two-inactive :background) :style nil)))

(defun darktooth-modeline-two ()
  "Optional modeline style two for darktooth."
  (interactive)
  (set-face-attribute 'mode-line nil
                      :foreground (face-attribute 'darktooth-modeline-one-active :foreground)
                      :background (face-attribute 'darktooth-modeline-one-active :background)
                      :height 120
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'darktooth-modeline-one-active :background) :style nil))
  (set-face-attribute 'mode-line-inactive nil
                      :foreground (face-attribute 'darktooth-modeline-one-inactive :foreground)
                      :background (face-attribute 'darktooth-modeline-one-inactive :background)
                      :height 120
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'darktooth-modeline-one-inactive :background) :style nil)))

(defun darktooth-modeline-three ()
  "Optional modeline style three for darktooth."
  (interactive)
  (set-face-attribute 'mode-line nil
                      :foreground (face-attribute 'darktooth-modeline-three-active :foreground)
                      :background (face-attribute 'darktooth-modeline-three-active :background)
                      :height 120
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'darktooth-modeline-three-active :background) :style nil))
  (set-face-attribute 'mode-line-inactive nil
                      :foreground (face-attribute 'darktooth-modeline-three-inactive :foreground)
                      :background (face-attribute 'darktooth-modeline-three-inactive :background)
                      :height 120
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'darktooth-modeline-three-inactive :background) :style nil)))

(defun darktooth-modeline-four ()
  "Optional modeline style four for darktooth."
  (interactive)
  (set-face-attribute 'mode-line nil
                      :foreground (face-attribute 'darktooth-modeline-four-active :foreground)
                      :background (face-attribute 'darktooth-modeline-four-active :background)
                      :height 120
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'darktooth-modeline-four-active :background) :style nil))
  (set-face-attribute 'mode-line-inactive nil
                      :foreground (face-attribute 'darktooth-modeline-four-inactive :foreground)
                      :background (face-attribute 'darktooth-modeline-four-inactive :background)
                      :height 120
                      :inverse-video nil
                      :box `(:line-width 6 :color ,(face-attribute 'darktooth-modeline-four-inactive :background) :style nil)))

(defalias 'darktooth-modeline 'darktooth-modeline-one)

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'darktooth-darker)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode 1))
;; End:

;;; darktooth-darker-theme.el ends here
