;;; "Compiled" snippets and support files for `org-mode'  -*- lexical-binding:t -*-
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '((".prop" "#+todo: ${1:title}\n#+tags: ${2:tags}\n\n$0\n"
                        "set-props" nil nil nil
                        "/home/mary/dots/doom/snippets/org-mode/set-props" nil
                        nil)
                       (".orgtemp"
                        "(\"${1:id}\" \"${2:title}\" ${3:type} (${4:target})\n \"$0\")\n"
                        "org-template" nil nil nil
                        "/home/mary/dots/doom/snippets/org-mode/org-template"
                        nil nil)
                       (".sl" "#+BEGIN_SRC emacs-lisp\n$0\n#+END_SRC\n" "lisp"
                        nil nil nil
                        "/home/mary/dots/doom/snippets/org-mode/code-elisp" nil
                        nil)
                       (".x" "[ ]\n" "checkbox" nil nil nil
                        "/home/mary/dots/doom/snippets/org-mode/checkbox" nil
                        nil)))


;;; Do not edit! File generated at Sat Sep 13 12:27:28 2025
