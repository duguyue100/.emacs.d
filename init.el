;; My emacs configuration file
;; Author: Yuhuang Hu
;; Email : duguyue100@gmail.com

;; For MELPA

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Magit

(global-set-key (kbd "C-x g") 'magit-status)
