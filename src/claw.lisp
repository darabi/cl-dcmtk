(uiop:define-package :dcmtk
  (:use :cl))

(cffi:define-foreign-library libresect
  (t (:default "libresect")))

(defparameter *lib* (cffi:use-foreign-library libresect))


(claw:defwrapper (:cl-dcmtk/wrapper
                  (:headers "dcmtk/dcmdata/dctk.h"
                            "dcmtk/dcmimgle/dcmimage.h")
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu"))
                  (:persistent :cl-dcmtk-binding
                               :asd-path "../cl-dcmtk-bindings.asd"
                               :bindings-path "../bindings/")
                  (:include-definitions "^Dcm.*"))
  :in-package :%dcmtk
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :symbolicate-names (:in-pipeline
                      (:by-removing-prefixes "Dcm" "DCM_" "dcm_")))
