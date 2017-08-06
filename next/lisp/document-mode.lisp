;;;; document-mode.lisp --- document major mode for internet documents

(in-package :next)

(defvar document-mode-hook nil)
(defvar document-mode-map (make-hash-table :test 'equalp))

(defstruct mode
  name
  keymap)

(defun document-mode ()
  "Base mode for interacting with documents"
  ;; (use-local-map wpdl-mode-map)
  ;; (setq major-mode 'wpdl-mode)
  ;; (setq mode-name "Document")
  ;; (run-hooks 'wpdl-mode-hook)

  (make-mode
   :name "Document-Mode"
   :keymap document-mode-map))