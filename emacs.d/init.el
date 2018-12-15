;;;; key binding

;; a Lisp character constant: '?' followed by the character
;; a Lisp string (escape sequence): '\C', '\t', '\d'
(keyboard-translate ?\C-h ?\C-?)  ; 'C-h' => <DEL> (127)


;; (global-set-key (kbd "C-z") 'shell)  ; example


(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-style "stroustrup")))

;(setq-default major-mode 'text-mode)    ; or fundamental-mode (default)

;;;; frame customization
;; enable if ARG is positive, disable otherwise
(setq frame-title-format "%f")
(menu-bar-mode 0)
(tool-bar-mode 0)
(column-number-mode t)
(line-number-mode t)
;;(global-display-line-numbers-mode 0)
;(set-face-foreground 'line-number "dim gray")           ; #696969
;(set-face-background 'line-number "gray14")             ; #242424
(blink-cursor-mode 0)


(set-face-foreground 'default "gray")                   ; #bebebe
(set-face-background 'default "black")                  ; #000000 
(set-face-foreground 'mode-line "gray")                 ; #bebebe
(set-face-background 'mode-line "gray28")               ; #474747
(set-face-foreground 'mode-line-inactive "dim gray")    ; #696969
(set-face-background 'mode-line-inactive "gray10")      ; #1a1a1a
(set-face-foreground 'fringe "dim gray")                ; #696969
(set-face-background 'fringe "gray10")                  ; #1a1a1a
(set-face-background 'cursor "light gray")


;;
(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backups/"))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))

(setq auto-save-timeout 15)
(setq auto-save-interval 60)


;; font
(set-face-attribute 'default nil :family "Monospace" :height 79)
