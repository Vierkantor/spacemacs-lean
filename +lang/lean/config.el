;;; config.el --- Lean Layer config File for Spacemacs
;;
;; Copyright (c) 2019 Vierkantor
;;
;; Based on Agda2 Layer for Spacemacs by
;; Author: FreeSalad <freesalad@noreply.git>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; (defvar agda-mode-path 'use-helper
;;  "Indicates the location of the agda-mode package (the file
;; `agda2.el') If `nil', it is assumed to be already available by
;; Emacs. If `use-helper', the `agda-mode' executable is used to
;; find its location.")

(spacemacs|define-jump-handlers agda2-mode lean-find-definition)
(spacemacs|defvar-company-backends lean-mode)
