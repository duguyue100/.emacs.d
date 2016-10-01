;; My emacs configuration file
;; Author: Yuhuang Hu
;; Email : duguyue100@gmail.com

;; For MELPA

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; setup shell support

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

; start at full screen and turn of toolbar and menu bar

(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq frame-resize-pixelwise t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(exec-path
   (quote
    ("/opt/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/MacPorts/EmacsMac.app/Contents/MacOS/libexec" "/Applications/MacPorts/EmacsMac.app/Contents/MacOS/bin" "/usr/textbin")))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages (quote (exec-path-from-shell magit))))


;; key settings

(if (eq system-type 'darwin)
    ;; set keys for Apple keyboard, for emacs in OS X
    ;(setq mac-command-modifier 'meta) ; make cmd key do Meta
    (setq mac-option-modifier 'meta) ; make opt key do Super
    (setq mac-control-modifier 'control) ; make Control key do Control
    ;(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper
)

(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; font set up

(add-to-list 'default-frame-alist '(font .  "Ubuntu Mono-20" ))

;; Magit

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x C-g") 'magit-dispatch-popup)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
