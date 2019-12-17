;;; packages.el --- Lean Layer packages File for Spacemacs
;;
;; Based on Agda Layer for Spacemacs by:
;; Author: Oliver Charles <ollie@ocharles.org.uk>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst lean-packages
      '((lean-mode :location elpa)
        company
        company-lean
        helm-lean
        golden-ratio))

(defun lean/post-init-company ()
  (spacemacs|add-company-hook lean-mode)
  (push 'company-capf company-backends-lean-mode))

(defun lean/post-init-company-lean ())
(defun lean/post-init-helm-lean ())

(defun lean/init-lean-mode ()
    (use-package lean-mode
      :defer t
      :config
      (progn
        (spacemacs/set-leader-keys-for-major-mode 'lean-mode
	  " "   'company-complete
          "."   'lean-toggle-show-goal
          "d"   'helm-lean-definitions
          "f"   'lean-toggle-next-error
          "g"   'lean-find-definition
          "k"   'quail-show-key
          "l"   'lean-std-exe
          "r"   'lean-hole
          "xr"  'lean-server-restart
          "xs"  'lean-server-switch-version))))

(defun lean/pre-init-golden-ratio ()
  (spacemacs|use-package-add-hook golden-ratio
    :post-config
    (add-to-list 'golden-ratio-exclude-buffer-names
                 "*Lean information*")))
