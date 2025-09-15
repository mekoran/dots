;(global-aggressive-indent-mode 1)
;(add-to-list 'aggressive-indent-excluded-modes 'html-mode)
(setq-default tab-width 4)

(setq doom-theme 'doom-oceanic-next)



(setq org-directory "~/org/")

(setq org-todo-keywords
      '((sequence "TODO(t!)" "DOING(d!)" "|" "DONE(d!)")
        (sequence "ORDERED(!)" "SHIPPED(!)" "|" "COMPLETE(!)")
        (sequence "|" "CANCELED(c@/!)")
        (sequence "WAITING(w@/!)")
        (sequence "BLOCKED(b@/!)")
        ))
(setq org-todo-keyword-faces
      '(("TODO" . org-warning)
        ("ORDERED" . "SlateBlue")
        ("DOING" . "DarkOrchid")
        ("SHIPPED" . "Teal")
        ("BLOCKED" . "Firebrick")
        ("WAITING" . "Teal")
        ("DONE" . "ForestGreen")
        ("COMPLETE" . "ForestGreen")
        ("CANCELED" . "Grey")
        ))

;;(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ("laptop" . ?l)))

(setq org-default-notes-file (concat org-directory "~/org/notes.org"))

(after! org
  (setq org-capture-templates
        (setq org-capture-templates
               '(("t" "Todo" entry (file+headline "~/org/todo.org" "Tasks")
                   "* TODO %?\n %u %a"
                   :empty-lines 0
                   :kill-buffer t)
                  ("j" "Journal" entry (file+datetree "~/org/journal.org")
                   "* %?\nEntered on %U\n >%i\n %a"
                   :empty-lines 0
                   :kill-buffer t)
                  ("s" "Shortcut" table-line (file+headline "~/org/ref-tables.org" "keybinds")
                   "| %? |  |  |")
    ))))
;(setq org-capture-templates-contexts
;      '(("c" ((in-mode . "message-mode")))
;        ("d" (my-context-function (in-mode . "org-mode")))
;       ))

(setq evil-normal-state-cursor '(box "#6699CC"))
(setq evil-insert-state-cursor '(bar "yellow"))
(setq evil-visual-state-cursor 'box)
(setq evil-replace-state-cursor '(hollow "yellow"))

;(keyboard-translate ?\C-d ?\C-x)
;(keyboard-translate ?\C-x ?\C-d)
(global-set-key (kbd "M-t") #'treemacs)
(global-set-key (kbd "M-o") #'other-window)
(global-set-key (kbd "M-d") #'execute-extended-command)
(global-set-key (kbd "C-c c") #'org-capture)
