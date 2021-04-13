(uiop:define-package :dcmtk
  (:use :cl))

(cffi:define-foreign-library libresect
  (t (:default "libresect")))

(defparameter *lib* (cffi:use-foreign-library libresect))

(claw.wrapper:defwrapper (:cl-dcmtk/wrapper
                          (:headers "dcmtk/dcmdata/dctk.h")
                          (:includes :oflog-includes :ofstd-includes
                                     :dcmdata-includes)
                          (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu"
                                     (:includes "config/x86_64-pc-linux-gnu/")))
                          (:persistent :cl-dcmtk-bindings
                           :asd-path "../cl-dcmtk-bindings.asd"
                           :bindings-path "../bindings/")
                          (:include-definitions "^Dcm.*" "^E_.*")
                          (:exclude-definitions "DcmEVR$")
                          (:language :c++))
  :in-package :%dcmtk
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :with-adapter (:static
                 :path "lib/adapter.cxx"))
