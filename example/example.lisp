(cl:defpackage :dcmtk.example
  (:use :cl)
  (:export #:run))
(cl:in-package :dcmtk.example)


(defun badp (of-condi)
  (/= (%dcmtk:bad :const '(:pointer %dcmtk:of-condition) of-condi) 0))


(defun load-file (file-format file-path)
  (iffi:with-intricate-alloc (result %dcmtk:of-condition)
    (iffi:with-intricate-instance (file-name %dcmtk:of-filename
                                             :string file-path
                                             '%dcmtk::of-bool 0)
      (%dcmtk:load-file '(:pointer %dcmtk::of-condition) result
                        '(:pointer %dcmtk::dcm-file-format) file-format
                        '(:pointer %dcmtk::of-filename) file-name
                        '%dcmtk::e-transfer-syntax :unknown
                        '%dcmtk::e-grp-len-encoding :no-change
                        '%dcmtk::uint32 %dcmtk:+dcm-max-read-length+
                        '%dcmtk::e-file-read-mode :auto-detect))
    (not (badp result))))


(defun patient-name (dataset)
  (iffi:with-intricate-alloc (result %dcmtk:of-condition)
    (iffi:with-intricate-instances ((name %dcmtk:of-string)
                                    (patient-name-tag %dcmtk:dcm-tag-key ;; patient-name
                                                      '%dcmtk::uint16 #x0010
                                                      '%dcmtk::uint16 #x0010))
      (%dcmtk:find-and-get-of-string-array
       '(:pointer %dcmtk::of-condition) result
       '(:pointer %dcmtk::dcm-item) dataset
       '(:pointer %dcmtk::dcm-tag-key) patient-name-tag
       '(:pointer %dcmtk::of-string) name
       '%dcmtk::of-bool 0)
      (unless (badp result)
        (%dcmtk:c-str :const '(:pointer %dcmtk::of-string) name)))))


(defun run (file-path)
  (iffi:with-intricate-instances ((file-format %dcmtk:dcm-file-format))
    (unless (load-file file-format file-path)
      (error "Failed to load file ~A" file-path))
    (let ((dataset (%dcmtk:get-dataset '(:pointer %dcmtk::dcm-file-format) file-format)))
      (patient-name dataset))))
