(asdf:defsystem :cl-dcmtk
  :description "Thin wrapper over DCMTK DICOM libraries"
  :version "0.0.1"
  :author "Kambiz Darabi"
  :mailto "darabi@m-creations.net"
  :license "MIT"
  :depends-on (:cl-dcmtk-bindings))


(asdf:defsystem :cl-dcmtk/wrapper
  :description "Thin wrapper over DCMTK DICOM libraries"
  :depends-on (:alexandria :uiop :cffi :claw)
  :pathname "src/"
  :serial t
  :components ((:file "claw")
               (:module :oflog-includes :pathname "lib/dcmtk/oflog/include/")
               (:module :ofstd-includes :pathname "lib/dcmtk/ofstd/include/")
               (:module :dcmdata-includes :pathname "lib/dcmtk/dcmdata/include/")))
