(uiop:define-package :%dcmtk (:use))
(uiop:define-package :cl-dcmtk-binding~pristine (:use :cl))
(common-lisp:in-package :cl-dcmtk-binding~pristine)

(defparameter %dcmtk::+dcm-tag-error-tag-name+ "Unknown Tag & Data")

(defparameter %dcmtk::+dcm-variable-vm+ -1)

(cffi:defcenum (%dcmtk::dcm-dict-range-restriction :unsigned-int)
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:42:6"
               (:unspecified 0)
               (:odd 1)
               (:even 2))

(cffi:defcenum (%dcmtk::dcm-evr :unsigned-int)
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:120:6"
               (:ae 0)
               (:as 1)
               (:at 2)
               (:cs 3)
               (:da 4)
               (:ds 5)
               (:dt 6)
               (:fl 7)
               (:fd 8)
               (:is 9)
               (:lo 10)
               (:lt 11)
               (:ob 12)
               (:od 13)
               (:of 14)
               (:ol 15)
               (:ov 16)
               (:ow 17)
               (:pn 18)
               (:sh 19)
               (:sl 20)
               (:sq 21)
               (:ss 22)
               (:st 23)
               (:sv 24)
               (:tm 25)
               (:uc 26)
               (:ui 27)
               (:ul 28)
               (:ur 29)
               (:us 30)
               (:ut 31)
               (:uv 32)
               (:ox 33)
               (:px 34)
               (:xs 35)
               (:lt 36)
               (:na 37)
               (:up 38)
               (:item 39)
               (:metainfo 40)
               (:dataset 41)
               (:file-format 42)
               (:dicom-dir 43)
               (:dir-record 44)
               (:pixel-sq 45)
               (:pixel-item 46)
               (:unknown 47)
               (:un 48)
               (:pixel-data 49)
               (:overlay-data 50)
               (:unknown2b 51))

(cffi:defcenum (%dcmtk::dcm-input-stream-factory-type :unsigned-int)
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:116:6"
               (:file-stream-factory 0)
               (:temp-file-stream-factory 1))

(iffi:deficlass (%dcmtk::dcm-age-string :size-reporter
                 "__claw_sizeof_DcmAgeString" :alignment-reporter
                 "__claw_alignof_DcmAgeString" :constructor
                 %dcmtk::dcm-age-string :destructor
                 %dcmtk::~dcm-age-string)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:33:28")

(iffi:defifun ("__claw__ZN12DcmAgeStringC1ERKS_"
               %dcmtk::dcm-age-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:50:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-age-string))
              (%dcmtk::old (:pointer %dcmtk::dcm-age-string)))

(iffi:deficlass (%dcmtk::dcm-tag :size-reporter
                 "__claw_sizeof_DcmTag" :alignment-reporter
                 "__claw_alignof_DcmTag" :constructor %dcmtk::dcm-tag
                 :destructor %dcmtk::~dcm-tag)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:56:28")

(iffi:defitype %dcmtk::uint32
               :unsigned-int
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:82:25")

(iffi:defifun ("__claw__ZN12DcmAgeStringC1ERK6DcmTagj"
               %dcmtk::dcm-age-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:44:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-age-string))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:deficlass (%dcmtk::of-condition :size-reporter
                 "__claw_sizeof_OFCondition" :alignment-reporter
                 "__claw_alignof_OFCondition")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/ofcond.h:166:26")

(iffi:deficlass (%dcmtk::of-string :size-reporter
                 "__claw_sizeof_OFString" :alignment-reporter
                 "__claw_alignof_OFString")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/ofstring.h:80:26")

(iffi:defifun ("__claw__ZN12DcmAgeString16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-age-string+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:107:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string)))

(iffi:defitype %dcmtk::of-bool
               :bool
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:166:14")

(iffi:defifun ("__claw__ZN12DcmAgeString10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:95:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-age-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::dcm-object :size-reporter
                 "__claw_sizeof_DcmObject" :alignment-reporter
                 "__claw_alignof_DcmObject")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:234:28")

(iffi:defifun ("__claw__ZNK12DcmAgeString5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:65:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-age-string)))

(iffi:defifun ("__claw__ZN12DcmAgeString8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:82:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-age-string))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK12DcmAgeString5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:87:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-age-string)))

(iffi:defifun ("__claw__ZN12DcmAgeStringaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-age-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:60:19"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-age-string))
              (%dcmtk::obj (:pointer %dcmtk::dcm-age-string)))

(iffi:defifun ("__claw__ZN12DcmAgeStringD1Ev"
               %dcmtk::~dcm-age-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvras.h:54:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-age-string)))

(iffi:deficlass (%dcmtk::dcm-application-entity :size-reporter
                 "__claw_sizeof_DcmApplicationEntity"
                 :alignment-reporter
                 "__claw_alignof_DcmApplicationEntity" :constructor
                 %dcmtk::dcm-application-entity :destructor
                 %dcmtk::~dcm-application-entity)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:33:28")

(iffi:defifun ("__claw__ZN20DcmApplicationEntityC1ERKS_"
               %dcmtk::dcm-application-entity)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:50:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity))
              (%dcmtk::old (:pointer %dcmtk::dcm-application-entity)))

(iffi:defifun ("__claw__ZN20DcmApplicationEntityC1ERK6DcmTagj"
               %dcmtk::dcm-application-entity)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:44:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN20DcmApplicationEntity16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-application-entity+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:129:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN20DcmApplicationEntity10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:95:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK20DcmApplicationEntity5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:65:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity)))

(iffi:defifun ("__claw__ZN20DcmApplicationEntity8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:82:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN20DcmApplicationEntity11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK20DcmApplicationEntity5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:87:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity)))

(iffi:defifun ("__claw__ZN20DcmApplicationEntity16isUniversalMatchEbb"
               %dcmtk::is-universal-match)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:117:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity))
              (%dcmtk::normalize %dcmtk::of-bool)
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK20DcmApplicationEntity7matchesERK8OFStringS2_b"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:112:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity))
              (%dcmtk::key (:pointer %dcmtk::of-string))
              (%dcmtk::candidate (:pointer %dcmtk::of-string))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN20DcmApplicationEntityaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-application-entity)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:60:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity))
              (%dcmtk::obj (:pointer %dcmtk::dcm-application-entity)))

(iffi:defifun ("__claw__ZN20DcmApplicationEntityD1Ev"
               %dcmtk::~dcm-application-entity)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrae.h:54:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-application-entity)))

(iffi:deficlass (%dcmtk::dcm-attribute-tag :size-reporter
                 "__claw_sizeof_DcmAttributeTag" :alignment-reporter
                 "__claw_alignof_DcmAttributeTag" :constructor
                 %dcmtk::dcm-attribute-tag :destructor
                 %dcmtk::~dcm-attribute-tag)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:36:28")

(iffi:defifun ("__claw__ZN15DcmAttributeTagC1ERKS_"
               %dcmtk::dcm-attribute-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:55:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::old (:pointer %dcmtk::dcm-attribute-tag)))

(iffi:defifun ("__claw__ZN15DcmAttributeTagC1ERK6DcmTag"
               %dcmtk::dcm-attribute-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:50:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN15DcmAttributeTag16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-attribute-tag+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:256:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN15DcmAttributeTag10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:121:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK15DcmAttributeTag5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:91:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag)))

(iffi:deficlass (%dcmtk::dcm-element :size-reporter
                 "__claw_sizeof_DcmElement" :alignment-reporter
                 "__claw_alignof_DcmElement")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:39:28")

(iffi:defifun ("__claw__ZNK15DcmAttributeTag7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:85:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN15DcmAttributeTag8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:108:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN15DcmAttributeTag17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:132:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag)))

(iffi:defifun ("__claw__ZN15DcmAttributeTag11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:190:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::dcm-tag-key :size-reporter
                 "__claw_sizeof_DcmTagKey" :alignment-reporter
                 "__claw_alignof_DcmTagKey" :constructor
                 %dcmtk::dcm-tag-key :destructor
                 %dcmtk::~dcm-tag-key)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:40:28")

(iffi:defifun ("__claw__ZN15DcmAttributeTag9getTagValER9DcmTagKeym"
               %dcmtk::get-tag-val)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:170:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::tag-val (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::pos :unsigned-long))

(iffi:defitype %dcmtk::uint16
               :unsigned-short
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:94:25")

(iffi:defifun ("__claw__ZN15DcmAttributeTag14getUint16ArrayERPt"
               %dcmtk::get-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:180:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::uint-vals
               (:pointer (:pointer %dcmtk::uint16))))

(iffi:defifun ("__claw__ZN15DcmAttributeTag5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:127:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag)))

(iffi:defifun ("__claw__ZNK15DcmAttributeTag5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:113:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag)))

(iffi:defifun ("__claw__ZN15DcmAttributeTag16isUniversalMatchEbb"
               %dcmtk::is-universal-match)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:244:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::normalize %dcmtk::of-bool)
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN15DcmAttributeTagaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-attribute-tag)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:65:22"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::obj (:pointer %dcmtk::dcm-attribute-tag)))

(iffi:deficlass (%dcmtk::std+basic-ostream<char> :size-reporter
                 "__claw_sizeof_std_basic_ostream_char_"
                 :alignment-reporter
                 "__claw_alignof_std_basic_ostream_char_")
                nil
                "/usr/include/c++/v1/ostream:1101:64")

(iffi:defitype %dcmtk::std+ostream
               %dcmtk::std+basic-ostream<char>
               "/usr/include/c++/v1/iosfwd:160:38")

(iffi:defitype %dcmtk::size-t
               :unsigned-long
               "/usr/lib/clang/11.1.0/include/stddef.h:46:23")

(iffi:defifun ("__claw__ZN15DcmAttributeTag5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:143:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN15DcmAttributeTag9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:221:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN15DcmAttributeTag9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:234:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN15DcmAttributeTag9putTagValERK9DcmTagKeym"
               %dcmtk::put-tag-val)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:199:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::tag-val (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN15DcmAttributeTag14putUint16ArrayEPKtm"
               %dcmtk::put-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:211:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::uint-vals (:pointer %dcmtk::uint16))
              (%dcmtk::num-uints :unsigned-long))

(iffi:defifun ("__claw__ZN15DcmAttributeTag6verifyEb" %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:241:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::dcm-json-format :size-reporter nil
                 :alignment-reporter nil)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:39:7")

(iffi:defifun ("__claw__ZN15DcmAttributeTag9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:162:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN15DcmAttributeTag8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:154:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN15DcmAttributeTagD1Ev"
               %dcmtk::~dcm-attribute-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrat.h:59:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-attribute-tag)))

(iffi:deficlass (%dcmtk::dcm-byte-string :size-reporter
                 "__claw_sizeof_DcmByteString" :alignment-reporter
                 "__claw_alignof_DcmByteString" :constructor
                 %dcmtk::dcm-byte-string :destructor
                 %dcmtk::~dcm-byte-string)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:54:28")

(cffi:defcenum (%dcmtk::dcm-byte-string+e-string-mode :unsigned-int)
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:347:10"
               (:machine-string 0)
               (:dicom-string 1)
               (:unknown-string 2))

(iffi:defifun ("__claw__ZN13DcmByteStringC1ERKS_"
               %dcmtk::dcm-byte-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:72:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::old (:pointer %dcmtk::dcm-byte-string)))

(iffi:defifun ("__claw__ZN13DcmByteStringC1ERK6DcmTag"
               %dcmtk::dcm-byte-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:67:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN13DcmByteString5clearEv" %dcmtk::clear)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:135:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string)))

(iffi:defifun ("__claw__ZNK13DcmByteString5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:108:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string)))

(iffi:defifun ("__claw__ZNK13DcmByteString7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:102:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN13DcmByteString26containsExtendedCharactersEb"
               %dcmtk::contains-extended-characters)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:287:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::check-all-strings %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmByteString8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:125:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(defparameter %dcmtk::+exs-unknown+ -1)

(defparameter %dcmtk::+exs-little-endian-implicit+ 0)

(defparameter %dcmtk::+exs-big-endian-implicit+ 1)

(defparameter %dcmtk::+exs-little-endian-explicit+ 2)

(defparameter %dcmtk::+exs-big-endian-explicit+ 3)

(defparameter %dcmtk::+exs-jpeg-process1+ 4)

(defparameter %dcmtk::+exs-jpeg-process2-4+ 5)

(defparameter %dcmtk::+exs-jpeg-process3-5+ 6)

(defparameter %dcmtk::+exs-jpeg-process6-8+ 7)

(defparameter %dcmtk::+exs-jpeg-process7-9+ 8)

(defparameter %dcmtk::+exs-jpeg-process10-12+ 9)

(defparameter %dcmtk::+exs-jpeg-process11-13+ 10)

(defparameter %dcmtk::+exs-jpeg-process14+ 11)

(defparameter %dcmtk::+exs-jpeg-process15+ 12)

(defparameter %dcmtk::+exs-jpeg-process16-18+ 13)

(defparameter %dcmtk::+exs-jpeg-process17-19+ 14)

(defparameter %dcmtk::+exs-jpeg-process20-22+ 15)

(defparameter %dcmtk::+exs-jpeg-process21-23+ 16)

(defparameter %dcmtk::+exs-jpeg-process24-26+ 17)

(defparameter %dcmtk::+exs-jpeg-process25-27+ 18)

(defparameter %dcmtk::+exs-jpeg-process28+ 19)

(defparameter %dcmtk::+exs-jpeg-process29+ 20)

(defparameter %dcmtk::+exs-jpeg-process14sv1+ 21)

(defparameter %dcmtk::+exs-rle-lossless+ 22)

(defparameter %dcmtk::+exs-deflated-little-endian-explicit+ 23)

(defparameter %dcmtk::+exs-jpegls-lossless+ 24)

(defparameter %dcmtk::+exs-jpegls-lossy+ 25)

(defparameter %dcmtk::+exs-jpeg2000lossless-only+ 26)

(defparameter %dcmtk::+exs-jpeg2000+ 27)

(defparameter %dcmtk::+exs-jpeg2000multicomponent-lossless-only+ 28)

(defparameter %dcmtk::+exs-jpeg2000multicomponent+ 29)

(defparameter %dcmtk::+exs-jpip-referenced+ 30)

(defparameter %dcmtk::+exs-jpip-referenced-deflate+ 31)

(defparameter %dcmtk::+exs-mpeg2main-profile-at-main-level+ 32)

(defparameter %dcmtk::+exs-mpeg2main-profile-at-high-level+ 33)

(defparameter %dcmtk::+exs-mpeg4high-profile-level4-1+ 34)

(defparameter %dcmtk::+exs-mpeg4b-dcompatible-high-profile-level4-1+ 35)

(defparameter %dcmtk::+exs-mpeg4high-profile-level4-2-for2d-video+ 36)

(defparameter %dcmtk::+exs-mpeg4high-profile-level4-2-for3d-video+ 37)

(defparameter %dcmtk::+exs-mpeg4stereo-high-profile-level4-2+ 38)

(defparameter %dcmtk::+exs-hevc-main-profile-level5-1+ 39)

(defparameter %dcmtk::+exs-hevc-main10profile-level5-1+ 40)

(defparameter %dcmtk::+exs-private-ge-lei-with-big-endian-pixel-data+ 41)

(iffi:defitype %dcmtk::e-transfer-syntax
               %dcmtk::|C:@EA@E-TRANSFER-SYNTAX|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:124:3")

(defparameter %dcmtk::+eet-explicit-length+ 0)

(defparameter %dcmtk::+eet-undefined-length+ 1)

(iffi:defitype %dcmtk::e-encoding-type
               %dcmtk::|C:@EA@E-ENCODING-TYPE|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctypes.h:96:3")

(iffi:defifun ("__claw__ZN13DcmByteString9getLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::get-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:161:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN13DcmByteString17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:146:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string)))

(iffi:defifun ("__claw__ZN13DcmByteString11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:209:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmByteString16getOFStringArrayER8OFStringb"
               %dcmtk::get-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:219:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmByteString13getRealLengthEv"
               %dcmtk::get-real-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:152:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string)))

(iffi:defifun ("__claw__ZN13DcmByteString9getStringERPc"
               %dcmtk::get-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:228:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::string-val (:pointer :string)))

(iffi:defifun ("__claw__ZN13DcmByteString9getStringERPcRj"
               %dcmtk::get-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:239:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::string-val (:pointer :string))
              (%dcmtk::string-len (:pointer %dcmtk::uint32)))

(iffi:defifun ("__claw__ZN13DcmByteString5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:140:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string)))

(iffi:defifun ("__claw__ZNK13DcmByteString5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:130:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string)))

(iffi:defifun ("__claw__ZNK13DcmByteString32isAffectedBySpecificCharacterSetEv"
               %dcmtk::is-affected-by-specific-character-set
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:293:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string)))

(iffi:defifun ("__claw__ZN13DcmByteString7isEmptyEb"
               %dcmtk::is-empty)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:299:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmByteString7matchesERK10DcmElementb"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:310:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::candidate (:pointer %dcmtk::dcm-element))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmByteString7matchesERK8OFStringS2_b"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:327:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::key (:pointer %dcmtk::of-string))
              (%dcmtk::candidate (:pointer %dcmtk::of-string))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmByteStringaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-byte-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:82:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::obj (:pointer %dcmtk::dcm-byte-string)))

(iffi:defifun ("__claw__ZN13DcmByteString5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:173:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN13DcmByteString16putOFStringAtPosERK8OFStringm"
               %dcmtk::put-of-string-at-pos)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:255:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN13DcmByteString9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:248:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN13DcmByteString9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:266:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN13DcmByteString6verifyEb" %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:275:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::dcm-output-stream :size-reporter
                 "__claw_sizeof_DcmOutputStream" :alignment-reporter
                 "__claw_alignof_DcmOutputStream" :destructor
                 %dcmtk::~dcm-output-stream)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:112:28")

(iffi:deficlass (%dcmtk::dcm-write-cache :size-reporter nil
                 :alignment-reporter nil)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:42:7")

(iffi:defifun ("__claw__ZN13DcmByteString5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:186:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN13DcmByteString9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:306:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN13DcmByteString20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:198:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN13DcmByteStringD1Ev"
               %dcmtk::~dcm-byte-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcbytstr.h:76:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-byte-string)))

(iffi:deficlass (%dcmtk::dcm-char-string :size-reporter
                 "__claw_sizeof_DcmCharString" :alignment-reporter
                 "__claw_alignof_DcmCharString" :constructor
                 %dcmtk::dcm-char-string :destructor
                 %dcmtk::~dcm-char-string)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:48:28")

(iffi:defifun ("__claw__ZN13DcmCharStringC1ERKS_"
               %dcmtk::dcm-char-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:65:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::old (:pointer %dcmtk::dcm-char-string)))

(iffi:defifun ("__claw__ZN13DcmCharStringC1ERK6DcmTagj"
               %dcmtk::dcm-char-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:59:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZNK13DcmCharString5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:80:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string)))

(iffi:defifun ("__claw__ZN13DcmCharString26containsExtendedCharactersEb"
               %dcmtk::contains-extended-characters)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:118:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::check-all-strings %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::dcm-specific-character-set :size-reporter
                 nil :alignment-reporter nil)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:43:7")

(iffi:defifun ("__claw__ZN13DcmCharString19convertCharacterSetER23DcmSpecificCharacterSet"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:131:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::converter
               (:pointer %dcmtk::dcm-specific-character-set)))

(iffi:defifun ("__claw__ZN13DcmCharString8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:97:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK13DcmCharString32isAffectedBySpecificCharacterSetEv"
               %dcmtk::is-affected-by-specific-character-set
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:124:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string)))

(iffi:defifun ("__claw__ZN13DcmCharString16isUniversalMatchEbb"
               %dcmtk::is-universal-match)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:150:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::normalize %dcmtk::of-bool)
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmCharString7matchesERK8OFStringS2_b"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:145:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::key (:pointer %dcmtk::of-string))
              (%dcmtk::candidate (:pointer %dcmtk::of-string))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmCharStringaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-char-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:75:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::obj (:pointer %dcmtk::dcm-char-string)))

(iffi:defifun ("__claw__ZN13DcmCharString6verifyEb" %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:108:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmCharString9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:138:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN13DcmCharStringD1Ev"
               %dcmtk::~dcm-char-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcchrstr.h:69:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-char-string)))

(iffi:deficlass (%dcmtk::dcm-code-string :size-reporter
                 "__claw_sizeof_DcmCodeString" :alignment-reporter
                 "__claw_alignof_DcmCodeString" :constructor
                 %dcmtk::dcm-code-string :destructor
                 %dcmtk::~dcm-code-string)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:33:28")

(iffi:defifun ("__claw__ZN13DcmCodeStringC1ERKS_"
               %dcmtk::dcm-code-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:50:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string))
              (%dcmtk::old (:pointer %dcmtk::dcm-code-string)))

(iffi:defifun ("__claw__ZN13DcmCodeStringC1ERK6DcmTagj"
               %dcmtk::dcm-code-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:44:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN13DcmCodeString16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-code-string+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:143:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN13DcmCodeString7checkVRERK8OFStringPmb"
               %dcmtk::dcm-code-string+check-vr)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:132:19"
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::pos (:pointer %dcmtk::size-t))
              (%dcmtk::check-length %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmCodeString10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:95:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmCodeString5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:65:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string)))

(iffi:defifun ("__claw__ZN13DcmCodeString8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:82:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN13DcmCodeString11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmCodeString5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:87:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string)))

(iffi:defifun ("__claw__ZN13DcmCodeString16isUniversalMatchEbb"
               %dcmtk::is-universal-match)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:117:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string))
              (%dcmtk::normalize %dcmtk::of-bool)
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmCodeString7matchesERK8OFStringS2_b"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:112:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string))
              (%dcmtk::key (:pointer %dcmtk::of-string))
              (%dcmtk::candidate (:pointer %dcmtk::of-string))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmCodeStringaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-code-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:60:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string))
              (%dcmtk::obj (:pointer %dcmtk::dcm-code-string)))

(iffi:defifun ("__claw__ZN13DcmCodeStringD1Ev"
               %dcmtk::~dcm-code-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrcs.h:54:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-code-string)))

(iffi:deficlass (%dcmtk::dcm-codec :size-reporter nil
                 :alignment-reporter nil)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:29:7")

(iffi:deficlass (%dcmtk::dcm-codec-list :size-reporter nil
                 :alignment-reporter nil)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:30:7")

(iffi:deficlass (%dcmtk::dcm-consumer :size-reporter
                 "__claw_sizeof_DcmConsumer" :alignment-reporter
                 "__claw_alignof_DcmConsumer")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:34:28")

(iffi:defitype %dcmtk::offile-off-t
               :long
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/offile.h:81:17")

(iffi:defifun ("__claw__ZNK11DcmConsumer5availEv" %dcmtk::avail
               :non-mutating t)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:69:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-consumer)))

(iffi:defifun ("__claw__ZN11DcmConsumer5flushEv" %dcmtk::flush)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:83:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-consumer)))

(iffi:defifun ("__claw__ZNK11DcmConsumer4goodEv" %dcmtk::good
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:47:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-consumer)))

(iffi:defifun ("__claw__ZNK11DcmConsumer9isFlushedEv"
               %dcmtk::is-flushed :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:60:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-consumer)))

(iffi:defifun ("__claw__ZNK11DcmConsumer6statusEv" %dcmtk::status
               :non-mutating t)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:53:23"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-consumer)))

(iffi:defifun ("__claw__ZN11DcmConsumer5writeEPKvl" %dcmtk::write)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:76:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-consumer))
              (%dcmtk::buf (:pointer :void))
              (%dcmtk::buflen %dcmtk::offile-off-t))

(iffi:deficlass (%dcmtk::dcm-data-dictionary :size-reporter
                 "__claw_sizeof_DcmDataDictionary"
                 :alignment-reporter
                 "__claw_alignof_DcmDataDictionary" :constructor
                 %dcmtk::dcm-data-dictionary :destructor
                 %dcmtk::~dcm-data-dictionary)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:55:28")

(iffi:defifun ("__claw__ZN17DcmDataDictionaryC1Ebb"
               %dcmtk::dcm-data-dictionary)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:65:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary))
              (%dcmtk::load-builtin %dcmtk::of-bool)
              (%dcmtk::load-external %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::dcm-dict-entry :size-reporter
                 "__claw_sizeof_DcmDictEntry" :alignment-reporter
                 "__claw_alignof_DcmDictEntry" :constructor
                 %dcmtk::dcm-dict-entry :destructor
                 %dcmtk::~dcm-dict-entry)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:58:28")

(iffi:defifun ("__claw__ZN17DcmDataDictionary8addEntryEP12DcmDictEntry"
               %dcmtk::add-entry)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:139:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary))
              (%dcmtk::entry (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZN17DcmDataDictionary5clearEv" %dcmtk::clear)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:130:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZNK17DcmDataDictionary9findEntryERK9DcmTagKeyPKc"
               %dcmtk::find-entry :non-mutating t)
              (:pointer %dcmtk::dcm-dict-entry)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:119:25"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::priv-creator :string))

(iffi:defifun ("__claw__ZNK17DcmDataDictionary9findEntryEPKc"
               %dcmtk::find-entry :non-mutating t)
              (:pointer %dcmtk::dcm-dict-entry)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:127:25"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary))
              (%dcmtk::name :string))

(iffi:defifun ("__claw__ZNK17DcmDataDictionary18isDictionaryLoadedEv"
               %dcmtk::is-dictionary-loaded :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:73:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZN17DcmDataDictionary14loadDictionaryEPKcb"
               %dcmtk::load-dictionary)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:111:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary))
              (%dcmtk::file-name :string)
              (%dcmtk::error-if-absent %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::dcm-hash-dict-iterator :size-reporter
                 "__claw_sizeof_DcmHashDictIterator"
                 :alignment-reporter
                 "__claw_alignof_DcmHashDictIterator" :constructor
                 %dcmtk::dcm-hash-dict-iterator :destructor
                 %dcmtk::~dcm-hash-dict-iterator)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:115:28")

(iffi:defifun ("__claw__ZN17DcmDataDictionary11normalBeginEv"
               %dcmtk::normal-begin)
              (:pointer %dcmtk::dcm-hash-dict-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:144:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZN17DcmDataDictionary9normalEndEv"
               %dcmtk::normal-end)
              (:pointer %dcmtk::dcm-hash-dict-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:147:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZNK17DcmDataDictionary15numberOfEntriesEv"
               %dcmtk::number-of-entries :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:84:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZNK17DcmDataDictionary24numberOfNormalTagEntriesEv"
               %dcmtk::number-of-normal-tag-entries :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:76:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZNK17DcmDataDictionary27numberOfRepeatingTagEntriesEv"
               %dcmtk::number-of-repeating-tag-entries :non-mutating
               t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:79:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZNK17DcmDataDictionary23numberOfSkeletonEntriesEv"
               %dcmtk::number-of-skeleton-entries :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:93:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZN17DcmDataDictionary18reloadDictionariesEbb"
               %dcmtk::reload-dictionaries)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:102:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary))
              (%dcmtk::load-builtin %dcmtk::of-bool)
              (%dcmtk::load-external %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::of-iterator<dcm-dict-entry*> :size-reporter
                 "__claw_sizeof_OFIterator_DcmDictEntry__"
                 :alignment-reporter
                 "__claw_alignof_OFIterator_DcmDictEntry__")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oflist.h:169:7")

(iffi:defitype %dcmtk::dcm-dict-entry-list-iterator
               %dcmtk::of-iterator<dcm-dict-entry*>
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:34:40")

(iffi:defifun ("__claw__ZN17DcmDataDictionary14repeatingBeginEv"
               %dcmtk::repeating-begin)
              (:pointer %dcmtk::dcm-dict-entry-list-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:150:30"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-dict-entry-list-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZN17DcmDataDictionary12repeatingEndEv"
               %dcmtk::repeating-end)
              (:pointer %dcmtk::dcm-dict-entry-list-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:153:30"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-dict-entry-list-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:defifun ("__claw__ZN17DcmDataDictionaryD1Ev"
               %dcmtk::~dcm-data-dictionary)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdict.h:68:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-data-dictionary)))

(iffi:deficlass (%dcmtk::dcm-dataset :size-reporter
                 "__claw_sizeof_DcmDataset" :alignment-reporter
                 "__claw_alignof_DcmDataset" :constructor
                 %dcmtk::dcm-dataset :destructor
                 %dcmtk::~dcm-dataset)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:40:28")

(iffi:defifun ("__claw__ZN10DcmDatasetC1Ev" %dcmtk::dcm-dataset)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:48:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZN10DcmDatasetC1ERKS_" %dcmtk::dcm-dataset)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:53:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::old (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZN10DcmDataset17calcElementLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::calc-element-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:148:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN10DcmDataset12canWriteXferE16E_TransferSyntaxS0_"
               %dcmtk::can-write-xfer)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:157:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::old-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZNK10DcmDataset28checkForSpecificCharacterSetEv"
               %dcmtk::check-for-specific-character-set :non-mutating
               t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:381:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:deficlass (%dcmtk::dcm-representation-parameter :size-reporter
                 "__claw_sizeof_DcmRepresentationParameter"
                 :alignment-reporter
                 "__claw_alignof_DcmRepresentationParameter")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:43:28")

(iffi:defifun ("__claw__ZN10DcmDataset20chooseRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameter"
               %dcmtk::choose-representation)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:354:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZN10DcmDataset5clearEv" %dcmtk::clear)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:95:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZNK10DcmDataset5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:68:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZN10DcmDataset8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:85:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK10DcmDataset14getCurrentXferEv"
               %dcmtk::get-current-xfer :non-mutating t)
              %dcmtk::e-transfer-syntax
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:122:22"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZNK10DcmDataset15getOriginalXferEv"
               %dcmtk::get-original-xfer :non-mutating t)
              %dcmtk::e-transfer-syntax
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:110:22"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZN10DcmDataset17hasRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameter"
               %dcmtk::has-representation)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:364:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZNK10DcmDataset5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:90:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:deficlass (%dcmtk::of-filename :size-reporter
                 "__claw_sizeof_OFFilename" :alignment-reporter
                 "__claw_alignof_OFFilename")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/offile.h:124:26")

(defparameter %dcmtk::+egl-no-change+ 0)

(defparameter %dcmtk::+egl-without-gl+ 1)

(defparameter %dcmtk::+egl-with-gl+ 2)

(defparameter %dcmtk::+egl-recalc-gl+ 3)

(iffi:defitype %dcmtk::e-grp-len-encoding
               %dcmtk::|C:@EA@E-GRP-LEN-ENCODING|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctypes.h:109:3")

(iffi:defifun ("__claw__ZN10DcmDataset8loadFileERK10OFFilename16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::load-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:297:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::file-name (:pointer %dcmtk::of-filename))
              (%dcmtk::read-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::group-length %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN10DcmDataset16loadFileUntilTagERK10OFFilename16E_TransferSyntax16E_GrpLenEncodingjRK9DcmTagKey"
               %dcmtk::load-file-until-tag)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:317:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::file-name (:pointer %dcmtk::of-filename))
              (%dcmtk::read-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::group-length %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32)
              (%dcmtk::stop-parsing-at-element
               (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN10DcmDatasetaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-dataset)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:63:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::obj (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZN10DcmDataset5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:140:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:deficlass (%dcmtk::dcm-input-stream :size-reporter
                 "__claw_sizeof_DcmInputStream" :alignment-reporter
                 "__claw_alignof_DcmInputStream")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:156:28")

(iffi:defifun ("__claw__ZN10DcmDataset4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:175:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN10DcmDataset12readUntilTagER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingjRK9DcmTagKey"
               %dcmtk::read-until-tag)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:198:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32)
              (%dcmtk::stop-parsing-at-element
               (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN10DcmDataset34removeAllButCurrentRepresentationsEv"
               %dcmtk::remove-all-but-current-representations)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:374:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZN10DcmDataset35removeAllButOriginalRepresentationsEv"
               %dcmtk::remove-all-but-original-representations)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:369:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZN10DcmDataset19removeInvalidGroupsEb"
               %dcmtk::remove-invalid-groups)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:103:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::cmd-set %dcmtk::of-bool))

(defparameter %dcmtk::+epd-no-change+ 0)

(defparameter %dcmtk::+epd-without-padding+ 1)

(defparameter %dcmtk::+epd-with-padding+ 2)

(iffi:defitype %dcmtk::e-padding-encoding
               %dcmtk::|C:@EA@E-PADDING-ENCODING|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctypes.h:119:3")

(iffi:defifun ("__claw__ZN10DcmDataset8saveFileERK10OFFilename16E_TransferSyntax14E_EncodingType16E_GrpLenEncoding17E_PaddingEncodingjj"
               %dcmtk::save-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:337:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::file-name (:pointer %dcmtk::of-filename))
              (%dcmtk::write-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::encoding-type %dcmtk::e-encoding-type)
              (%dcmtk::group-length %dcmtk::e-grp-len-encoding)
              (%dcmtk::pad-encoding %dcmtk::e-padding-encoding)
              (%dcmtk::pad-length %dcmtk::uint32)
              (%dcmtk::sub-pad-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN10DcmDataset18updateOriginalXferEv"
               %dcmtk::update-original-xfer)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:131:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:defifun ("__claw__ZN10DcmDataset5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:211:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN10DcmDataset5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache16E_GrpLenEncoding17E_PaddingEncodingjjj"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:245:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache))
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::padenc %dcmtk::e-padding-encoding)
              (%dcmtk::padlen %dcmtk::uint32)
              (%dcmtk::sub-padlen %dcmtk::uint32)
              (%dcmtk::instance-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN10DcmDataset9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:281:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN10DcmDataset20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:262:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN10DcmDataset8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:273:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN10DcmDatasetD1Ev" %dcmtk::~dcm-dataset)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdatset.h:57:13"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dataset)))

(iffi:deficlass (%dcmtk::dcm-date :size-reporter
                 "__claw_sizeof_DcmDate" :alignment-reporter
                 "__claw_alignof_DcmDate" :constructor
                 %dcmtk::dcm-date :destructor %dcmtk::~dcm-date)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:33:28")

(iffi:defifun ("__claw__ZN7DcmDateC1ERKS_" %dcmtk::dcm-date)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:50:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::old (:pointer %dcmtk::dcm-date)))

(iffi:defifun ("__claw__ZN7DcmDateC1ERK6DcmTagj" %dcmtk::dcm-date)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:44:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN7DcmDate5checkEPKcmb"
               %dcmtk::dcm-date+check)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:274:19"
              (%dcmtk::dicom-date :string)
              (%dcmtk::dicom-date-size %dcmtk::size-t)
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmDate5checkEPKcm"
               %dcmtk::dcm-date+check)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:264:19"
              (%dcmtk::dicom-date :string)
              (%dcmtk::dicom-date-size %dcmtk::size-t))

(iffi:defifun ("__claw__ZN7DcmDate16checkStringValueERK8OFStringS2_b"
               %dcmtk::dcm-date+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:286:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmDate10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:95:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK7DcmDate5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:65:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date)))

(iffi:defifun ("__claw__ZNK7DcmDate18combinationMatchesERK10DcmElementS2_S2_"
               %dcmtk::combination-matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:159:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::key-second (:pointer %dcmtk::dcm-element))
              (%dcmtk::candidate-first
               (:pointer %dcmtk::dcm-element))
              (%dcmtk::candidate-second
               (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN7DcmDate8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:82:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN7DcmDate14getCurrentDateER8OFString"
               %dcmtk::dcm-date+get-current-date)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:172:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date (:pointer %dcmtk::of-string)))

(iffi:deficlass (%dcmtk::of-date :size-reporter
                 "__claw_sizeof_OFDate" :alignment-reporter
                 "__claw_alignof_OFDate")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/ofdate.h:44:26")

(iffi:defifun ("__claw__ZN7DcmDate22getDicomDateFromOFDateERK6OFDateR8OFString"
               %dcmtk::dcm-date+get-dicom-date-from-of-date)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:181:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::date-value (:pointer %dcmtk::of-date))
              (%dcmtk::dicom-date (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN7DcmDate19getISOFormattedDateER8OFStringmb"
               %dcmtk::get-iso-formatted-date)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:146:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::formatted-date (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmDate29getISOFormattedDateFromStringERK8OFStringRS0_b"
               %dcmtk::dcm-date+get-iso-formatted-date-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:253:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date (:pointer %dcmtk::of-string))
              (%dcmtk::formatted-date (:pointer %dcmtk::of-string))
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmDate9getOFDateER6OFDatemb"
               %dcmtk::get-of-date)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:131:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::date-value (:pointer %dcmtk::of-date))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmDate19getOFDateFromStringERK8OFStringR6OFDateb"
               %dcmtk::dcm-date+get-of-date-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:207:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date (:pointer %dcmtk::of-string))
              (%dcmtk::date-value (:pointer %dcmtk::of-date))
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmDate19getOFDateFromStringERK8OFStringR6OFDate"
               %dcmtk::dcm-date+get-of-date-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:193:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date (:pointer %dcmtk::of-string))
              (%dcmtk::date-value (:pointer %dcmtk::of-date)))

(iffi:defifun ("__claw__ZN7DcmDate19getOFDateFromStringEPKcmR6OFDateb"
               %dcmtk::dcm-date+get-of-date-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:237:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date :string)
              (%dcmtk::dicom-date-size %dcmtk::size-t)
              (%dcmtk::date-value (:pointer %dcmtk::of-date))
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmDate19getOFDateFromStringEPKcmR6OFDate"
               %dcmtk::dcm-date+get-of-date-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:221:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date :string)
              (%dcmtk::dicom-date-size %dcmtk::size-t)
              (%dcmtk::date-value (:pointer %dcmtk::of-date)))

(iffi:defifun ("__claw__ZN7DcmDate11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK7DcmDate5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:87:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date)))

(iffi:defifun ("__claw__ZNK7DcmDate7matchesERK8OFStringS2_b"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:154:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::key (:pointer %dcmtk::of-string))
              (%dcmtk::candidate (:pointer %dcmtk::of-string))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmDateaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-date)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:60:14"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::obj (:pointer %dcmtk::dcm-date)))

(iffi:defifun ("__claw__ZN7DcmDate14setCurrentDateEv"
               %dcmtk::set-current-date)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:114:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date)))

(iffi:defifun ("__claw__ZN7DcmDate9setOFDateERK6OFDate"
               %dcmtk::set-of-date)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:120:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date))
              (%dcmtk::date-value (:pointer %dcmtk::of-date)))

(iffi:defifun ("__claw__ZN7DcmDateD1Ev" %dcmtk::~dcm-date)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrda.h:54:13"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date)))

(iffi:deficlass (%dcmtk::dcm-date-time :size-reporter
                 "__claw_sizeof_DcmDateTime" :alignment-reporter
                 "__claw_alignof_DcmDateTime" :constructor
                 %dcmtk::dcm-date-time :destructor
                 %dcmtk::~dcm-date-time)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:33:28")

(iffi:defifun ("__claw__ZN11DcmDateTimeC1ERKS_"
               %dcmtk::dcm-date-time)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:50:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::old (:pointer %dcmtk::dcm-date-time)))

(iffi:defifun ("__claw__ZN11DcmDateTimeC1ERK6DcmTagj"
               %dcmtk::dcm-date-time)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:44:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN11DcmDateTime5checkEPKcm"
               %dcmtk::dcm-date-time+check)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:290:19"
              (%dcmtk::dicom-date-time :string)
              (%dcmtk::dicom-date-time-size %dcmtk::size-t))

(iffi:defifun ("__claw__ZN11DcmDateTime16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-date-time+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:300:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN11DcmDateTime10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:95:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK11DcmDateTime5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:65:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time)))

(iffi:defifun ("__claw__ZN11DcmDateTime8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:82:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN11DcmDateTime18getCurrentDateTimeER8OFStringbbb"
               %dcmtk::dcm-date-time+get-current-date-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:197:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date-time (:pointer %dcmtk::of-string))
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool)
              (%dcmtk::time-zone %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::of-date-time :size-reporter
                 "__claw_sizeof_OFDateTime" :alignment-reporter
                 "__claw_alignof_OFDateTime")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/ofdatime.h:42:26")

(iffi:defifun ("__claw__ZN11DcmDateTime30getDicomDateTimeFromOFDateTimeERK10OFDateTimeR8OFStringbbb"
               %dcmtk::dcm-date-time+get-dicom-date-time-from-of-date-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:217:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::date-time-value
               (:pointer %dcmtk::of-date-time))
              (%dcmtk::dicom-date-time (:pointer %dcmtk::of-string))
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool)
              (%dcmtk::time-zone %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN11DcmDateTime23getISOFormattedDateTimeER8OFStringmbbbbRKS0_S3_"
               %dcmtk::get-iso-formatted-date-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:164:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::formatted-date-time
               (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool)
              (%dcmtk::time-zone %dcmtk::of-bool)
              (%dcmtk::create-missing-part %dcmtk::of-bool)
              (%dcmtk::date-time-separator
               (:pointer %dcmtk::of-string))
              (%dcmtk::time-zone-separator
               (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN11DcmDateTime33getISOFormattedDateTimeFromStringERK8OFStringRS0_bbbbS2_S2_"
               %dcmtk::dcm-date-time+get-iso-formatted-date-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:276:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date-time (:pointer %dcmtk::of-string))
              (%dcmtk::formatted-date-time
               (:pointer %dcmtk::of-string))
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool)
              (%dcmtk::time-zone %dcmtk::of-bool)
              (%dcmtk::create-missing-part %dcmtk::of-bool)
              (%dcmtk::date-time-separator
               (:pointer %dcmtk::of-string))
              (%dcmtk::time-zone-separator
               (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN11DcmDateTime13getOFDateTimeER10OFDateTimem"
               %dcmtk::get-of-date-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:140:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::date-time-value
               (:pointer %dcmtk::of-date-time))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN11DcmDateTime23getOFDateTimeFromStringERK8OFStringR10OFDateTime"
               %dcmtk::dcm-date-time+get-of-date-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:235:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date-time (:pointer %dcmtk::of-string))
              (%dcmtk::date-time-value
               (:pointer %dcmtk::of-date-time)))

(iffi:defifun ("__claw__ZN11DcmDateTime23getOFDateTimeFromStringEPKcmR10OFDateTime"
               %dcmtk::dcm-date-time+get-of-date-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:251:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-date-time :string)
              (%dcmtk::dicom-date-time-size %dcmtk::size-t)
              (%dcmtk::date-time-value
               (:pointer %dcmtk::of-date-time)))

(iffi:defifun ("__claw__ZN11DcmDateTime11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::string-value (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK11DcmDateTime5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:87:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time)))

(iffi:defifun ("__claw__ZNK11DcmDateTime7matchesERK8OFStringS2_b"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:177:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::key (:pointer %dcmtk::of-string))
              (%dcmtk::candidate (:pointer %dcmtk::of-string))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN11DcmDateTimeaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-date-time)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:60:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::obj (:pointer %dcmtk::dcm-date-time)))

(iffi:defifun ("__claw__ZN11DcmDateTime18setCurrentDateTimeEbbb"
               %dcmtk::set-current-date-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:121:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool)
              (%dcmtk::time-zone %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN11DcmDateTime13setOFDateTimeERK10OFDateTime"
               %dcmtk::set-of-date-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:129:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time))
              (%dcmtk::date-time-value
               (:pointer %dcmtk::of-date-time)))

(iffi:defifun ("__claw__ZN11DcmDateTimeD1Ev" %dcmtk::~dcm-date-time)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrdt.h:54:13"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-date-time)))

(iffi:deficlass (%dcmtk::dcm-decimal-string :size-reporter
                 "__claw_sizeof_DcmDecimalString" :alignment-reporter
                 "__claw_alignof_DcmDecimalString" :constructor
                 %dcmtk::dcm-decimal-string :destructor
                 %dcmtk::~dcm-decimal-string)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:37:28")

(iffi:defifun ("__claw__ZN16DcmDecimalStringC1ERKS_"
               %dcmtk::dcm-decimal-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:54:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::old (:pointer %dcmtk::dcm-decimal-string)))

(iffi:defifun ("__claw__ZN16DcmDecimalStringC1ERK6DcmTagj"
               %dcmtk::dcm-decimal-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:48:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN16DcmDecimalString16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-decimal-string+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:180:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN16DcmDecimalString10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:99:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK16DcmDecimalString5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:69:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string)))

(iffi:defifun ("__claw__ZN16DcmDecimalString8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:86:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defitype %dcmtk::float64
               :double
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:97:25")

(iffi:defifun ("__claw__ZN16DcmDecimalString10getFloat64ERdm"
               %dcmtk::get-float64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:107:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::double-val (:pointer %dcmtk::float64))
              (%dcmtk::pos :unsigned-long))

(iffi:deficlass (%dcmtk::of-vector<double> :size-reporter
                 "__claw_sizeof_OFVector_double_" :alignment-reporter
                 "__claw_alignof_OFVector_double_")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/ofvector.h:54:7")

(iffi:defifun ("__claw__ZN16DcmDecimalString16getFloat64VectorER8OFVectorIdE"
               %dcmtk::get-float64vector)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:119:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::double-vals
               (:pointer %dcmtk::of-vector<double>)))

(iffi:defifun ("__claw__ZN16DcmDecimalString11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:127:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK16DcmDecimalString5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:91:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string)))

(iffi:defifun ("__claw__ZN16DcmDecimalStringaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-decimal-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:64:23"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::obj (:pointer %dcmtk::dcm-decimal-string)))

(iffi:defifun ("__claw__ZN16DcmDecimalString10putFloat64Edm"
               %dcmtk::put-float64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:138:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::val %dcmtk::float64)
              (%dcmtk::pos :unsigned-long))

(iffi:defitype %dcmtk::uint8
               :unsigned-char
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:78:25")

(iffi:defifun ("__claw__ZN16DcmDecimalString14putFloat64PrecEdmhb"
               %dcmtk::put-float64prec)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:150:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::val %dcmtk::float64)
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::prec %dcmtk::uint8)
              (%dcmtk::cut-trail-zeroes %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN16DcmDecimalString9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:168:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN16DcmDecimalString8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:160:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN16DcmDecimalStringD1Ev"
               %dcmtk::~dcm-decimal-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrds.h:58:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-decimal-string)))

(iffi:deficlass (%dcmtk::dcm-dicom-dir :size-reporter
                 "__claw_sizeof_DcmDicomDir" :alignment-reporter
                 "__claw_alignof_DcmDicomDir" :constructor
                 %dcmtk::dcm-dicom-dir :destructor
                 %dcmtk::~dcm-dicom-dir)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:52:28")

(iffi:defifun ("__claw__ZN11DcmDicomDirC1Ev" %dcmtk::dcm-dicom-dir)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:56:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir)))

(iffi:defifun ("__claw__ZN11DcmDicomDirC1ERK10OFFilenamePKc"
               %dcmtk::dcm-dicom-dir)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:63:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir))
              (%dcmtk::file-name (:pointer %dcmtk::of-filename))
              (%dcmtk::file-set-id :string))

(iffi:defifun ("__claw__ZN11DcmDicomDir5errorEv" %dcmtk::error)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:83:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir)))

(iffi:deficlass (%dcmtk::dcm-file-format :size-reporter
                 "__claw_sizeof_DcmFileFormat" :alignment-reporter
                 "__claw_alignof_DcmFileFormat" :constructor
                 %dcmtk::dcm-file-format :destructor
                 %dcmtk::~dcm-file-format)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:42:28")

(iffi:defifun ("__claw__ZN11DcmDicomDir16getDirFileFormatEv"
               %dcmtk::get-dir-file-format)
              (:pointer %dcmtk::dcm-file-format)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:89:28"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir)))

(iffi:defifun ("__claw__ZN11DcmDicomDir14getDirFileNameEv"
               %dcmtk::get-dir-file-name)
              (:pointer %dcmtk::of-filename)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:94:31"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir)))

(iffi:deficlass (%dcmtk::dcm-sequence-of-items :size-reporter
                 "__claw_sizeof_DcmSequenceOfItems"
                 :alignment-reporter
                 "__claw_alignof_DcmSequenceOfItems" :constructor
                 %dcmtk::dcm-sequence-of-items :destructor
                 %dcmtk::~dcm-sequence-of-items)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:43:28")

(iffi:defifun ("__claw__ZN11DcmDicomDir15getMRDRSequenceEv"
               %dcmtk::get-mrdr-sequence)
              (:pointer %dcmtk::dcm-sequence-of-items)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:100:33"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir)))

(iffi:deficlass (%dcmtk::dcm-directory-record :size-reporter
                 "__claw_sizeof_DcmDirectoryRecord"
                 :alignment-reporter
                 "__claw_alignof_DcmDirectoryRecord" :constructor
                 %dcmtk::dcm-directory-record :destructor
                 %dcmtk::~dcm-directory-record)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:139:28")

(iffi:defifun ("__claw__ZN11DcmDicomDir13getRootRecordEv"
               %dcmtk::get-root-record)
              (:pointer %dcmtk::dcm-directory-record)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:97:33"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir)))

(iffi:defifun ("__claw__ZN11DcmDicomDir13matchFilenameEPKc"
               %dcmtk::match-filename)
              (:pointer %dcmtk::dcm-directory-record)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:105:33"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir))
              (%dcmtk::filename :string))

(iffi:defifun ("__claw__ZN11DcmDicomDir17matchOrCreateMRDREPKc"
               %dcmtk::match-or-create-mrdr)
              (:pointer %dcmtk::dcm-directory-record)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:111:33"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir))
              (%dcmtk::filename :string))

(iffi:defifun ("__claw__ZN11DcmDicomDir5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:76:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN11DcmDicomDir6verifyEb" %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:128:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN11DcmDicomDir5writeE16E_TransferSyntax14E_EncodingType16E_GrpLenEncoding"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:119:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding))

(iffi:defifun ("__claw__ZN11DcmDicomDirD1Ev" %dcmtk::~dcm-dicom-dir)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicdir.h:67:13"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-dicom-dir)))

(iffi:defifun ("__claw__ZN12DcmDictEntryC1ERKS_"
               %dcmtk::dcm-dict-entry)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:97:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::e (:pointer %dcmtk::dcm-dict-entry)))

(iffi:deficlass (%dcmtk::dcm-vr :size-reporter "__claw_sizeof_DcmVR"
                 :alignment-reporter "__claw_alignof_DcmVR"
                 :constructor %dcmtk::dcm-vr :destructor
                 %dcmtk::~dcm-vr)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:282:28")

(iffi:defifun ("__claw__ZN12DcmDictEntryC1Ett5DcmVRPKciiS2_bS2_"
               %dcmtk::dcm-dict-entry)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:73:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::g %dcmtk::uint16)
              (%dcmtk::e %dcmtk::uint16)
              (%dcmtk::vr (:pointer %dcmtk::dcm-vr))
              (%dcmtk::nam :string)
              (%dcmtk::vm-min :int)
              (%dcmtk::vm-max :int)
              (%dcmtk::vers :string)
              (%dcmtk::do-copy-strings %dcmtk::of-bool)
              (%dcmtk::pcreator :string))

(iffi:defifun ("__claw__ZN12DcmDictEntryC1Etttt5DcmVRPKciiS2_bS2_"
               %dcmtk::dcm-dict-entry)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:91:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::g %dcmtk::uint16)
              (%dcmtk::e %dcmtk::uint16)
              (%dcmtk::ug %dcmtk::uint16)
              (%dcmtk::ue %dcmtk::uint16)
              (%dcmtk::vr (:pointer %dcmtk::dcm-vr))
              (%dcmtk::nam :string)
              (%dcmtk::vm-min :int)
              (%dcmtk::vm-max :int)
              (%dcmtk::vers :string)
              (%dcmtk::do-copy-strings %dcmtk::of-bool)
              (%dcmtk::pcreator :string))

(iffi:defifun ("__claw__ZNK12DcmDictEntry8containsERK9DcmTagKeyPKc"
               %dcmtk::contains :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:291:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::priv-creator :string))

(iffi:defifun ("__claw__ZNK12DcmDictEntry8containsEPKc"
               %dcmtk::contains :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:321:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::name :string))

(iffi:defifun ("__claw__ZNK12DcmDictEntry6getEVREv" %dcmtk::get-evr
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:111:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry26getElementRangeRestrictionEv"
               %dcmtk::get-element-range-restriction :non-mutating t)
              %dcmtk::dcm-dict-range-restriction
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:272:29"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry24getGroupRangeRestrictionEv"
               %dcmtk::get-group-range-restriction :non-mutating t)
              %dcmtk::dcm-dict-range-restriction
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:260:29"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry6getKeyEv" %dcmtk::get-key
               :non-mutating t)
              (:pointer %dcmtk::dcm-tag-key)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:230:15"
              (%dcmtk::%%claw-result- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry17getPrivateCreatorEv"
               %dcmtk::get-private-creator :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:129:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry18getStandardVersionEv"
               %dcmtk::get-standard-version :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:117:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry10getTagNameEv"
               %dcmtk::get-tag-name :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:123:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry15getUpperElementEv"
               %dcmtk::get-upper-element :non-mutating t)
              %dcmtk::uint16
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:224:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry13getUpperGroupEv"
               %dcmtk::get-upper-group :non-mutating t)
              %dcmtk::uint16
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:218:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry11getUpperKeyEv"
               %dcmtk::get-upper-key :non-mutating t)
              (:pointer %dcmtk::dcm-tag-key)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:236:15"
              (%dcmtk::%%claw-result- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry8getVMMaxEv"
               %dcmtk::get-vm-max :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:164:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry8getVMMinEv"
               %dcmtk::get-vm-min :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:158:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry5getVREv" %dcmtk::get-vr
               :non-mutating t)
              (:pointer %dcmtk::dcm-vr)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:105:11"
              (%dcmtk::%%claw-result- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry14isFixedRangeVMEv"
               %dcmtk::is-fixed-range-vm :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:177:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry15isFixedSingleVMEv"
               %dcmtk::is-fixed-single-vm :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:170:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry11isRepeatingEv"
               %dcmtk::is-repeating :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:254:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry18isRepeatingElementEv"
               %dcmtk::is-repeating-element :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:248:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry16isRepeatingGroupEv"
               %dcmtk::is-repeating-group :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:242:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry17isVariableRangeVMEv"
               %dcmtk::is-variable-range-vm :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:184:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry19privateCreatorMatchERKS_"
               %dcmtk::private-creator-match :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:152:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::arg (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK12DcmDictEntry19privateCreatorMatchEPKc"
               %dcmtk::private-creator-match :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:138:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::c :string))

(iffi:defifun ("__claw__ZNK12DcmDictEntry5setEQERKS_" %dcmtk::set-eq
               :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:347:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::e (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZN12DcmDictEntry26setElementRangeRestrictionE23DcmDictRangeRestriction"
               %dcmtk::set-element-range-restriction)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:278:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::rr %dcmtk::dcm-dict-range-restriction))

(iffi:defifun ("__claw__ZN12DcmDictEntry24setGroupRangeRestrictionE23DcmDictRangeRestriction"
               %dcmtk::set-group-range-restriction)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:266:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::rr %dcmtk::dcm-dict-range-restriction))

(iffi:defifun ("__claw__ZN12DcmDictEntry8setUpperERK9DcmTagKey"
               %dcmtk::set-upper)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:194:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN12DcmDictEntry15setUpperElementEt"
               %dcmtk::set-upper-element)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:212:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::ue %dcmtk::uint16))

(iffi:defifun ("__claw__ZN12DcmDictEntry13setUpperGroupEt"
               %dcmtk::set-upper-group)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:203:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::ug %dcmtk::uint16))

(iffi:defifun ("__claw__ZNK12DcmDictEntry6subsetERKS_" %dcmtk::subset
               :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:333:9"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry))
              (%dcmtk::e (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZN12DcmDictEntryD1Ev"
               %dcmtk::~dcm-dict-entry)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdicent.h:100:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry)))

(iffi:deficlass (%dcmtk::dcm-dict-entry-list :size-reporter
                 "__claw_sizeof_DcmDictEntryList" :alignment-reporter
                 "__claw_alignof_DcmDictEntryList" :constructor
                 %dcmtk::dcm-dict-entry-list :destructor
                 %dcmtk::~dcm-dict-entry-list)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:39:28")

(iffi:defifun ("__claw__ZN16DcmDictEntryListC1Ev"
               %dcmtk::dcm-dict-entry-list)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:44:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list)))

(iffi:defifun ("__claw__ZN16DcmDictEntryList5beginEv" %dcmtk::begin)
              (:pointer %dcmtk::dcm-dict-entry-list-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:59:30"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-dict-entry-list-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list)))

(iffi:defitype %dcmtk::dcm-dict-entry-list-const-iterator
               %dcmtk::of-iterator<dcm-dict-entry*>
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:35:45")

(iffi:defifun ("__claw__ZNK16DcmDictEntryList5beginEv" %dcmtk::begin
               :non-mutating t)
              (:pointer %dcmtk::dcm-dict-entry-list-const-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:65:35"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-dict-entry-list-const-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list)))

(iffi:defifun ("__claw__ZN16DcmDictEntryList5clearEv" %dcmtk::clear)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:50:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list)))

(iffi:defifun ("__claw__ZNK16DcmDictEntryList5emptyEv" %dcmtk::empty
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:56:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list)))

(iffi:defifun ("__claw__ZN16DcmDictEntryList3endEv" %dcmtk::end)
              (:pointer %dcmtk::dcm-dict-entry-list-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:62:30"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-dict-entry-list-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list)))

(iffi:defifun ("__claw__ZNK16DcmDictEntryList3endEv" %dcmtk::end
               :non-mutating t)
              (:pointer %dcmtk::dcm-dict-entry-list-const-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:68:35"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-dict-entry-list-const-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list)))

(iffi:defifun ("__claw__ZN16DcmDictEntryList4findERK9DcmTagKeyPKc"
               %dcmtk::find)
              (:pointer %dcmtk::dcm-dict-entry)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:98:19"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::priv-creator :string))

(iffi:defifun ("__claw__ZN16DcmDictEntryList6insertE10OFIteratorIP12DcmDictEntryES2_"
               %dcmtk::insert)
              (:pointer %dcmtk::dcm-dict-entry-list-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:75:30"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-dict-entry-list-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list))
              (%dcmtk::position
               (:pointer %dcmtk::dcm-dict-entry-list-iterator))
              (%dcmtk::entry (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZN16DcmDictEntryList16insertAndReplaceEP12DcmDictEntry"
               %dcmtk::insert-and-replace)
              (:pointer %dcmtk::dcm-dict-entry)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:91:19"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list))
              (%dcmtk::entry (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZN16DcmDictEntryList9push_backEP12DcmDictEntry"
               %dcmtk::push-back)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:85:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list))
              (%dcmtk::entry (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZN16DcmDictEntryList6removeEP12DcmDictEntry"
               %dcmtk::remove)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:80:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list))
              (%dcmtk::entry (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK16DcmDictEntryList4sizeEv" %dcmtk::size
               :non-mutating t)
              :unsigned-int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:53:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list)))

(iffi:defifun ("__claw__ZN16DcmDictEntryListD1Ev"
               %dcmtk::~dcm-dict-entry-list)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-dict-entry-list)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecordC1Ev"
               %dcmtk::dcm-directory-record)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:146:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecordC1ERKS_"
               %dcmtk::dcm-directory-record)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:181:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::old-dir-rec
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecordC1ERK6DcmTagj"
               %dcmtk::dcm-directory-record)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:153:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecordC1EPKcS1_RK10OFFilenameP13DcmFileFormat"
               %dcmtk::dcm-directory-record)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:173:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::record-type-name :string)
              (%dcmtk::referenced-file-id :string)
              (%dcmtk::source-file-name
               (:pointer %dcmtk::of-filename))
              (%dcmtk::file-format
               (:pointer %dcmtk::dcm-file-format)))

(defparameter %dcmtk::+ert-root+ 0)

(defparameter %dcmtk::+ert-curve+ 1)

(defparameter %dcmtk::+ert-film-box+ 2)

(defparameter %dcmtk::+ert-film-session+ 3)

(defparameter %dcmtk::+ert-image+ 4)

(defparameter %dcmtk::+ert-image-box+ 5)

(defparameter %dcmtk::+ert-interpretation+ 6)

(defparameter %dcmtk::+ert-modality-lut+ 7)

(defparameter %dcmtk::+ert-mrdr+ 8)

(defparameter %dcmtk::+ert-overlay+ 9)

(defparameter %dcmtk::+ert-patient+ 10)

(defparameter %dcmtk::+ert-print-queue+ 11)

(defparameter %dcmtk::+ert-private+ 12)

(defparameter %dcmtk::+ert-results+ 13)

(defparameter %dcmtk::+ert-series+ 14)

(defparameter %dcmtk::+ert-study+ 15)

(defparameter %dcmtk::+ert-study-component+ 16)

(defparameter %dcmtk::+ert-topic+ 17)

(defparameter %dcmtk::+ert-visit+ 18)

(defparameter %dcmtk::+ert-voi-lut+ 19)

(defparameter %dcmtk::+ert-sr-document+ 20)

(defparameter %dcmtk::+ert-presentation+ 21)

(defparameter %dcmtk::+ert-waveform+ 22)

(defparameter %dcmtk::+ert-rt-dose+ 23)

(defparameter %dcmtk::+ert-rt-structure-set+ 24)

(defparameter %dcmtk::+ert-rt-plan+ 25)

(defparameter %dcmtk::+ert-rt-treat-record+ 26)

(defparameter %dcmtk::+ert-stored-print+ 27)

(defparameter %dcmtk::+ert-key-object-doc+ 28)

(defparameter %dcmtk::+ert-registration+ 29)

(defparameter %dcmtk::+ert-fiducial+ 30)

(defparameter %dcmtk::+ert-raw-data+ 31)

(defparameter %dcmtk::+ert-spectroscopy+ 32)

(defparameter %dcmtk::+ert-encap-doc+ 33)

(defparameter %dcmtk::+ert-value-map+ 34)

(defparameter %dcmtk::+ert-hanging-protocol+ 35)

(defparameter %dcmtk::+ert-stereometric+ 36)

(defparameter %dcmtk::+ert-hl7struc-doc+ 37)

(defparameter %dcmtk::+ert-palette+ 38)

(defparameter %dcmtk::+ert-surface+ 39)

(defparameter %dcmtk::+ert-measurement+ 40)

(defparameter %dcmtk::+ert-implant+ 41)

(defparameter %dcmtk::+ert-implant-group+ 42)

(defparameter %dcmtk::+ert-implant-assy+ 43)

(defparameter %dcmtk::+ert-plan+ 44)

(defparameter %dcmtk::+ert-surface-scan+ 45)

(defparameter %dcmtk::+ert-tract+ 46)

(defparameter %dcmtk::+ert-assessment+ 47)

(defparameter %dcmtk::+ert-radiotherapy+ 48)

(iffi:defitype %dcmtk::e-dir-rec-type
               %dcmtk::|C:@EA@E-DIR-REC-TYPE|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:132:3")

(iffi:defifun ("__claw__ZN18DcmDirectoryRecordC1E12E_DirRecTypePKcRK10OFFilenameP13DcmFileFormat"
               %dcmtk::dcm-directory-record)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:162:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::record-type %dcmtk::e-dir-rec-type)
              (%dcmtk::referenced-file-id :string)
              (%dcmtk::source-file-name
               (:pointer %dcmtk::of-filename))
              (%dcmtk::file-format
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord12assignToMRDREPS_"
               %dcmtk::assign-to-mrdr)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:370:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::mrdr (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord15assignToSOPFileEPKcRK10OFFilename"
               %dcmtk::assign-to-sop-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:380:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::referenced-file-id :string)
              (%dcmtk::source-file-name
               (:pointer %dcmtk::of-filename)))

(iffi:defifun ("__claw__ZNK18DcmDirectoryRecord7cardSubEv"
               %dcmtk::card-sub :non-mutating t)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:384:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZNK18DcmDirectoryRecord28checkForSpecificCharacterSetEv"
               %dcmtk::check-for-specific-character-set :non-mutating
               t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:229:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord8clearSubEv"
               %dcmtk::clear-sub)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:450:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZNK18DcmDirectoryRecord5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:194:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord19convertCharacterSetER23DcmSpecificCharacterSet"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:283:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::converter
               (:pointer %dcmtk::dcm-specific-character-set)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord19convertCharacterSetERK8OFStringmb"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:269:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::to-charset (:pointer %dcmtk::of-string))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::ignore-charset %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord19convertCharacterSetERK8OFStringS2_mb"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:250:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::from-charset (:pointer %dcmtk::of-string))
              (%dcmtk::to-charset (:pointer %dcmtk::of-string))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::update-charset %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:211:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord21deleteSubAndPurgeFileEPS_"
               %dcmtk::delete-sub-and-purge-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:447:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::dir-rec
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord21deleteSubAndPurgeFileEm"
               %dcmtk::delete-sub-and-purge-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:441:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZNK18DcmDirectoryRecord5errorEv"
               %dcmtk::error :non-mutating t)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:222:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZNK18DcmDirectoryRecord13getFileOffsetEv"
               %dcmtk::get-file-offset :non-mutating t)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:461:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord13getRecordTypeEv"
               %dcmtk::get-record-type)
              %dcmtk::e-dir-rec-type
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:358:26"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord20getRecordsOriginFileEv"
               %dcmtk::get-records-origin-file)
              (:pointer %dcmtk::of-filename)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:458:31"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord17getReferencedMRDREv"
               %dcmtk::get-referenced-mrdr)
              (:pointer %dcmtk::dcm-directory-record)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:364:33"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord6getSubEm"
               %dcmtk::get-sub)
              (:pointer %dcmtk::dcm-directory-record)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:413:33"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZNK18DcmDirectoryRecord5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:219:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord9insertSubEPS_mb"
               %dcmtk::insert-sub)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:394:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::dir-rec
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::where :unsigned-long)
              (%dcmtk::before %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord21insertSubAtCurrentPosEPS_b"
               %dcmtk::insert-sub-at-current-pos)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:405:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::dir-rec
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::before %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord7nextSubEPKS_"
               %dcmtk::next-sub)
              (:pointer %dcmtk::dcm-directory-record)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:419:33"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::dir-rec
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecordaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-directory-record)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:186:25"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::obj (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:292:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:311:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord9removeSubEPS_"
               %dcmtk::remove-sub)
              (:pointer %dcmtk::dcm-directory-record)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:435:33"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::dir-rec
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord9removeSubEm"
               %dcmtk::remove-sub)
              (:pointer %dcmtk::dcm-directory-record)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:427:33"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::num :unsigned-long))

(iffi:deficlass (%dcmtk::dcm-stack :size-reporter
                 "__claw_sizeof_DcmStack" :alignment-reporter
                 "__claw_alignof_DcmStack" :constructor
                 %dcmtk::dcm-stack :destructor %dcmtk::~dcm-stack)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:71:28")

(defparameter %dcmtk::+esm-from-here+ 0)

(defparameter %dcmtk::+esm-from-stack-top+ 1)

(defparameter %dcmtk::+esm-after-stack-top+ 2)

(iffi:defitype %dcmtk::e-search-mode
               %dcmtk::|C:@EA@E-SEARCH-MODE|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctypes.h:129:3")

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord6searchERK9DcmTagKeyR8DcmStack12E_SearchModeb"
               %dcmtk::search)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:352:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::xtag (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::result-stack (:pointer %dcmtk::dcm-stack))
              (%dcmtk::mode %dcmtk::e-search-mode)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord20setRecordsOriginFileERK10OFFilename"
               %dcmtk::set-records-origin-file)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:455:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::fname (:pointer %dcmtk::of-filename)))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord6verifyEb"
               %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:329:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecord8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:321:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN18DcmDirectoryRecordD1Ev"
               %dcmtk::~dcm-directory-record)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcdirrec.h:189:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-directory-record)))

(iffi:defifun ("__claw__ZN10DcmElement17calcElementLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::calc-element-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:116:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN10DcmElement12canWriteXferE16E_TransferSyntaxS0_"
               %dcmtk::can-write-xfer)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:155:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::old-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZN10DcmElement7checkVMEmRK8OFString"
               %dcmtk::dcm-element+check-vm)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:879:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::vm-num :unsigned-long)
              (%dcmtk::vm-str (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN10DcmElement10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:245:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN10DcmElement5clearEv" %dcmtk::clear)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:236:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZNK10DcmElement18combinationMatchesERKS_S1_S1_"
               %dcmtk::combination-matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:807:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::key-second (:pointer %dcmtk::dcm-element))
              (%dcmtk::candidate-first
               (:pointer %dcmtk::dcm-element))
              (%dcmtk::candidate-second
               (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN10DcmElement7compactEv" %dcmtk::compact)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:706:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZNK10DcmElement7compareERKS_" %dcmtk::compare
               :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:98:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN10DcmElement8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:112:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN10DcmElement17createUint16ArrayEjRPt"
               %dcmtk::create-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:686:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::num-words %dcmtk::uint32)
              (%dcmtk::words (:pointer (:pointer %dcmtk::uint16))))

(iffi:defifun ("__claw__ZN10DcmElement16createUint8ArrayEjRPh"
               %dcmtk::create-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:677:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::num-bytes %dcmtk::uint32)
              (%dcmtk::bytes (:pointer (:pointer %dcmtk::uint8))))

(iffi:deficlass (%dcmtk::dcm-input-stream-factory :size-reporter
                 "__claw_sizeof_DcmInputStreamFactory"
                 :alignment-reporter
                 "__claw_alignof_DcmInputStreamFactory")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:128:28")

(defparameter %dcmtk::+ebo-unknown+ 0)

(defparameter %dcmtk::+ebo-little-endian+ 1)

(defparameter %dcmtk::+ebo-big-endian+ 2)

(iffi:defitype %dcmtk::e-byte-order
               %dcmtk::|C:@EA@E-BYTE-ORDER|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:137:3")

(iffi:defifun ("__claw__ZN10DcmElement23createValueFromTempFileEP21DcmInputStreamFactoryj11E_ByteOrder"
               %dcmtk::create-value-from-temp-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:699:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::factory
               (:pointer %dcmtk::dcm-input-stream-factory))
              (%dcmtk::length %dcmtk::uint32)
              (%dcmtk::byte-order %dcmtk::e-byte-order))

(iffi:defifun ("__claw__ZN10DcmElement16detachValueFieldEb"
               %dcmtk::detach-value-field)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:484:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::copy %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN10DcmElement11determineVMEPKcm"
               %dcmtk::dcm-element+determine-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:854:26"
              (%dcmtk::str :string)
              (%dcmtk::len %dcmtk::size-t))

(iffi:deficlass (%dcmtk::dcm-item :size-reporter
                 "__claw_sizeof_DcmItem" :alignment-reporter
                 "__claw_alignof_DcmItem" :constructor
                 %dcmtk::dcm-item :destructor %dcmtk::~dcm-item)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:46:28")

(iffi:defifun ("__claw__ZN10DcmElement25getDecompressedColorModelEP7DcmItemR8OFString"
               %dcmtk::get-decompressed-color-model)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:762:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::dataset (:pointer %dcmtk::dcm-item))
              (%dcmtk::decompressed-color-model
               (:pointer %dcmtk::of-string)))

(iffi:defitype %dcmtk::float32
               :float
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:96:25")

(iffi:defifun ("__claw__ZN10DcmElement10getFloat32ERfm"
               %dcmtk::get-float32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:305:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::float32))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement15getFloat32ArrayERPf"
               %dcmtk::get-float32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:442:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer (:pointer %dcmtk::float32))))

(iffi:defifun ("__claw__ZN10DcmElement10getFloat64ERdm"
               %dcmtk::get-float64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:329:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::float64))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement15getFloat64ArrayERPd"
               %dcmtk::get-float64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:472:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer (:pointer %dcmtk::float64))))

(iffi:defifun ("__claw__ZNK10DcmElement14getInputStreamEv"
               %dcmtk::get-input-stream :non-mutating t)
              (:pointer %dcmtk::dcm-input-stream-factory)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:820:41"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN10DcmElement9getLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::get-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:126:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::arg0 %dcmtk::e-transfer-syntax)
              (%dcmtk::arg1 %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN10DcmElement11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:346:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::str (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN10DcmElement16getOFStringArrayER8OFStringb"
               %dcmtk::get-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:359:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::dcm-file-cache :size-reporter nil
                 :alignment-reporter nil)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:34:7")

(iffi:defifun ("__claw__ZN10DcmElement15getPartialValueEPvjjP12DcmFileCache11E_ByteOrder"
               %dcmtk::get-partial-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:664:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::target-buffer (:pointer :void))
              (%dcmtk::offset %dcmtk::uint32)
              (%dcmtk::num-bytes %dcmtk::uint32)
              (%dcmtk::cache (:pointer %dcmtk::dcm-file-cache))
              (%dcmtk::byte-order %dcmtk::e-byte-order))

(iffi:defitype %dcmtk::sint16
               :short
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:93:25")

(iffi:defifun ("__claw__ZN10DcmElement9getSint16ERsm"
               %dcmtk::get-sint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:273:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::sint16))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14getSint16ArrayERPs"
               %dcmtk::get-sint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:402:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer (:pointer %dcmtk::sint16))))

(iffi:defitype %dcmtk::sint32
               :int
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:81:25")

(iffi:defifun ("__claw__ZN10DcmElement9getSint32ERim"
               %dcmtk::get-sint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:289:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::sint32))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14getSint32ArrayERPi"
               %dcmtk::get-sint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:422:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer (:pointer %dcmtk::sint32))))

(iffi:defitype %dcmtk::sint64
               :long
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:117:23")

(iffi:defifun ("__claw__ZN10DcmElement9getSint64ERlm"
               %dcmtk::get-sint64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:313:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::sint64))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14getSint64ArrayERPl"
               %dcmtk::get-sint64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:452:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer (:pointer %dcmtk::sint64))))

(iffi:defifun ("__claw__ZN10DcmElement9getStringERPc"
               %dcmtk::get-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:370:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer :string)))

(iffi:defifun ("__claw__ZN10DcmElement9getStringERPcRj"
               %dcmtk::get-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:381:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer :string))
              (%dcmtk::len (:pointer %dcmtk::uint32)))

(iffi:defifun ("__claw__ZN10DcmElement9getTagValER9DcmTagKeym"
               %dcmtk::get-tag-val)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:337:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement9getUint16ERtm"
               %dcmtk::get-uint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:281:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::uint16))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14getUint16ArrayERPt"
               %dcmtk::get-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:412:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer (:pointer %dcmtk::uint16))))

(iffi:defifun ("__claw__ZN10DcmElement9getUint32ERjm"
               %dcmtk::get-uint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:297:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::uint32))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14getUint32ArrayERPj"
               %dcmtk::get-uint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:432:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer (:pointer %dcmtk::uint32))))

(iffi:defitype %dcmtk::uint64
               :unsigned-long
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftypes.h:131:23")

(iffi:defifun ("__claw__ZN10DcmElement9getUint64ERmm"
               %dcmtk::get-uint64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:321:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::uint64))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14getUint64ArrayERPm"
               %dcmtk::get-uint64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:462:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer (:pointer %dcmtk::uint64))))

(iffi:defifun ("__claw__ZN10DcmElement8getUint8ERhm"
               %dcmtk::get-uint8)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:265:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::uint8))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement13getUint8ArrayERPh"
               %dcmtk::get-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:392:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer (:pointer %dcmtk::uint8))))

(iffi:defifun ("__claw__ZN10DcmElement20getUncompressedFrameEP7DcmItemjRjPvjR8OFStringP12DcmFileCache"
               %dcmtk::get-uncompressed-frame)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:746:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::dataset (:pointer %dcmtk::dcm-item))
              (%dcmtk::frame-no %dcmtk::uint32)
              (%dcmtk::start-fragment (:pointer %dcmtk::uint32))
              (%dcmtk::buffer (:pointer :void))
              (%dcmtk::buf-size %dcmtk::uint32)
              (%dcmtk::decompressed-color-model
               (:pointer %dcmtk::of-string))
              (%dcmtk::cache (:pointer %dcmtk::dcm-file-cache)))

(iffi:defifun ("__claw__ZNK10DcmElement24getUncompressedFrameSizeEP7DcmItemRj"
               %dcmtk::get-uncompressed-frame-size :non-mutating t)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:716:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::dataset (:pointer %dcmtk::dcm-item))
              (%dcmtk::frame-size (:pointer %dcmtk::uint32)))

(iffi:defifun ("__claw__ZN10DcmElement18getValueFromStringEPKcmmR8OFString"
               %dcmtk::dcm-element+get-value-from-string)
              %dcmtk::size-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:865:19"
              (%dcmtk::str :string)
              (%dcmtk::pos %dcmtk::size-t)
              (%dcmtk::len %dcmtk::size-t)
              (%dcmtk::val (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZNK10DcmElement6isLeafEv" %dcmtk::is-leaf
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:138:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN10DcmElement16isUniversalMatchEbb"
               %dcmtk::is-universal-match)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:773:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::normalize %dcmtk::of-bool)
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN10DcmElement21loadAllDataIntoMemoryEv"
               %dcmtk::load-all-data-into-memory)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:255:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZNK10DcmElement7matchesERKS_b"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:787:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::candidate (:pointer %dcmtk::dcm-element))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN10DcmElementaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-element)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:73:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::obj (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN10DcmElement10putFloat32Efm"
               %dcmtk::put-float32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:567:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val %dcmtk::float32)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement15putFloat32ArrayEPKfm"
               %dcmtk::put-float32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:637:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::vals (:pointer %dcmtk::float32))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement10putFloat64Edm"
               %dcmtk::put-float64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:578:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val %dcmtk::float64)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement15putFloat64ArrayEPKdm"
               %dcmtk::put-float64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:645:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::vals (:pointer %dcmtk::float64))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement16putOFStringArrayERK8OFString"
               %dcmtk::put-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:494:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN10DcmElement9putSint16Esm"
               %dcmtk::put-sint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:523:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val %dcmtk::sint16)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14putSint16ArrayEPKsm"
               %dcmtk::put-sint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:605:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::vals (:pointer %dcmtk::sint16))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement9putSint32Eim"
               %dcmtk::put-sint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:545:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val %dcmtk::sint32)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14putSint32ArrayEPKim"
               %dcmtk::put-sint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:621:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::vals (:pointer %dcmtk::sint32))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:502:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val :string))

(iffi:defifun ("__claw__ZN10DcmElement9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:511:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val :string)
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN10DcmElement9putTagValERK9DcmTagKeym"
               %dcmtk::put-tag-val)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:589:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::attr-tag (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement9putUint16Etm"
               %dcmtk::put-uint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:534:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val %dcmtk::uint16)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14putUint16ArrayEPKtm"
               %dcmtk::put-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:613:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::vals (:pointer %dcmtk::uint16))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement9putUint32Ejm"
               %dcmtk::put-uint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:556:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::val %dcmtk::uint32)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement14putUint32ArrayEPKjm"
               %dcmtk::put-uint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:629:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::vals (:pointer %dcmtk::uint32))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement13putUint8ArrayEPKhm"
               %dcmtk::put-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:597:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::vals (:pointer %dcmtk::uint8))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN10DcmElement4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:173:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::ixfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN10DcmElement9scanValueERK8OFStringPKcm"
               %dcmtk::dcm-element+scan-value)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:845:16"
              (%dcmtk::vr (:pointer %dcmtk::of-string))
              (%dcmtk::value :string)
              (%dcmtk::size %dcmtk::size-t))

(iffi:defifun ("__claw__ZN10DcmElement9scanValueERK8OFStringS2_mm"
               %dcmtk::dcm-element+scan-value)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:834:16"
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vr (:pointer %dcmtk::of-string))
              (%dcmtk::pos %dcmtk::size-t)
              (%dcmtk::num %dcmtk::size-t))

(iffi:defifun ("__claw__ZN10DcmElement12transferInitEv"
               %dcmtk::transfer-init)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:148:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZNK10DcmElement11valueLoadedEv"
               %dcmtk::value-loaded :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:143:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN10DcmElement5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:200:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN10DcmElement9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:218:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN10DcmElement20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:228:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN10DcmElement8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcelem.h:210:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-element))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN13DcmFileFormatC1Ev"
               %dcmtk::dcm-file-format)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:50:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormatC1ERKS_"
               %dcmtk::dcm-file-format)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:66:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::old (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormatC1EP10DcmDatasetb"
               %dcmtk::dcm-file-format)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:60:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::dataset (:pointer %dcmtk::dcm-dataset))
              (%dcmtk::deep-copy %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmFileFormat17calcElementLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::calc-element-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:157:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN13DcmFileFormat12canWriteXferE16E_TransferSyntaxS0_"
               %dcmtk::can-write-xfer)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:165:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::old-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZN13DcmFileFormat20chooseRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameter"
               %dcmtk::choose-representation)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:339:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZN13DcmFileFormat5clearEv" %dcmtk::clear)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:108:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZNK13DcmFileFormat5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:81:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormat19convertCharacterSetER23DcmSpecificCharacterSet"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:457:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::converter
               (:pointer %dcmtk::dcm-specific-character-set)))

(iffi:defifun ("__claw__ZN13DcmFileFormat19convertCharacterSetERK8OFStringm"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:448:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::to-charset (:pointer %dcmtk::of-string))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN13DcmFileFormat19convertCharacterSetERK8OFStringS2_m"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:430:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::from-charset (:pointer %dcmtk::of-string))
              (%dcmtk::to-charset (:pointer %dcmtk::of-string))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN13DcmFileFormat13convertToUTF8Ev"
               %dcmtk::convert-to-utf8)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:468:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormat8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:98:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN13DcmFileFormat19getAndRemoveDatasetEv"
               %dcmtk::get-and-remove-dataset)
              (:pointer %dcmtk::dcm-dataset)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:153:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormat10getDatasetEv"
               %dcmtk::get-dataset)
              (:pointer %dcmtk::dcm-dataset)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:147:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:deficlass (%dcmtk::dcm-meta-info :size-reporter
                 "__claw_sizeof_DcmMetaInfo" :alignment-reporter
                 "__claw_alignof_DcmMetaInfo" :constructor
                 %dcmtk::dcm-meta-info :destructor
                 %dcmtk::~dcm-meta-info)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:49:28")

(iffi:defifun ("__claw__ZN13DcmFileFormat11getMetaInfoEv"
               %dcmtk::get-meta-info)
              (:pointer %dcmtk::dcm-meta-info)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:142:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(defparameter %dcmtk::+erm-auto-detect+ 0)

(defparameter %dcmtk::+erm-dataset+ 1)

(defparameter %dcmtk::+erm-file-only+ 2)

(defparameter %dcmtk::+erm-meta-only+ 3)

(iffi:defitype %dcmtk::e-file-read-mode
               %dcmtk::|C:@EA@E-FILE-READ-MODE|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctypes.h:153:3")

(iffi:defifun ("__claw__ZNK13DcmFileFormat11getReadModeEv"
               %dcmtk::get-read-mode :non-mutating t)
              %dcmtk::e-file-read-mode
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:378:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormat17hasRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameter"
               %dcmtk::has-representation)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:352:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZNK13DcmFileFormat5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:103:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormat10insertItemEP7DcmItemm"
               %dcmtk::insert-item)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:399:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::item (:pointer %dcmtk::dcm-item))
              (%dcmtk::where :unsigned-long))

(iffi:defifun ("__claw__ZN13DcmFileFormat8loadFileERK10OFFilename16E_TransferSyntax16E_GrpLenEncodingj14E_FileReadMode"
               %dcmtk::load-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:274:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::file-name (:pointer %dcmtk::of-filename))
              (%dcmtk::read-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::group-length %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32)
              (%dcmtk::read-mode %dcmtk::e-file-read-mode))

(iffi:defifun ("__claw__ZN13DcmFileFormat16loadFileUntilTagERK10OFFilename16E_TransferSyntax16E_GrpLenEncodingj14E_FileReadModeRK9DcmTagKey"
               %dcmtk::load-file-until-tag)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:298:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::file-name (:pointer %dcmtk::of-filename))
              (%dcmtk::read-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::group-length %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32)
              (%dcmtk::read-mode %dcmtk::e-file-read-mode)
              (%dcmtk::stop-parsing-at-element
               (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN13DcmFileFormataSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-file-format)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:76:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::obj (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormat5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:122:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN13DcmFileFormat4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:177:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN13DcmFileFormat12readUntilTagER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingjRK9DcmTagKey"
               %dcmtk::read-until-tag)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:193:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32)
              (%dcmtk::stop-parsing-at-element
               (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN13DcmFileFormat6removeEP7DcmItem"
               %dcmtk::remove)
              (:pointer %dcmtk::dcm-item)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:413:22"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::item (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN13DcmFileFormat6removeEm" %dcmtk::remove)
              (:pointer %dcmtk::dcm-item)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:406:22"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN13DcmFileFormat34removeAllButCurrentRepresentationsEv"
               %dcmtk::remove-all-but-current-representations)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:368:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormat35removeAllButOriginalRepresentationsEv"
               %dcmtk::remove-all-but-original-representations)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:360:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormat19removeInvalidGroupsEv"
               %dcmtk::remove-invalid-groups)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:113:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(defparameter %dcmtk::+ewm-fileformat+ 0)

(defparameter %dcmtk::+ewm-dataset+ 1)

(defparameter %dcmtk::+ewm-update-meta+ 2)

(defparameter %dcmtk::+ewm-create-new-meta+ 3)

(defparameter %dcmtk::+ewm-dont-update-meta+ 4)

(iffi:defitype %dcmtk::e-file-write-mode
               %dcmtk::|C:@EA@E-FILE-WRITE-MODE|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctypes.h:167:3")

(iffi:defifun ("__claw__ZN13DcmFileFormat8saveFileERK10OFFilename16E_TransferSyntax14E_EncodingType16E_GrpLenEncoding17E_PaddingEncodingjj15E_FileWriteMode"
               %dcmtk::save-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:321:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::file-name (:pointer %dcmtk::of-filename))
              (%dcmtk::write-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::encoding-type %dcmtk::e-encoding-type)
              (%dcmtk::group-length %dcmtk::e-grp-len-encoding)
              (%dcmtk::pad-encoding %dcmtk::e-padding-encoding)
              (%dcmtk::pad-length %dcmtk::uint32)
              (%dcmtk::sub-pad-length %dcmtk::uint32)
              (%dcmtk::write-mode %dcmtk::e-file-write-mode))

(iffi:defifun ("__claw__ZN13DcmFileFormat11setReadModeE14E_FileReadMode"
               %dcmtk::set-read-mode)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:388:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::read-mode %dcmtk::e-file-read-mode))

(iffi:defifun ("__claw__ZN13DcmFileFormat16validateMetaInfoE16E_TransferSyntax15E_FileWriteMode"
               %dcmtk::validate-meta-info)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:136:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::write-mode %dcmtk::e-file-write-mode))

(iffi:defifun ("__claw__ZN13DcmFileFormat5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:206:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN13DcmFileFormat5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache16E_GrpLenEncoding17E_PaddingEncodingjjj15E_FileWriteMode"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:230:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache))
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::padenc %dcmtk::e-padding-encoding)
              (%dcmtk::padlen %dcmtk::uint32)
              (%dcmtk::sub-padlen %dcmtk::uint32)
              (%dcmtk::instance-length %dcmtk::uint32)
              (%dcmtk::write-mode %dcmtk::e-file-write-mode))

(iffi:defifun ("__claw__ZN13DcmFileFormat9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:255:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN13DcmFileFormat8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:247:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN13DcmFileFormatD1Ev"
               %dcmtk::~dcm-file-format)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcfilefo.h:70:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-file-format)))

(iffi:deficlass (%dcmtk::dcm-floating-point-double :size-reporter
                 "__claw_sizeof_DcmFloatingPointDouble"
                 :alignment-reporter
                 "__claw_alignof_DcmFloatingPointDouble" :constructor
                 %dcmtk::dcm-floating-point-double :destructor
                 %dcmtk::~dcm-floating-point-double)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:36:28")

(iffi:defifun ("__claw__ZN22DcmFloatingPointDoubleC1ERKS_"
               %dcmtk::dcm-floating-point-double)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:55:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::old
               (:pointer %dcmtk::dcm-floating-point-double)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDoubleC1ERK6DcmTag"
               %dcmtk::dcm-floating-point-double)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:50:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:118:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK22DcmFloatingPointDouble5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:88:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double)))

(iffi:defifun ("__claw__ZNK22DcmFloatingPointDouble7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:83:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:105:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble10getFloat64ERdm"
               %dcmtk::get-float64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:152:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::double-val (:pointer %dcmtk::float64))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble15getFloat64ArrayERPd"
               %dcmtk::get-float64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:159:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::double-vals
               (:pointer (:pointer %dcmtk::float64))))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:129:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:169:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble5getVMEv"
               %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:124:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double)))

(iffi:defifun ("__claw__ZNK22DcmFloatingPointDouble5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:110:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double)))

(iffi:defifun ("__claw__ZNK22DcmFloatingPointDouble7matchesERK10DcmElementb"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:217:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::candidate (:pointer %dcmtk::dcm-element))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDoubleaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-floating-point-double)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:65:29"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::obj
               (:pointer %dcmtk::dcm-floating-point-double)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:141:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble10putFloat64Edm"
               %dcmtk::put-float64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:178:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::double-val %dcmtk::float64)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble15putFloat64ArrayEPKdm"
               %dcmtk::put-float64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:186:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::double-vals (:pointer %dcmtk::float64))
              (%dcmtk::num-doubles :unsigned-long))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:195:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:207:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble6verifyEb"
               %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:214:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDouble9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:225:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointDoubleD1Ev"
               %dcmtk::~dcm-floating-point-double)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfd.h:59:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-double)))

(iffi:deficlass (%dcmtk::dcm-floating-point-single :size-reporter
                 "__claw_sizeof_DcmFloatingPointSingle"
                 :alignment-reporter
                 "__claw_alignof_DcmFloatingPointSingle" :constructor
                 %dcmtk::dcm-floating-point-single :destructor
                 %dcmtk::~dcm-floating-point-single)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:35:28")

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingleC1ERKS_"
               %dcmtk::dcm-floating-point-single)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:54:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::old
               (:pointer %dcmtk::dcm-floating-point-single)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingleC1ERK6DcmTag"
               %dcmtk::dcm-floating-point-single)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:49:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:119:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK22DcmFloatingPointSingle5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:89:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single)))

(iffi:defifun ("__claw__ZNK22DcmFloatingPointSingle7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:84:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:106:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle10getFloat32ERfm"
               %dcmtk::get-float32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:153:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::float-val (:pointer %dcmtk::float32))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle15getFloat32ArrayERPf"
               %dcmtk::get-float32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:160:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::float-vals
               (:pointer (:pointer %dcmtk::float32))))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:130:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:170:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle5getVMEv"
               %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:125:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single)))

(iffi:defifun ("__claw__ZNK22DcmFloatingPointSingle5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:111:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single)))

(iffi:defifun ("__claw__ZNK22DcmFloatingPointSingle7matchesERK10DcmElementb"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:218:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::candidate (:pointer %dcmtk::dcm-element))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingleaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-floating-point-single)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:64:29"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::obj
               (:pointer %dcmtk::dcm-floating-point-single)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:142:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle10putFloat32Efm"
               %dcmtk::put-float32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:179:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::float-val %dcmtk::float32)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle15putFloat32ArrayEPKfm"
               %dcmtk::put-float32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:187:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::float-vals (:pointer %dcmtk::float32))
              (%dcmtk::num-floats :unsigned-long))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:196:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:208:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle6verifyEb"
               %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:215:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingle9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:226:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN22DcmFloatingPointSingleD1Ev"
               %dcmtk::~dcm-floating-point-single)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrfl.h:58:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-floating-point-single)))

(iffi:deficlass (%dcmtk::dcm-hash-dict :size-reporter
                 "__claw_sizeof_DcmHashDict" :alignment-reporter
                 "__claw_alignof_DcmHashDict" :constructor
                 %dcmtk::dcm-hash-dict :destructor
                 %dcmtk::~dcm-hash-dict)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:192:28")

(iffi:defifun ("__claw__ZN11DcmHashDictC1Ev" %dcmtk::dcm-hash-dict)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:197:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict)))

(iffi:defifun ("__claw__ZNK11DcmHashDict5beginEv" %dcmtk::begin
               :non-mutating t)
              (:pointer %dcmtk::dcm-hash-dict-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:234:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict)))

(iffi:defifun ("__claw__ZN11DcmHashDict5clearEv" %dcmtk::clear)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:210:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict)))

(iffi:defifun ("__claw__ZN11DcmHashDict3delERK9DcmTagKeyPKc"
               %dcmtk::del)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:228:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::priv-creator :string))

(iffi:defifun ("__claw__ZNK11DcmHashDict3endEv" %dcmtk::end
               :non-mutating t)
              (:pointer %dcmtk::dcm-hash-dict-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:238:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict)))

(iffi:defifun ("__claw__ZNK11DcmHashDict3getERK9DcmTagKeyPKc"
               %dcmtk::get :non-mutating t)
              (:pointer %dcmtk::dcm-dict-entry)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:222:25"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::priv-creator :string))

(iffi:defifun ("__claw__ZN11DcmHashDict11loadSummaryERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE"
               %dcmtk::load-summary)
              (:pointer %dcmtk::std+ostream)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:242:28"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict))
              (%dcmtk::out (:pointer %dcmtk::std+ostream)))

(iffi:defifun ("__claw__ZN11DcmHashDict3putEP12DcmDictEntry"
               %dcmtk::put)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:215:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict))
              (%dcmtk::entry (:pointer %dcmtk::dcm-dict-entry)))

(iffi:defifun ("__claw__ZNK11DcmHashDict4sizeEv" %dcmtk::size
               :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:207:9"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict)))

(iffi:defifun ("__claw__ZN11DcmHashDictD1Ev" %dcmtk::~dcm-hash-dict)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:202:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-hash-dict)))

(iffi:defifun ("__claw__ZN19DcmHashDictIteratorC1Ev"
               %dcmtk::dcm-hash-dict-iterator)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:120:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator)))

(iffi:defifun ("__claw__ZN19DcmHashDictIteratorC1ERKS_"
               %dcmtk::dcm-hash-dict-iterator)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:134:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::i (:pointer %dcmtk::dcm-hash-dict-iterator)))

(iffi:defifun ("__claw__ZN19DcmHashDictIteratorC1EPK11DcmHashDictb"
               %dcmtk::dcm-hash-dict-iterator)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:129:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::d (:pointer %dcmtk::dcm-hash-dict))
              (%dcmtk::at-end %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK19DcmHashDictIteratorneERKS_"
               %dcmtk::operator!= :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:148:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::x (:pointer %dcmtk::dcm-hash-dict-iterator)))

(iffi:defifun ("__claw__ZNK19DcmHashDictIteratordeEv"
               %dcmtk::operator* :non-mutating t)
              (:pointer %dcmtk::dcm-dict-entry)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:152:25"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator)))

(iffi:defifun ("__claw__ZN19DcmHashDictIteratorppEv"
               %dcmtk::operator++)
              (:pointer %dcmtk::dcm-hash-dict-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:156:26"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator)))

(iffi:defifun ("__claw__ZN19DcmHashDictIteratorppEi"
               %dcmtk::operator++)
              (:pointer %dcmtk::dcm-hash-dict-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:160:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::arg0 :int))

(iffi:defifun ("__claw__ZN19DcmHashDictIteratoraSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-hash-dict-iterator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:139:26"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::i (:pointer %dcmtk::dcm-hash-dict-iterator)))

(iffi:defifun ("__claw__ZNK19DcmHashDictIteratoreqERKS_"
               %dcmtk::operator== :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dchashdi.h:144:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator))
              (%dcmtk::x (:pointer %dcmtk::dcm-hash-dict-iterator)))

(iffi:defifun ("__claw_cE3AE40SE40DcmHashDictIterator_claw_dtor"
               %dcmtk::~dcm-hash-dict-iterator)
              :void
              "::"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-hash-dict-iterator)))

(iffi:deficlass (%dcmtk::dcm-input-filter :size-reporter
                 "__claw_sizeof_DcmInputFilter" :alignment-reporter
                 "__claw_alignof_DcmInputFilter")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:96:28")

(iffi:deficlass (%dcmtk::dcm-producer :size-reporter
                 "__claw_sizeof_DcmProducer" :alignment-reporter
                 "__claw_alignof_DcmProducer")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:36:28")

(iffi:defifun ("__claw__ZN14DcmInputFilter6appendER11DcmProducer"
               %dcmtk::append)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:111:16"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-filter))
              (%dcmtk::producer (:pointer %dcmtk::dcm-producer)))

(iffi:defifun ("__claw__ZN14DcmInputStream5availEv" %dcmtk::avail)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:187:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream)))

(iffi:defifun ("__claw__ZN14DcmInputStream3eosEv" %dcmtk::eos)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:178:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream)))

(iffi:defifun ("__claw__ZNK14DcmInputStream4goodEv" %dcmtk::good
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:167:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream)))

(defparameter %dcmtk::+esc-none+ 0)

(defparameter %dcmtk::+esc-unsupported+ 1)

(defparameter %dcmtk::+esc-zlib+ 2)

(iffi:defitype %dcmtk::e-stream-compression
               %dcmtk::|C:@EA@E-STREAM-COMPRESSION|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:172:3")

(iffi:defifun ("__claw__ZN14DcmInputStream24installCompressionFilterE19E_StreamCompression"
               %dcmtk::install-compression-filter)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:214:23"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::filter-type %dcmtk::e-stream-compression))

(iffi:defifun ("__claw__ZN14DcmInputStream4markEv" %dcmtk::mark)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:234:16"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream)))

(iffi:defifun ("__claw__ZNK14DcmInputStream10newFactoryEv"
               %dcmtk::new-factory :non-mutating t)
              (:pointer %dcmtk::dcm-input-stream-factory)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:225:34"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream)))

(iffi:defifun ("__claw__ZN14DcmInputStream7putbackEv"
               %dcmtk::putback)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:240:16"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream)))

(iffi:defifun ("__claw__ZN14DcmInputStream4readEPvl" %dcmtk::read)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:194:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::buf (:pointer :void))
              (%dcmtk::buflen %dcmtk::offile-off-t))

(iffi:defifun ("__claw__ZN14DcmInputStream4skipEl" %dcmtk::skip)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:200:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::skiplen %dcmtk::offile-off-t))

(iffi:defifun ("__claw__ZNK14DcmInputStream6statusEv" %dcmtk::status
               :non-mutating t)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:173:23"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream)))

(iffi:defifun ("__claw__ZNK14DcmInputStream4tellEv" %dcmtk::tell
               :non-mutating t)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:205:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream)))

(iffi:defifun ("__claw__ZNK21DcmInputStreamFactory5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-input-stream-factory)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:145:34"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream-factory)))

(iffi:defifun ("__claw__ZNK21DcmInputStreamFactory6createEv"
               %dcmtk::create :non-mutating t)
              (:pointer %dcmtk::dcm-input-stream)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:140:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream-factory)))

(iffi:defifun ("__claw__ZNK21DcmInputStreamFactory5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-input-stream-factory-type
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:150:37"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-input-stream-factory)))

(iffi:deficlass (%dcmtk::dcm-integer-string :size-reporter
                 "__claw_sizeof_DcmIntegerString" :alignment-reporter
                 "__claw_alignof_DcmIntegerString" :constructor
                 %dcmtk::dcm-integer-string :destructor
                 %dcmtk::~dcm-integer-string)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:36:28")

(iffi:defifun ("__claw__ZN16DcmIntegerStringC1ERKS_"
               %dcmtk::dcm-integer-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:53:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string))
              (%dcmtk::old (:pointer %dcmtk::dcm-integer-string)))

(iffi:defifun ("__claw__ZN16DcmIntegerStringC1ERK6DcmTagj"
               %dcmtk::dcm-integer-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN16DcmIntegerString16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-integer-string+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:128:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN16DcmIntegerString10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:98:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK16DcmIntegerString5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:68:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string)))

(iffi:defifun ("__claw__ZN16DcmIntegerString8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:85:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN16DcmIntegerString11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:115:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN16DcmIntegerString9getSint32ERim"
               %dcmtk::get-sint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:106:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string))
              (%dcmtk::sint-val (:pointer %dcmtk::sint32))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZNK16DcmIntegerString5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:90:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string)))

(iffi:defifun ("__claw__ZN16DcmIntegerStringaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-integer-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:63:23"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string))
              (%dcmtk::obj (:pointer %dcmtk::dcm-integer-string)))

(iffi:defifun ("__claw__ZN16DcmIntegerString9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:136:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN16DcmIntegerStringD1Ev"
               %dcmtk::~dcm-integer-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvris.h:57:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-integer-string)))

(iffi:defifun ("__claw__ZN7DcmItemC1Ev" %dcmtk::dcm-item)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:60:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItemC1ERKS_" %dcmtk::dcm-item)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:73:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::old (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItemC1ERK6DcmTagj" %dcmtk::dcm-item)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:67:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN7DcmItem17calcElementLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::calc-element-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:180:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN7DcmItem12canWriteXferE16E_TransferSyntaxS0_"
               %dcmtk::can-write-xfer)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:219:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::old-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZNK7DcmItem4cardEv" %dcmtk::card
               :non-mutating t)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:149:27"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZNK7DcmItem28checkForSpecificCharacterSetEv"
               %dcmtk::check-for-specific-character-set :non-mutating
               t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:345:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem5clearEv" %dcmtk::clear)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:492:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZNK7DcmItem5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:111:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem15compactElementsEj"
               %dcmtk::compact-elements)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:541:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::max-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZNK7DcmItem7compareERKS_" %dcmtk::compare
               :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:102:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem28computeGroupLengthAndPaddingE16E_GrpLenEncoding17E_PaddingEncoding16E_TransferSyntax14E_EncodingTypejjj"
               %dcmtk::compute-group-length-and-padding)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:571:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::padenc %dcmtk::e-padding-encoding)
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::padlen %dcmtk::uint32)
              (%dcmtk::sub-padlen %dcmtk::uint32)
              (%dcmtk::instance-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN7DcmItem26containsExtendedCharactersEb"
               %dcmtk::contains-extended-characters)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:330:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::check-all-strings %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK7DcmItem17containsUnknownVREv"
               %dcmtk::contains-unknown-vr :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:318:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem19convertCharacterSetER23DcmSpecificCharacterSet"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:395:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::converter
               (:pointer %dcmtk::dcm-specific-character-set)))

(iffi:defifun ("__claw__ZN7DcmItem19convertCharacterSetERK8OFStringmb"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:385:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::to-charset (:pointer %dcmtk::of-string))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::ignore-charset %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem19convertCharacterSetERK8OFStringS2_mb"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:366:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::from-charset (:pointer %dcmtk::of-string))
              (%dcmtk::to-charset (:pointer %dcmtk::of-string))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::update-charset %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem13convertToUTF8Ev"
               %dcmtk::convert-to-utf8)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:404:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:128:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN7DcmItem20findAndDeleteElementERK9DcmTagKeybb"
               %dcmtk::find-and-delete-element)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1042:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::all-occurrences %dcmtk::of-bool)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem25findAndDeleteSequenceItemERK9DcmTagKeyl"
               %dcmtk::find-and-delete-sequence-item)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1052:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::seq-tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::item-num :long))

(iffi:defifun ("__claw__ZN7DcmItem17findAndGetElementERK9DcmTagKeyRP10DcmElementbb"
               %dcmtk::find-and-get-element)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:610:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::element
               (:pointer (:pointer %dcmtk::dcm-element)))
              (%dcmtk::search-into-sub %dcmtk::of-bool)
              (%dcmtk::create-copy %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18findAndGetElementsERK9DcmTagKeyR8DcmStack"
               %dcmtk::find-and-get-elements)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:622:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::result-stack (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZN7DcmItem17findAndGetFloat32ERK9DcmTagKeyRfmb"
               %dcmtk::find-and-get-float32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:917:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::float32))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem22findAndGetFloat32ArrayERK9DcmTagKeyRPKfPmb"
               %dcmtk::find-and-get-float32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:931:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer (:pointer %dcmtk::float32)))
              (%dcmtk::count (:pointer :unsigned-long))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem17findAndGetFloat64ERK9DcmTagKeyRdmb"
               %dcmtk::find-and-get-float64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:945:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::float64))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem22findAndGetFloat64ArrayERK9DcmTagKeyRPKdPmb"
               %dcmtk::find-and-get-float64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:959:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer (:pointer %dcmtk::float64)))
              (%dcmtk::count (:pointer :unsigned-long))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem17findAndGetLongIntERK9DcmTagKeyRlmb"
               %dcmtk::find-and-get-long-int)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:903:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer :long))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18findAndGetOFStringERK9DcmTagKeyR8OFStringmb"
               %dcmtk::find-and-get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:676:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem23findAndGetOFStringArrayERK9DcmTagKeyR8OFStringb"
               %dcmtk::find-and-get-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:694:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18findAndGetSequenceERK9DcmTagKeyRP18DcmSequenceOfItemsbb"
               %dcmtk::find-and-get-sequence)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:974:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::seq-tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::sequence
               (:pointer (:pointer %dcmtk::dcm-sequence-of-items)))
              (%dcmtk::search-into-sub %dcmtk::of-bool)
              (%dcmtk::create-copy %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem22findAndGetSequenceItemERK9DcmTagKeyRPS_lb"
               %dcmtk::find-and-get-sequence-item)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:991:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::seq-tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::item (:pointer (:pointer %dcmtk::dcm-item)))
              (%dcmtk::item-num :long)
              (%dcmtk::create-copy %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem16findAndGetSint16ERK9DcmTagKeyRsmb"
               %dcmtk::find-and-get-sint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:763:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::sint16))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem21findAndGetSint16ArrayERK9DcmTagKeyRPKsPmb"
               %dcmtk::find-and-get-sint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:777:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer (:pointer %dcmtk::sint16)))
              (%dcmtk::count (:pointer :unsigned-long))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem16findAndGetSint32ERK9DcmTagKeyRimb"
               %dcmtk::find-and-get-sint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:819:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::sint32))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem21findAndGetSint32ArrayERK9DcmTagKeyRPKiPmb"
               %dcmtk::find-and-get-sint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:833:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer (:pointer %dcmtk::sint32)))
              (%dcmtk::count (:pointer :unsigned-long))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem16findAndGetSint64ERK9DcmTagKeyRlmb"
               %dcmtk::find-and-get-sint64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:875:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::sint64))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem21findAndGetSint64ArrayERK9DcmTagKeyRPKlPmb"
               %dcmtk::find-and-get-sint64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:889:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer (:pointer %dcmtk::sint64)))
              (%dcmtk::count (:pointer :unsigned-long))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem16findAndGetStringERK9DcmTagKeyRPKcRjb"
               %dcmtk::find-and-get-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:655:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer :string))
              (%dcmtk::length (:pointer %dcmtk::uint32))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem16findAndGetStringERK9DcmTagKeyRPKcb"
               %dcmtk::find-and-get-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:636:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer :string))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem16findAndGetUint16ERK9DcmTagKeyRtmb"
               %dcmtk::find-and-get-uint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:735:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::uint16))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem21findAndGetUint16ArrayERK9DcmTagKeyRPKtPmb"
               %dcmtk::find-and-get-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:749:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer (:pointer %dcmtk::uint16)))
              (%dcmtk::count (:pointer :unsigned-long))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem16findAndGetUint32ERK9DcmTagKeyRjmb"
               %dcmtk::find-and-get-uint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:791:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::uint32))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem21findAndGetUint32ArrayERK9DcmTagKeyRPKjPmb"
               %dcmtk::find-and-get-uint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:805:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer (:pointer %dcmtk::uint32)))
              (%dcmtk::count (:pointer :unsigned-long))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem16findAndGetUint64ERK9DcmTagKeyRmmb"
               %dcmtk::find-and-get-uint64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:847:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::uint64))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem21findAndGetUint64ArrayERK9DcmTagKeyRPKmPmb"
               %dcmtk::find-and-get-uint64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:861:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer (:pointer %dcmtk::uint64)))
              (%dcmtk::count (:pointer :unsigned-long))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem15findAndGetUint8ERK9DcmTagKeyRhmb"
               %dcmtk::find-and-get-uint8)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:707:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer %dcmtk::uint8))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem20findAndGetUint8ArrayERK9DcmTagKeyRPKhPmb"
               %dcmtk::find-and-get-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:721:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::value (:pointer (:pointer %dcmtk::uint8)))
              (%dcmtk::count (:pointer :unsigned-long))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem26findAndInsertCopyOfElementERK9DcmTagKeyPS_b"
               %dcmtk::find-and-insert-copy-of-element)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1030:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag-key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::dest-item (:pointer %dcmtk::dcm-item))
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem24findOrCreateSequenceItemERK6DcmTagRPS_l"
               %dcmtk::find-or-create-sequence-item)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1013:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::seq-tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::item (:pointer (:pointer %dcmtk::dcm-item)))
              (%dcmtk::item-num :long))

(iffi:defifun ("__claw__ZN7DcmItem10getElementEm"
               %dcmtk::get-element)
              (:pointer %dcmtk::dcm-element)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:427:25"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN7DcmItem9getLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::get-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:195:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN7DcmItem17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:144:27"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem13getParentItemEv"
               %dcmtk::get-parent-item)
              (:pointer %dcmtk::dcm-item)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:212:22"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:138:27"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZNK7DcmItem5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:133:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem6insertEP10DcmElementbb"
               %dcmtk::insert)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:418:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::elem (:pointer %dcmtk::dcm-element))
              (%dcmtk::replace-old %dcmtk::of-bool)
              (%dcmtk::check-insert-order %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18insertEmptyElementERK6DcmTagb"
               %dcmtk::insert-empty-element)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1283:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18insertSequenceItemERK6DcmTagPS_l"
               %dcmtk::insert-sequence-item)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1299:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::seq-tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::item (:pointer %dcmtk::dcm-item))
              (%dcmtk::item-num :long))

(iffi:defifun ("__claw__ZNK7DcmItem32isAffectedBySpecificCharacterSetEv"
               %dcmtk::is-affected-by-specific-character-set
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:338:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem7isEmptyEb" %dcmtk::is-empty)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:487:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK7DcmItem6isLeafEv" %dcmtk::is-leaf
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:157:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZNK7DcmItem8isNestedEv" %dcmtk::is-nested
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:163:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem21loadAllDataIntoMemoryEv"
               %dcmtk::load-all-data-into-memory)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:534:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem15newDicomElementERP10DcmElementRK9DcmTagKeyPKc"
               %dcmtk::dcm-item+new-dicom-element)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1327:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::new-element
               (:pointer (:pointer %dcmtk::dcm-element)))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::private-creator :string))

(iffi:defifun ("__claw__ZN7DcmItem15newDicomElementERK9DcmTagKeyPKc"
               %dcmtk::dcm-item+new-dicom-element)
              (:pointer %dcmtk::dcm-element)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1313:25"
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::private-creator :string))

(iffi:defifun ("__claw__ZN7DcmItem21newDicomElementWithVRERP10DcmElementRK6DcmTag"
               %dcmtk::dcm-item+new-dicom-element-with-vr)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1340:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::new-element
               (:pointer (:pointer %dcmtk::dcm-element)))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN7DcmItem15nextInContainerEPK9DcmObject"
               %dcmtk::next-in-container)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:457:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN7DcmItem10nextObjectER8DcmStackb"
               %dcmtk::next-object)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:444:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::stack (:pointer %dcmtk::dcm-stack))
              (%dcmtk::into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItemaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-item)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:80:14"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::obj (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:172:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN7DcmItem19putAndInsertFloat32ERK6DcmTagfmb"
               %dcmtk::put-and-insert-float32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1215:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value %dcmtk::float32)
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem24putAndInsertFloat32ArrayERK6DcmTagPKfmb"
               %dcmtk::put-and-insert-float32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1228:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value (:pointer %dcmtk::float32))
              (%dcmtk::count :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem19putAndInsertFloat64ERK6DcmTagdmb"
               %dcmtk::put-and-insert-float64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1242:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value %dcmtk::float64)
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem24putAndInsertFloat64ArrayERK6DcmTagPKdmb"
               %dcmtk::put-and-insert-float64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1255:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value (:pointer %dcmtk::float64))
              (%dcmtk::count :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem25putAndInsertOFStringArrayERK6DcmTagRK8OFStringb"
               %dcmtk::put-and-insert-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1094:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18putAndInsertSint16ERK6DcmTagsmb"
               %dcmtk::put-and-insert-sint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1147:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value %dcmtk::sint16)
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem23putAndInsertSint16ArrayERK6DcmTagPKsmb"
               %dcmtk::put-and-insert-sint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1160:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value (:pointer %dcmtk::sint16))
              (%dcmtk::count :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18putAndInsertSint32ERK6DcmTagimb"
               %dcmtk::put-and-insert-sint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1201:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value %dcmtk::sint32)
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18putAndInsertStringERK6DcmTagPKcb"
               %dcmtk::put-and-insert-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1066:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value :string)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18putAndInsertStringERK6DcmTagPKcjb"
               %dcmtk::put-and-insert-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1081:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value :string)
              (%dcmtk::length %dcmtk::uint32)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18putAndInsertTagKeyERK6DcmTagRK9DcmTagKeymb"
               %dcmtk::put-and-insert-tag-key)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1269:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18putAndInsertUint16ERK6DcmTagtmb"
               %dcmtk::put-and-insert-uint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1120:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value %dcmtk::uint16)
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem23putAndInsertUint16ArrayERK6DcmTagPKtmb"
               %dcmtk::put-and-insert-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1133:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value (:pointer %dcmtk::uint16))
              (%dcmtk::count :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18putAndInsertUint32ERK6DcmTagjmb"
               %dcmtk::put-and-insert-uint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1174:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value %dcmtk::uint32)
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem23putAndInsertUint32ArrayERK6DcmTagPKjmb"
               %dcmtk::put-and-insert-uint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1187:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value (:pointer %dcmtk::uint32))
              (%dcmtk::count :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem22putAndInsertUint8ArrayERK6DcmTagPKhmb"
               %dcmtk::put-and-insert-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:1106:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::value (:pointer %dcmtk::uint8))
              (%dcmtk::count :unsigned-long)
              (%dcmtk::replace-old %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:235:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::ixfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN7DcmItem12readUntilTagER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingjRK9DcmTagKey"
               %dcmtk::read-until-tag)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:256:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::ixfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32)
              (%dcmtk::stop-parsing-at-element
               (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN7DcmItem6removeERK9DcmTagKey"
               %dcmtk::remove)
              (:pointer %dcmtk::dcm-element)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:481:25"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN7DcmItem6removeEP9DcmObject"
               %dcmtk::remove)
              (:pointer %dcmtk::dcm-element)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:473:25"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::elem (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN7DcmItem6removeEm" %dcmtk::remove)
              (:pointer %dcmtk::dcm-element)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:465:25"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN7DcmItem6searchERK9DcmTagKeyR8DcmStack12E_SearchModeb"
               %dcmtk::search)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:522:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::xtag (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::result-stack (:pointer %dcmtk::dcm-stack))
              (%dcmtk::mode %dcmtk::e-search-mode)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem9tagExistsERK9DcmTagKeyb"
               %dcmtk::tag-exists)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:586:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem18tagExistsWithValueERK9DcmTagKeyb"
               %dcmtk::tag-exists-with-value)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:596:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem11transferEndEv"
               %dcmtk::transfer-end)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:206:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem12transferInitEv"
               %dcmtk::transfer-init)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:201:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN7DcmItem6verifyEb" %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:498:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:269:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN7DcmItem9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:287:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN7DcmItem12writeJsonExtERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormatbb"
               %dcmtk::write-json-ext)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:298:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format))
              (%dcmtk::print-braces %dcmtk::of-bool)
              (%dcmtk::print-newline %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmItem20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:310:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN7DcmItem8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:279:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN7DcmItemD1Ev" %dcmtk::~dcm-item)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcitem.h:106:13"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-item)))

(iffi:deficlass (%dcmtk::dcm-list :size-reporter
                 "__claw_sizeof_DcmList" :alignment-reporter
                 "__claw_alignof_DcmList" :constructor
                 %dcmtk::dcm-list :destructor %dcmtk::~dcm-list)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:98:28")

(iffi:defifun ("__claw__ZN7DcmListC1Ev" %dcmtk::dcm-list)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:102:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list)))

(iffi:defifun ("__claw__ZN7DcmList6appendEP9DcmObject"
               %dcmtk::append)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:111:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK7DcmList4cardEv" %dcmtk::card
               :non-mutating t)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:159:26"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list)))

(iffi:defifun ("__claw__ZN7DcmList17deleteAllElementsEv"
               %dcmtk::delete-all-elements)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:156:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list)))

(iffi:defifun ("__claw__ZNK7DcmList5emptyEv" %dcmtk::empty
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:162:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list)))

(defparameter %dcmtk::+elp-atpos+ 0)

(defparameter %dcmtk::+elp-first+ 1)

(defparameter %dcmtk::+elp-last+ 2)

(defparameter %dcmtk::+elp-prev+ 3)

(defparameter %dcmtk::+elp-next+ 4)

(iffi:defitype %dcmtk::e-list-pos
               %dcmtk::|C:@EA@E-LIST-POS|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:92:3")

(iffi:defifun ("__claw__ZN7DcmList3getE9E_ListPos" %dcmtk::get)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:136:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list))
              (%dcmtk::pos %dcmtk::e-list-pos))

(iffi:defifun ("__claw__ZN7DcmList6insertEP9DcmObject9E_ListPos"
               %dcmtk::insert)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:124:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object))
              (%dcmtk::pos %dcmtk::e-list-pos))

(iffi:defifun ("__claw__ZN7DcmList7prependEP9DcmObject"
               %dcmtk::prepend)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:117:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN7DcmList6removeEv" %dcmtk::remove)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:130:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list)))

(iffi:defifun ("__claw__ZN7DcmList4seekE9E_ListPos" %dcmtk::seek)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:143:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list))
              (%dcmtk::pos %dcmtk::e-list-pos))

(iffi:defifun ("__claw__ZN7DcmList7seek_toEm" %dcmtk::seek-to)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:150:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list))
              (%dcmtk::absolute-position :unsigned-long))

(iffi:defifun ("__claw__ZNK7DcmList5validEv" %dcmtk::valid
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:165:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list)))

(iffi:defifun ("__claw__ZN7DcmListD1Ev" %dcmtk::~dcm-list)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:105:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list)))

(iffi:deficlass (%dcmtk::dcm-list-node :size-reporter
                 "__claw_sizeof_DcmListNode" :alignment-reporter
                 "__claw_alignof_DcmListNode" :constructor
                 %dcmtk::dcm-list-node :destructor
                 %dcmtk::~dcm-list-node)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:40:28")

(iffi:defifun ("__claw__ZN11DcmListNodeC1EP9DcmObject"
               %dcmtk::dcm-list-node)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:47:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list-node))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN11DcmListNode5valueEv" %dcmtk::value)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:53:23"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list-node)))

(iffi:defifun ("__claw__ZN11DcmListNodeD1Ev" %dcmtk::~dcm-list-node)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dclist.h:50:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-list-node)))

(iffi:deficlass (%dcmtk::dcm-long-string :size-reporter
                 "__claw_sizeof_DcmLongString" :alignment-reporter
                 "__claw_alignof_DcmLongString" :constructor
                 %dcmtk::dcm-long-string :destructor
                 %dcmtk::~dcm-long-string)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:36:28")

(iffi:defifun ("__claw__ZN13DcmLongStringC1ERKS_"
               %dcmtk::dcm-long-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:53:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string))
              (%dcmtk::old (:pointer %dcmtk::dcm-long-string)))

(iffi:defifun ("__claw__ZN13DcmLongStringC1ERK6DcmTagj"
               %dcmtk::dcm-long-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN13DcmLongString16checkStringValueERK8OFStringS2_S2_"
               %dcmtk::dcm-long-string+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:135:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::charset (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN13DcmLongString10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:100:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmLongString5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:68:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string)))

(iffi:defifun ("__claw__ZN13DcmLongString8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:85:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN13DcmLongString11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:109:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmLongString5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:90:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string)))

(iffi:defifun ("__claw__ZN13DcmLongStringaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-long-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:63:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string))
              (%dcmtk::obj (:pointer %dcmtk::dcm-long-string)))

(iffi:defifun ("__claw__ZN13DcmLongString9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:118:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN13DcmLongStringD1Ev"
               %dcmtk::~dcm-long-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlo.h:57:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-long-string)))

(iffi:deficlass (%dcmtk::dcm-long-text :size-reporter
                 "__claw_sizeof_DcmLongText" :alignment-reporter
                 "__claw_alignof_DcmLongText" :constructor
                 %dcmtk::dcm-long-text :destructor
                 %dcmtk::~dcm-long-text)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:32:28")

(iffi:defifun ("__claw__ZN11DcmLongTextC1ERKS_"
               %dcmtk::dcm-long-text)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:48:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text))
              (%dcmtk::old (:pointer %dcmtk::dcm-long-text)))

(iffi:defifun ("__claw__ZN11DcmLongTextC1ERK6DcmTagj"
               %dcmtk::dcm-long-text)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:42:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN11DcmLongText16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-long-text+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:152:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::charset (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN11DcmLongText10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:114:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK11DcmLongText5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:83:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text)))

(iffi:defifun ("__claw__ZNK11DcmLongText7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:78:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN11DcmLongText8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:100:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN11DcmLongText11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:130:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN11DcmLongText16getOFStringArrayER8OFStringb"
               %dcmtk::get-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:139:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN11DcmLongText5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:122:27"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text)))

(iffi:defifun ("__claw__ZNK11DcmLongText5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:105:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text)))

(iffi:defifun ("__claw__ZN11DcmLongTextaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-long-text)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:58:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text))
              (%dcmtk::obj (:pointer %dcmtk::dcm-long-text)))

(iffi:defifun ("__claw__ZN11DcmLongTextD1Ev" %dcmtk::~dcm-long-text)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrlt.h:52:13"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-long-text)))

(iffi:defifun ("__claw__ZN11DcmMetaInfoC1Ev" %dcmtk::dcm-meta-info)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:57:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZN11DcmMetaInfoC1ERKS_"
               %dcmtk::dcm-meta-info)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:62:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::old (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo17calcElementLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::calc-element-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:136:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZNK11DcmMetaInfo5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:77:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:94:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK11DcmMetaInfo15getOriginalXferEv"
               %dcmtk::get-original-xfer :non-mutating t)
              %dcmtk::e-transfer-syntax
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:109:22"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZNK11DcmMetaInfo5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:99:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo8loadFileERK10OFFilename16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::load-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:195:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::file-name (:pointer %dcmtk::of-filename))
              (%dcmtk::read-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::group-length %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN11DcmMetaInfoaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-meta-info)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:68:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::obj (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:118:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:151:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN11DcmMetaInfo19removeInvalidGroupsEv"
               %dcmtk::remove-invalid-groups)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:103:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo11transferEndEv"
               %dcmtk::transfer-end)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:132:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo12transferInitEv"
               %dcmtk::transfer-init)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:127:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:163:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:181:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN11DcmMetaInfo8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:173:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN11DcmMetaInfoD1Ev" %dcmtk::~dcm-meta-info)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcmetinf.h:72:13"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-meta-info)))

(iffi:defifun ("__claw__ZN9DcmObject17calcElementLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::calc-element-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:455:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN9DcmObject12canWriteXferE16E_TransferSyntaxS0_"
               %dcmtk::can-write-xfer)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:473:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::old-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZN9DcmObject5clearEv" %dcmtk::clear)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:567:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:256:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject26containsExtendedCharactersEb"
               %dcmtk::contains-extended-characters)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:544:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::check-all-strings %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK9DcmObject17containsUnknownVREv"
               %dcmtk::contains-unknown-vr :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:538:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject19convertCharacterSetER23DcmSpecificCharacterSet"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:556:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::converter
               (:pointer %dcmtk::dcm-specific-character-set)))

(iffi:defifun ("__claw__ZN9DcmObject8copyFromERKS_"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:276:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject7getETagEv" %dcmtk::get-e-tag
               :non-mutating t)
              %dcmtk::uint16
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:392:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject7getGTagEv" %dcmtk::get-g-tag
               :non-mutating t)
              %dcmtk::uint16
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:387:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject9getLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::get-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:465:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZNK9DcmObject14getLengthFieldEv"
               %dcmtk::get-length-field :non-mutating t)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:645:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:426:27"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject9getParentEv" %dcmtk::get-parent)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:367:23"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject9getParentEv" %dcmtk::get-parent
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:376:29"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject13getParentItemEv"
               %dcmtk::get-parent-item)
              (:pointer %dcmtk::dcm-item)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:358:22"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject11getRootItemEv"
               %dcmtk::get-root-item)
              (:pointer %dcmtk::dcm-item)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:351:14"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject6getTagEv" %dcmtk::get-tag
               :non-mutating t)
              (:pointer %dcmtk::dcm-tag)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:397:26"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:421:27"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject5getVREv" %dcmtk::get-vr
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:293:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:284:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject32isAffectedBySpecificCharacterSetEv"
               %dcmtk::is-affected-by-specific-character-set
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:549:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject7isEmptyEb" %dcmtk::is-empty)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:562:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK9DcmObject6isLeafEv" %dcmtk::is-leaf
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:309:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject8isNestedEv" %dcmtk::is-nested
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:315:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject10isSignableEv"
               %dcmtk::is-signable :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:533:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK9DcmObject9isaStringEv" %dcmtk::isa-string
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:301:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject21loadAllDataIntoMemoryEv"
               %dcmtk::load-all-data-into-memory)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:638:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject15nextInContainerEPKS_"
               %dcmtk::next-in-container)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:585:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject10nextObjectER8DcmStackb"
               %dcmtk::next-object)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:602:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::stack (:pointer %dcmtk::dcm-stack))
              (%dcmtk::into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN9DcmObjectaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:262:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:324:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN9DcmObject4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:485:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::ixfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN9DcmObject6searchERK9DcmTagKeyR8DcmStack12E_SearchModeb"
               %dcmtk::search)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:626:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::xtag (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::result-stack (:pointer %dcmtk::dcm-stack))
              (%dcmtk::mode %dcmtk::e-search-mode)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN9DcmObject7setGTagEt" %dcmtk::set-g-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:403:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::gtag %dcmtk::uint16))

(iffi:defifun ("__claw__ZN9DcmObject9setParentEPS_"
               %dcmtk::set-parent)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:382:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::parent (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject5setVRE6DcmEVR" %dcmtk::set-vr)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:412:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::arg0 %dcmtk::dcm-evr))

(iffi:defifun ("__claw__ZN9DcmObject11transferEndEv"
               %dcmtk::transfer-end)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:343:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject12transferInitEv"
               %dcmtk::transfer-init)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:338:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(defparameter %dcmtk::+erw-init+ 0)

(defparameter %dcmtk::+erw-ready+ 1)

(defparameter %dcmtk::+erw-in-work+ 2)

(defparameter %dcmtk::+erw-not-initialized+ 3)

(iffi:defitype %dcmtk::e-transfer-state
               %dcmtk::|C:@EA@E-TRANSFER-STATE|
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctypes.h:141:3")

(iffi:defifun ("__claw__ZNK9DcmObject13transferStateEv"
               %dcmtk::transfer-state :non-mutating t)
              %dcmtk::e-transfer-state
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:333:28"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN9DcmObject6verifyEb" %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:573:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN9DcmObject5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:497:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN9DcmObject9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:515:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN9DcmObject20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:525:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN9DcmObject8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:507:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-object))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:deficlass (%dcmtk::dcm-object+print-helper :size-reporter
                 "__claw_sizeof_DcmObject_PrintHelper"
                 :alignment-reporter
                 "__claw_alignof_DcmObject_PrintHelper" :constructor
                 %dcmtk::print-helper :destructor
                 %dcmtk::~print-helper)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:777:32"
                (%dcmtk::dcmobj- (:pointer %dcmtk::dcm-object)
                 :setter "__claw_set_DcmObject_PrintHelper_dcmobj_"
                 :getter "__claw_get_DcmObject_PrintHelper_dcmobj_"
                 :documentation
                 "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:795:20"))

(iffi:defifun ("__claw__ZN9DcmObject11PrintHelperC1ERS_mi"
               %dcmtk::print-helper)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcobject.h:791:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-object+print-helper))
              (%dcmtk::dcmobj (:pointer %dcmtk::dcm-object))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int))

(iffi:defifun ("__claw_cE3AE40SE40DcmObjectE40SE40PrintHelper_claw_dtor"
               %dcmtk::~print-helper)
              :void
              "::"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-object+print-helper)))

(iffi:deficlass (%dcmtk::dcm-other64bit-very-long :size-reporter
                 "__claw_sizeof_DcmOther64bitVeryLong"
                 :alignment-reporter
                 "__claw_alignof_DcmOther64bitVeryLong" :constructor
                 %dcmtk::dcm-other64bit-very-long :destructor
                 %dcmtk::~dcm-other64bit-very-long)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:37:28")

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLongC1ERKS_"
               %dcmtk::dcm-other64bit-very-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:56:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long))
              (%dcmtk::old
               (:pointer %dcmtk::dcm-other64bit-very-long)))

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLongC1ERK6DcmTag"
               %dcmtk::dcm-other64bit-very-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:51:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLong10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:100:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK21DcmOther64bitVeryLong5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:71:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long)))

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLong8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:88:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLong17createUint64ArrayEjRPm"
               %dcmtk::create-uint64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:131:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long))
              (%dcmtk::num-quad-words %dcmtk::uint32)
              (%dcmtk::quad-words
               (:pointer (:pointer %dcmtk::uint64))))

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLong5getVMEv"
               %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:106:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long)))

(iffi:defifun ("__claw__ZNK21DcmOther64bitVeryLong5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:93:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long)))

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLongaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-other64bit-very-long)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:66:28"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long))
              (%dcmtk::obj
               (:pointer %dcmtk::dcm-other64bit-very-long)))

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLong9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:121:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLong8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:113:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN21DcmOther64bitVeryLongD1Ev"
               %dcmtk::~dcm-other64bit-very-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrov.h:60:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other64bit-very-long)))

(iffi:deficlass (%dcmtk::dcm-other-byte-other-word :size-reporter
                 "__claw_sizeof_DcmOtherByteOtherWord"
                 :alignment-reporter
                 "__claw_alignof_DcmOtherByteOtherWord" :constructor
                 %dcmtk::dcm-other-byte-other-word :destructor
                 %dcmtk::~dcm-other-byte-other-word)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:38:28")

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWordC1ERKS_"
               %dcmtk::dcm-other-byte-other-word)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:57:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::old
               (:pointer %dcmtk::dcm-other-byte-other-word)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWordC1ERK6DcmTag"
               %dcmtk::dcm-other-byte-other-word)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:52:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord12canWriteXferE16E_TransferSyntaxS0_"
               %dcmtk::can-write-xfer)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:163:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::old-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:122:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK21DcmOtherByteOtherWord5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:93:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word)))

(iffi:defifun ("__claw__ZNK21DcmOtherByteOtherWord7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:78:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:110:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord17createUint16ArrayEjRPt"
               %dcmtk::create-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:299:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::num-words %dcmtk::uint32)
              (%dcmtk::words (:pointer (:pointer %dcmtk::uint16))))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord16createUint8ArrayEjRPh"
               %dcmtk::create-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:289:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::num-bytes %dcmtk::uint32)
              (%dcmtk::bytes (:pointer (:pointer %dcmtk::uint8))))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:133:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:247:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord16getOFStringArrayER8OFStringb"
               %dcmtk::get-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:260:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord9getUint16ERtm"
               %dcmtk::get-uint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:221:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::word-val (:pointer %dcmtk::uint16))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord14getUint16ArrayERPt"
               %dcmtk::get-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:236:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::word-vals
               (:pointer (:pointer %dcmtk::uint16))))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord8getUint8ERhm"
               %dcmtk::get-uint8)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:212:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::byte-val (:pointer %dcmtk::uint8))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord13getUint8ArrayERPh"
               %dcmtk::get-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:229:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::byte-vals (:pointer (:pointer %dcmtk::uint8))))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord5getVMEv"
               %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:128:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word)))

(iffi:defifun ("__claw__ZNK21DcmOtherByteOtherWord5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:115:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWordaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-other-byte-other-word)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:88:28"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::obj
               (:pointer %dcmtk::dcm-other-byte-other-word)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:152:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:309:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:322:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord14putUint16ArrayEPKtm"
               %dcmtk::put-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:279:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::word-value (:pointer %dcmtk::uint16))
              (%dcmtk::num-words :unsigned-long))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord13putUint8ArrayEPKhm"
               %dcmtk::put-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:269:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::byte-value (:pointer %dcmtk::uint8))
              (%dcmtk::num-bytes :unsigned-long))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord5setVRE6DcmEVR"
               %dcmtk::set-vr)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:141:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::vr %dcmtk::dcm-evr))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord6verifyEb"
               %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:329:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:173:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:191:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:201:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWord8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:183:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN21DcmOtherByteOtherWordD1Ev"
               %dcmtk::~dcm-other-byte-other-word)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrobow.h:82:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-byte-other-word)))

(iffi:deficlass (%dcmtk::dcm-other-double :size-reporter
                 "__claw_sizeof_DcmOtherDouble" :alignment-reporter
                 "__claw_alignof_DcmOtherDouble" :constructor
                 %dcmtk::dcm-other-double :destructor
                 %dcmtk::~dcm-other-double)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:37:28")

(iffi:defifun ("__claw__ZN14DcmOtherDoubleC1ERKS_"
               %dcmtk::dcm-other-double)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:54:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double))
              (%dcmtk::old (:pointer %dcmtk::dcm-other-double)))

(iffi:defifun ("__claw__ZN14DcmOtherDoubleC1ERK6DcmTagj"
               %dcmtk::dcm-other-double)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:48:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN14DcmOtherDouble10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:98:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK14DcmOtherDouble5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:69:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double)))

(iffi:defifun ("__claw__ZN14DcmOtherDouble8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:86:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN14DcmOtherDouble18createFloat64ArrayEjRPd"
               %dcmtk::create-float64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:129:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double))
              (%dcmtk::num-doubles %dcmtk::uint32)
              (%dcmtk::double-vals
               (:pointer (:pointer %dcmtk::float64))))

(iffi:defifun ("__claw__ZN14DcmOtherDouble5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:104:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double)))

(iffi:defifun ("__claw__ZNK14DcmOtherDouble5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:91:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double)))

(iffi:defifun ("__claw__ZN14DcmOtherDoubleaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-other-double)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:64:21"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double))
              (%dcmtk::obj (:pointer %dcmtk::dcm-other-double)))

(iffi:defifun ("__claw__ZN14DcmOtherDouble9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:119:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN14DcmOtherDouble8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:111:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN14DcmOtherDoubleD1Ev"
               %dcmtk::~dcm-other-double)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrod.h:58:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-double)))

(iffi:deficlass (%dcmtk::dcm-other-float :size-reporter
                 "__claw_sizeof_DcmOtherFloat" :alignment-reporter
                 "__claw_alignof_DcmOtherFloat" :constructor
                 %dcmtk::dcm-other-float :destructor
                 %dcmtk::~dcm-other-float)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:37:28")

(iffi:defifun ("__claw__ZN13DcmOtherFloatC1ERKS_"
               %dcmtk::dcm-other-float)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:54:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float))
              (%dcmtk::old (:pointer %dcmtk::dcm-other-float)))

(iffi:defifun ("__claw__ZN13DcmOtherFloatC1ERK6DcmTagj"
               %dcmtk::dcm-other-float)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:48:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN13DcmOtherFloat10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:98:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmOtherFloat5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:69:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float)))

(iffi:defifun ("__claw__ZN13DcmOtherFloat8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:86:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN13DcmOtherFloat18createFloat32ArrayEjRPf"
               %dcmtk::create-float32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:129:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float))
              (%dcmtk::num-floats %dcmtk::uint32)
              (%dcmtk::float-vals
               (:pointer (:pointer %dcmtk::float32))))

(iffi:defifun ("__claw__ZN13DcmOtherFloat5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:104:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float)))

(iffi:defifun ("__claw__ZNK13DcmOtherFloat5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:91:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float)))

(iffi:defifun ("__claw__ZN13DcmOtherFloataSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-other-float)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:64:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float))
              (%dcmtk::obj (:pointer %dcmtk::dcm-other-float)))

(iffi:defifun ("__claw__ZN13DcmOtherFloat9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:119:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN13DcmOtherFloat8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:111:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN13DcmOtherFloatD1Ev"
               %dcmtk::~dcm-other-float)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrof.h:58:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-float)))

(iffi:deficlass (%dcmtk::dcm-other-long :size-reporter
                 "__claw_sizeof_DcmOtherLong" :alignment-reporter
                 "__claw_alignof_DcmOtherLong" :constructor
                 %dcmtk::dcm-other-long :destructor
                 %dcmtk::~dcm-other-long)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:37:28")

(iffi:defifun ("__claw__ZN12DcmOtherLongC1ERKS_"
               %dcmtk::dcm-other-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:56:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long))
              (%dcmtk::old (:pointer %dcmtk::dcm-other-long)))

(iffi:defifun ("__claw__ZN12DcmOtherLongC1ERK6DcmTag"
               %dcmtk::dcm-other-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:51:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN12DcmOtherLong10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:100:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK12DcmOtherLong5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:71:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long)))

(iffi:defifun ("__claw__ZN12DcmOtherLong8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:88:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN12DcmOtherLong17createUint32ArrayEjRPj"
               %dcmtk::create-uint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:131:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long))
              (%dcmtk::num-double-words %dcmtk::uint32)
              (%dcmtk::double-words
               (:pointer (:pointer %dcmtk::uint32))))

(iffi:defifun ("__claw__ZN12DcmOtherLong5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:106:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long)))

(iffi:defifun ("__claw__ZNK12DcmOtherLong5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:93:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long)))

(iffi:defifun ("__claw__ZN12DcmOtherLongaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-other-long)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:66:19"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long))
              (%dcmtk::obj (:pointer %dcmtk::dcm-other-long)))

(iffi:defifun ("__claw__ZN12DcmOtherLong9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:121:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN12DcmOtherLong8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:113:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN12DcmOtherLongD1Ev"
               %dcmtk::~dcm-other-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrol.h:60:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-other-long)))

(iffi:deficlass (%dcmtk::dcm-output-filter :size-reporter
                 "__claw_sizeof_DcmOutputFilter" :alignment-reporter
                 "__claw_alignof_DcmOutputFilter")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:90:28")

(iffi:defifun ("__claw__ZN15DcmOutputFilter6appendER11DcmConsumer"
               %dcmtk::append)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:105:16"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-filter))
              (%dcmtk::consumer (:pointer %dcmtk::dcm-consumer)))

(iffi:defifun ("__claw__ZNK15DcmOutputStream5availEv" %dcmtk::avail
               :non-mutating t)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:145:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-stream)))

(iffi:defifun ("__claw__ZN15DcmOutputStream5flushEv" %dcmtk::flush)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:159:16"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-stream)))

(iffi:defifun ("__claw__ZNK15DcmOutputStream4goodEv" %dcmtk::good
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:123:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-stream)))

(iffi:defifun ("__claw__ZN15DcmOutputStream24installCompressionFilterE19E_StreamCompression"
               %dcmtk::install-compression-filter)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:173:23"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::filter-type %dcmtk::e-stream-compression))

(iffi:defifun ("__claw__ZNK15DcmOutputStream9isFlushedEv"
               %dcmtk::is-flushed :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:136:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-stream)))

(iffi:defifun ("__claw__ZNK15DcmOutputStream6statusEv" %dcmtk::status
               :non-mutating t)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:129:23"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-stream)))

(iffi:defifun ("__claw__ZNK15DcmOutputStream4tellEv" %dcmtk::tell
               :non-mutating t)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:164:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-stream)))

(iffi:defifun ("__claw__ZN15DcmOutputStream5writeEPKvl"
               %dcmtk::write)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:152:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::buf (:pointer :void))
              (%dcmtk::buflen %dcmtk::offile-off-t))

(iffi:defifun ("__claw__ZN15DcmOutputStreamD1Ev"
               %dcmtk::~dcm-output-stream)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcostrma.h:117:11"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-output-stream)))

(iffi:deficlass (%dcmtk::dcm-overlay-data :size-reporter
                 "__claw_sizeof_DcmOverlayData" :alignment-reporter
                 "__claw_alignof_DcmOverlayData" :constructor
                 %dcmtk::dcm-overlay-data :destructor
                 %dcmtk::~dcm-overlay-data)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcovlay.h:30:28")

(iffi:defifun ("__claw__ZN14DcmOverlayDataC1ERKS_"
               %dcmtk::dcm-overlay-data)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcovlay.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-overlay-data))
              (%dcmtk::old-obj (:pointer %dcmtk::dcm-overlay-data)))

(iffi:defifun ("__claw__ZN14DcmOverlayDataC1ERK6DcmTagj"
               %dcmtk::dcm-overlay-data)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcovlay.h:38:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-overlay-data))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZNK14DcmOverlayData5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcovlay.h:71:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-overlay-data)))

(iffi:defifun ("__claw__ZN14DcmOverlayData8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcovlay.h:88:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-overlay-data))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK14DcmOverlayData5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcovlay.h:104:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-overlay-data)))

(iffi:defifun ("__claw__ZN14DcmOverlayDataaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-overlay-data)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcovlay.h:62:21"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-overlay-data))
              (%dcmtk::obj (:pointer %dcmtk::dcm-overlay-data)))

(iffi:defifun ("__claw__ZN14DcmOverlayDataD1Ev"
               %dcmtk::~dcm-overlay-data)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcovlay.h:54:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-overlay-data)))

(iffi:deficlass (%dcmtk::dcm-person-name :size-reporter
                 "__claw_sizeof_DcmPersonName" :alignment-reporter
                 "__claw_alignof_DcmPersonName" :constructor
                 %dcmtk::dcm-person-name :destructor
                 %dcmtk::~dcm-person-name)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:36:28")

(iffi:defifun ("__claw__ZN13DcmPersonNameC1ERKS_"
               %dcmtk::dcm-person-name)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:53:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::old (:pointer %dcmtk::dcm-person-name)))

(iffi:defifun ("__claw__ZN13DcmPersonNameC1ERK6DcmTagj"
               %dcmtk::dcm-person-name)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN13DcmPersonName16checkStringValueERK8OFStringS2_S2_"
               %dcmtk::dcm-person-name+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:302:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::charset (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN13DcmPersonName10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:100:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmPersonName5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:68:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name)))

(iffi:defifun ("__claw__ZN13DcmPersonName8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:85:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN13DcmPersonName17getComponentGroupERK8OFStringjRS0_"
               %dcmtk::dcm-person-name+get-component-group)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:235:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::all-cmp-groups (:pointer %dcmtk::of-string))
              (%dcmtk::group-no :unsigned-int)
              (%dcmtk::cmp-group (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN13DcmPersonName16getFormattedNameER8OFStringmj"
               %dcmtk::get-formatted-name)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:151:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::formatted-name (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::component-group :unsigned-int))

(iffi:defifun ("__claw__ZN13DcmPersonName30getFormattedNameFromComponentsERK8OFStringS2_S2_S2_S2_RS0_"
               %dcmtk::dcm-person-name+get-formatted-name-from-components)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:265:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::last-name (:pointer %dcmtk::of-string))
              (%dcmtk::first-name (:pointer %dcmtk::of-string))
              (%dcmtk::middle-name (:pointer %dcmtk::of-string))
              (%dcmtk::name-prefix (:pointer %dcmtk::of-string))
              (%dcmtk::name-suffix (:pointer %dcmtk::of-string))
              (%dcmtk::formatted-name (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN13DcmPersonName26getFormattedNameFromStringERK8OFStringRS0_j"
               %dcmtk::dcm-person-name+get-formatted-name-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:249:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-name (:pointer %dcmtk::of-string))
              (%dcmtk::formatted-name (:pointer %dcmtk::of-string))
              (%dcmtk::component-group :unsigned-int))

(iffi:defifun ("__claw__ZN13DcmPersonName17getNameComponentsER8OFStringS1_S1_S1_S1_mj"
               %dcmtk::get-name-components)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:133:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::last-name (:pointer %dcmtk::of-string))
              (%dcmtk::first-name (:pointer %dcmtk::of-string))
              (%dcmtk::middle-name (:pointer %dcmtk::of-string))
              (%dcmtk::name-prefix (:pointer %dcmtk::of-string))
              (%dcmtk::name-suffix (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::component-group :unsigned-int))

(iffi:defifun ("__claw__ZN13DcmPersonName27getNameComponentsFromStringERK8OFStringRS0_S3_S3_S3_S3_j"
               %dcmtk::dcm-person-name+get-name-components-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:211:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-name (:pointer %dcmtk::of-string))
              (%dcmtk::last-name (:pointer %dcmtk::of-string))
              (%dcmtk::first-name (:pointer %dcmtk::of-string))
              (%dcmtk::middle-name (:pointer %dcmtk::of-string))
              (%dcmtk::name-prefix (:pointer %dcmtk::of-string))
              (%dcmtk::name-suffix (:pointer %dcmtk::of-string))
              (%dcmtk::component-group :unsigned-int))

(iffi:defifun ("__claw__ZN13DcmPersonName11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:109:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmPersonName27getStringFromNameComponentsERK8OFStringS2_S2_S2_S2_RS0_"
               %dcmtk::dcm-person-name+get-string-from-name-components)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:284:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::last-name (:pointer %dcmtk::of-string))
              (%dcmtk::first-name (:pointer %dcmtk::of-string))
              (%dcmtk::middle-name (:pointer %dcmtk::of-string))
              (%dcmtk::name-prefix (:pointer %dcmtk::of-string))
              (%dcmtk::name-suffix (:pointer %dcmtk::of-string))
              (%dcmtk::dicom-name (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZNK13DcmPersonName5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:90:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name)))

(iffi:defifun ("__claw__ZN13DcmPersonNameaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-person-name)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:63:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::obj (:pointer %dcmtk::dcm-person-name)))

(iffi:defifun ("__claw__ZN13DcmPersonName17putNameComponentsERK8OFStringS2_S2_S2_S2_"
               %dcmtk::put-name-components)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:167:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::last-name (:pointer %dcmtk::of-string))
              (%dcmtk::first-name (:pointer %dcmtk::of-string))
              (%dcmtk::middle-name (:pointer %dcmtk::of-string))
              (%dcmtk::name-prefix (:pointer %dcmtk::of-string))
              (%dcmtk::name-suffix (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN13DcmPersonName9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:186:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN13DcmPersonName8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:178:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN13DcmPersonNameD1Ev"
               %dcmtk::~dcm-person-name)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpn.h:57:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-person-name)))

(iffi:deficlass (%dcmtk::dcm-pixel-data :size-reporter
                 "__claw_sizeof_DcmPixelData" :alignment-reporter
                 "__claw_alignof_DcmPixelData" :constructor
                 %dcmtk::dcm-pixel-data :destructor
                 %dcmtk::~dcm-pixel-data)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:146:28")

(iffi:defifun ("__claw__ZN12DcmPixelDataC1ERKS_"
               %dcmtk::dcm-pixel-data)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:262:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::pixel-data (:pointer %dcmtk::dcm-pixel-data)))

(iffi:defifun ("__claw__ZN12DcmPixelDataC1ERK6DcmTagj"
               %dcmtk::dcm-pixel-data)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:257:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN12DcmPixelData17calcElementLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::calc-element-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:346:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN12DcmPixelData23canChooseRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameter"
               %dcmtk::can-choose-representation)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:438:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZN12DcmPixelData12canWriteXferE16E_TransferSyntaxS0_"
               %dcmtk::can-write-xfer)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:341:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::old-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZN12DcmPixelData20chooseRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameterR8DcmStack"
               %dcmtk::choose-representation)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:447:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter))
              (%dcmtk::stack (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZNK12DcmPixelData5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:275:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data)))

(iffi:defifun ("__claw__ZNK12DcmPixelData7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:292:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN12DcmPixelData8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:306:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN12DcmPixelData17createUint16ArrayEjRPt"
               %dcmtk::create-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:494:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::num-words %dcmtk::uint32)
              (%dcmtk::words (:pointer (:pointer %dcmtk::uint16))))

(iffi:defifun ("__claw__ZN12DcmPixelData16createUint8ArrayEjRPh"
               %dcmtk::create-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:483:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::num-bytes %dcmtk::uint32)
              (%dcmtk::bytes (:pointer (:pointer %dcmtk::uint8))))

(iffi:defifun ("__claw__ZN12DcmPixelData23createValueFromTempFileEP21DcmInputStreamFactoryj11E_ByteOrder"
               %dcmtk::create-value-from-temp-file)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:509:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::factory
               (:pointer %dcmtk::dcm-input-stream-factory))
              (%dcmtk::length %dcmtk::uint32)
              (%dcmtk::byte-order %dcmtk::e-byte-order))

(iffi:defifun ("__claw__ZN12DcmPixelData27getCurrentRepresentationKeyER16E_TransferSyntaxRPK26DcmRepresentationParameter"
               %dcmtk::get-current-representation-key)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:533:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-type (:pointer %dcmtk::e-transfer-syntax))
              (%dcmtk::rep-param
               (:pointer
                (:pointer %dcmtk::dcm-representation-parameter))))

(iffi:defifun ("__claw__ZN12DcmPixelData25getDecompressedColorModelEP7DcmItemR8OFString"
               %dcmtk::get-decompressed-color-model)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:631:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::dataset (:pointer %dcmtk::dcm-item))
              (%dcmtk::decompressed-color-model
               (:pointer %dcmtk::of-string)))

(iffi:deficlass (%dcmtk::dcm-pixel-sequence :size-reporter
                 "__claw_sizeof_DcmPixelSequence" :alignment-reporter
                 "__claw_alignof_DcmPixelSequence" :constructor
                 %dcmtk::dcm-pixel-sequence :destructor
                 %dcmtk::~dcm-pixel-sequence)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:53:28")

(iffi:defifun ("__claw__ZN12DcmPixelData29getEncapsulatedRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameterRP16DcmPixelSequence"
               %dcmtk::get-encapsulated-representation)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:518:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter))
              (%dcmtk::pix-seq
               (:pointer (:pointer %dcmtk::dcm-pixel-sequence))))

(iffi:defifun ("__claw__ZN12DcmPixelData9getLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::get-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:354:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN12DcmPixelData28getOriginalRepresentationKeyER16E_TransferSyntaxRPK26DcmRepresentationParameter"
               %dcmtk::get-original-representation-key)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:526:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-type (:pointer %dcmtk::e-transfer-syntax))
              (%dcmtk::rep-param
               (:pointer
                (:pointer %dcmtk::dcm-representation-parameter))))

(iffi:defifun ("__claw__ZN12DcmPixelData20getUncompressedFrameEP7DcmItemjRjPvjR8OFStringP12DcmFileCache"
               %dcmtk::get-uncompressed-frame)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:614:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::dataset (:pointer %dcmtk::dcm-item))
              (%dcmtk::frame-no %dcmtk::uint32)
              (%dcmtk::start-fragment (:pointer %dcmtk::uint32))
              (%dcmtk::buffer (:pointer :void))
              (%dcmtk::buf-size %dcmtk::uint32)
              (%dcmtk::decompressed-color-model
               (:pointer %dcmtk::of-string))
              (%dcmtk::cache (:pointer %dcmtk::dcm-file-cache)))

(iffi:defifun ("__claw__ZN12DcmPixelData17hasRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameter"
               %dcmtk::has-representation)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:545:12"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZNK12DcmPixelData5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:322:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data)))

(iffi:defifun ("__claw__ZN12DcmPixelData21loadAllDataIntoMemoryEv"
               %dcmtk::load-all-data-into-memory)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:428:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data)))

(iffi:defifun ("__claw__ZN12DcmPixelDataaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-pixel-data)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:270:19"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::obj (:pointer %dcmtk::dcm-pixel-data)))

(iffi:defifun ("__claw__ZN12DcmPixelData5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:331:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN12DcmPixelData25putOriginalRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameterP16DcmPixelSequence"
               %dcmtk::put-original-representation)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:455:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter))
              (%dcmtk::pix-seq (:pointer %dcmtk::dcm-pixel-sequence)))

(iffi:defifun ("__claw__ZN12DcmPixelData14putUint16ArrayEPKtm"
               %dcmtk::put-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:472:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::word-value (:pointer %dcmtk::uint16))
              (%dcmtk::length :unsigned-long))

(iffi:defifun ("__claw__ZN12DcmPixelData13putUint8ArrayEPKhm"
               %dcmtk::put-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:464:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::byte-value (:pointer %dcmtk::uint8))
              (%dcmtk::length :unsigned-long))

(iffi:defifun ("__claw__ZN12DcmPixelData4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:376:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::ixfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN12DcmPixelData34removeAllButCurrentRepresentationsEv"
               %dcmtk::remove-all-but-current-representations)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:563:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data)))

(iffi:defifun ("__claw__ZN12DcmPixelData35removeAllButOriginalRepresentationsEv"
               %dcmtk::remove-all-but-original-representations)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:558:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data)))

(iffi:defifun ("__claw__ZN12DcmPixelData28removeOriginalRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameter"
               %dcmtk::remove-original-representation)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:569:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZN12DcmPixelData20removeRepresentationE16E_TransferSyntaxPK26DcmRepresentationParameter"
               %dcmtk::remove-representation)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:552:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-type %dcmtk::e-transfer-syntax)
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZN12DcmPixelData33setCurrentRepresentationParameterEPK26DcmRepresentationParameter"
               %dcmtk::set-current-representation-parameter)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:540:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::rep-param
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZN12DcmPixelData23setNonEncapsulationFlagEb"
               %dcmtk::set-non-encapsulation-flag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:584:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::flag %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN12DcmPixelData5setVRE6DcmEVR"
               %dcmtk::set-vr)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:314:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::vr %dcmtk::dcm-evr))

(iffi:defifun ("__claw__ZN12DcmPixelData11transferEndEv"
               %dcmtk::transfer-end)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:434:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data)))

(iffi:defifun ("__claw__ZN12DcmPixelData12transferInitEv"
               %dcmtk::transfer-init)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:361:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data)))

(iffi:defifun ("__claw__ZN12DcmPixelData5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:386:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN12DcmPixelData9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:405:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN12DcmPixelData20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:415:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN12DcmPixelData8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:397:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN12DcmPixelDataD1Ev"
               %dcmtk::~dcm-pixel-data)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:265:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-data)))

(iffi:deficlass (%dcmtk::dcm-pixel-item :size-reporter nil
                 :alignment-reporter nil)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:36:7")

(iffi:defifun ("__claw__ZN16DcmPixelSequenceC1ERKS_"
               %dcmtk::dcm-pixel-sequence)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:70:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::old (:pointer %dcmtk::dcm-pixel-sequence)))

(iffi:defifun ("__claw__ZN16DcmPixelSequenceC1ERK6DcmTag"
               %dcmtk::dcm-pixel-sequence)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:65:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN16DcmPixelSequence17calcElementLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::calc-element-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:123:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN16DcmPixelSequence12canWriteXferE16E_TransferSyntaxS0_"
               %dcmtk::can-write-xfer)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:174:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::old-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZN16DcmPixelSequence10changeXferE16E_TransferSyntax"
               %dcmtk::change-xfer)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:167:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZNK16DcmPixelSequence5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:84:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence)))

(iffi:defifun ("__claw__ZN16DcmPixelSequence8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:101:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN16DcmPixelSequence7getItemERP12DcmPixelItemm"
               %dcmtk::get-item)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:141:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::item
               (:pointer (:pointer %dcmtk::dcm-pixel-item)))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZNK16DcmPixelSequence5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:106:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence)))

(iffi:defifun ("__claw__ZN16DcmPixelSequence6insertEP12DcmPixelItemm"
               %dcmtk::insert)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:132:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::item (:pointer %dcmtk::dcm-pixel-item))
              (%dcmtk::where :unsigned-long))

(iffi:defifun ("__claw__ZN16DcmPixelSequenceaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-pixel-sequence)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:79:23"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::obj (:pointer %dcmtk::dcm-pixel-sequence)))

(iffi:defifun ("__claw__ZN16DcmPixelSequence5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:115:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN16DcmPixelSequence4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:190:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::ixfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN16DcmPixelSequence6removeERP12DcmPixelItemm"
               %dcmtk::remove)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:151:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::item
               (:pointer (:pointer %dcmtk::dcm-pixel-item)))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN16DcmPixelSequence6removeEP12DcmPixelItem"
               %dcmtk::remove)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:159:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::item (:pointer %dcmtk::dcm-pixel-item)))

(iffi:deficlass (%dcmtk::of-list<unsigned+int> :size-reporter
                 "__claw_sizeof_OFList_unsigned_int_"
                 :alignment-reporter
                 "__claw_alignof_OFList_unsigned_int_")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oflist.h:302:7")

(iffi:defitype %dcmtk::dcm-offset-list
               %dcmtk::of-list<unsigned+int>
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcofsetl.h:31:24")

(iffi:defifun ("__claw__ZN16DcmPixelSequence20storeCompressedFrameER6OFListIjEPhjj"
               %dcmtk::store-compressed-frame)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:237:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::offset-list
               (:pointer %dcmtk::dcm-offset-list))
              (%dcmtk::compressed-data (:pointer %dcmtk::uint8))
              (%dcmtk::compressed-len %dcmtk::uint32)
              (%dcmtk::fragment-size %dcmtk::uint32))

(iffi:defifun ("__claw__ZN16DcmPixelSequence5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:202:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN16DcmPixelSequence20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:222:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN16DcmPixelSequence8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:212:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN16DcmPixelSequenceD1Ev"
               %dcmtk::~dcm-pixel-sequence)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixseq.h:73:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-pixel-sequence)))

(iffi:deficlass (%dcmtk::dcm-polymorph-obow :size-reporter
                 "__claw_sizeof_DcmPolymorphOBOW" :alignment-reporter
                 "__claw_alignof_DcmPolymorphOBOW" :constructor
                 %dcmtk::dcm-polymorph-obow :destructor
                 %dcmtk::~dcm-polymorph-obow)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:34:28")

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOWC1ERKS_"
               %dcmtk::dcm-polymorph-obow)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::old (:pointer %dcmtk::dcm-polymorph-obow)))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOWC1ERK6DcmTagj"
               %dcmtk::dcm-polymorph-obow)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:42:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZNK16DcmPolymorphOBOW5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:62:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow)))

(iffi:defifun ("__claw__ZNK16DcmPolymorphOBOW7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:86:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:100:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW17createUint16ArrayEjRPt"
               %dcmtk::create-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:229:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::num-words %dcmtk::uint32)
              (%dcmtk::words (:pointer (:pointer %dcmtk::uint16))))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW16createUint8ArrayEjRPh"
               %dcmtk::create-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:217:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::num-bytes %dcmtk::uint32)
              (%dcmtk::bytes (:pointer (:pointer %dcmtk::uint8))))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW14getUint16ArrayERPt"
               %dcmtk::get-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:192:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::val (:pointer (:pointer %dcmtk::uint16))))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW13getUint8ArrayERPh"
               %dcmtk::get-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:182:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::val (:pointer (:pointer %dcmtk::uint8))))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOWaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-polymorph-obow)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:57:23"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::obj (:pointer %dcmtk::dcm-polymorph-obow)))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW14putUint16ArrayEPKtm"
               %dcmtk::put-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:208:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::vals (:pointer %dcmtk::uint16))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW13putUint8ArrayEPKhm"
               %dcmtk::put-uint8array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:200:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::vals (:pointer %dcmtk::uint8))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:117:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::ixfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW11transferEndEv"
               %dcmtk::transfer-end)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:172:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow)))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW12transferInitEv"
               %dcmtk::transfer-init)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:167:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow)))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:145:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOW20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:158:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN16DcmPolymorphOBOWD1Ev"
               %dcmtk::~dcm-polymorph-obow)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrpobw.h:51:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-polymorph-obow)))

(iffi:deficlass (%dcmtk::dcm-private-tag-cache :size-reporter
                 "__claw_sizeof_DcmPrivateTagCache"
                 :alignment-reporter
                 "__claw_alignof_DcmPrivateTagCache" :constructor
                 %dcmtk::dcm-private-tag-cache :destructor
                 %dcmtk::~dcm-private-tag-cache)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:78:28")

(iffi:defifun ("__claw__ZN18DcmPrivateTagCacheC1Ev"
               %dcmtk::dcm-private-tag-cache)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:82:3"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-private-tag-cache)))

(iffi:defifun ("__claw__ZN18DcmPrivateTagCache5clearEv"
               %dcmtk::clear)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:88:8"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-private-tag-cache)))

(iffi:defifun ("__claw__ZNK18DcmPrivateTagCache18findPrivateCreatorERK9DcmTagKey"
               %dcmtk::find-private-creator :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:94:15"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-private-tag-cache))
              (%dcmtk::tk (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN18DcmPrivateTagCache11updateCacheEP9DcmObject"
               %dcmtk::update-cache)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:101:8"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-private-tag-cache))
              (%dcmtk::dobj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN18DcmPrivateTagCacheD1Ev"
               %dcmtk::~dcm-private-tag-cache)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:85:11"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-private-tag-cache)))

(iffi:deficlass (%dcmtk::dcm-private-tag-cache-entry :size-reporter
                 "__claw_sizeof_DcmPrivateTagCacheEntry"
                 :alignment-reporter
                 "__claw_alignof_DcmPrivateTagCacheEntry"
                 :constructor %dcmtk::dcm-private-tag-cache-entry
                 :destructor %dcmtk::~dcm-private-tag-cache-entry)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:35:28")

(iffi:defifun ("__claw__ZN23DcmPrivateTagCacheEntryC1ERK9DcmTagKeyPKc"
               %dcmtk::dcm-private-tag-cache-entry)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:42:3"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-private-tag-cache-entry))
              (%dcmtk::tk (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::pc :string))

(iffi:defifun ("__claw__ZNK23DcmPrivateTagCacheEntry17getPrivateCreatorEv"
               %dcmtk::get-private-creator :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:49:15"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-private-tag-cache-entry)))

(iffi:defifun ("__claw__ZNK23DcmPrivateTagCacheEntry19isPrivateCreatorForERK9DcmTagKey"
               %dcmtk::is-private-creator-for :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:57:10"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-private-tag-cache-entry))
              (%dcmtk::tk (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN23DcmPrivateTagCacheEntryD1Ev"
               %dcmtk::~dcm-private-tag-cache-entry)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpcache.h:45:11"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-private-tag-cache-entry)))

(iffi:defifun ("__claw__ZN11DcmProducer5availEv" %dcmtk::avail)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:69:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-producer)))

(iffi:defifun ("__claw__ZN11DcmProducer3eosEv" %dcmtk::eos)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:60:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-producer)))

(iffi:defifun ("__claw__ZNK11DcmProducer4goodEv" %dcmtk::good
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:49:18"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-producer)))

(iffi:defifun ("__claw__ZN11DcmProducer7putbackEl" %dcmtk::putback)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:88:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-producer))
              (%dcmtk::num %dcmtk::offile-off-t))

(iffi:defifun ("__claw__ZN11DcmProducer4readEPvl" %dcmtk::read)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:76:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-producer))
              (%dcmtk::buf (:pointer :void))
              (%dcmtk::buflen %dcmtk::offile-off-t))

(iffi:defifun ("__claw__ZN11DcmProducer4skipEl" %dcmtk::skip)
              %dcmtk::offile-off-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:82:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-producer))
              (%dcmtk::skiplen %dcmtk::offile-off-t))

(iffi:defifun ("__claw__ZNK11DcmProducer6statusEv" %dcmtk::status
               :non-mutating t)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcistrma.h:55:23"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-producer)))

(iffi:deficlass (%dcmtk::dcm-representation-entry :size-reporter
                 "__claw_sizeof_DcmRepresentationEntry"
                 :alignment-reporter
                 "__claw_alignof_DcmRepresentationEntry")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:81:28")

(iffi:defifun ("__claw__ZNK26DcmRepresentationParameter9classNameEv"
               %dcmtk::class-name :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:64:25"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZNK26DcmRepresentationParameter5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-representation-parameter)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:59:41"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZNK26DcmRepresentationParametereqERKS_"
               %dcmtk::operator== :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:71:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-representation-parameter))
              (%dcmtk::arg
               (:pointer %dcmtk::dcm-representation-parameter)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItemsC1ERKS_"
               %dcmtk::dcm-sequence-of-items)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:60:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::old-seq
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItemsC1ERK6DcmTag"
               %dcmtk::dcm-sequence-of-items)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:55:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems6appendEP7DcmItem"
               %dcmtk::append)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:369:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::item (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems17calcElementLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::calc-element-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:212:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems12canWriteXferE16E_TransferSyntaxS0_"
               %dcmtk::can-write-xfer)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:245:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::old-xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::new-xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZNK18DcmSequenceOfItems4cardEv" %dcmtk::card
               :non-mutating t)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:171:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:154:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::card (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems5clearEv"
               %dcmtk::clear)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:442:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZNK18DcmSequenceOfItems5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:99:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZNK18DcmSequenceOfItems7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:91:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems28computeGroupLengthAndPaddingE16E_GrpLenEncoding17E_PaddingEncoding16E_TransferSyntax14E_EncodingTypejjj"
               %dcmtk::compute-group-length-and-padding)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:201:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::padenc %dcmtk::e-padding-encoding)
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::padlen %dcmtk::uint32)
              (%dcmtk::sub-padlen %dcmtk::uint32)
              (%dcmtk::instance-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems26containsExtendedCharactersEb"
               %dcmtk::contains-extended-characters)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:326:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::check-all-strings %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK18DcmSequenceOfItems17containsUnknownVREv"
               %dcmtk::contains-unknown-vr :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:314:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems19convertCharacterSetER23DcmSpecificCharacterSet"
               %dcmtk::convert-character-set)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:342:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::converter
               (:pointer %dcmtk::dcm-specific-character-set)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:116:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK18DcmSequenceOfItems5errorEv"
               %dcmtk::error :non-mutating t)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:94:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems7getItemEm"
               %dcmtk::get-item)
              (:pointer %dcmtk::dcm-item)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:386:22"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems9getLengthE16E_TransferSyntax14E_EncodingType"
               %dcmtk::get-length)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:227:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:166:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems15getPartialValueEPvjjP12DcmFileCache11E_ByteOrder"
               %dcmtk::get-partial-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:502:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::target-buffer (:pointer :void))
              (%dcmtk::offset %dcmtk::uint32)
              (%dcmtk::num-bytes %dcmtk::uint32)
              (%dcmtk::cache (:pointer %dcmtk::dcm-file-cache))
              (%dcmtk::byte-order %dcmtk::e-byte-order))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems5getVMEv"
               %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:160:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZNK18DcmSequenceOfItems5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:124:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems6insertEP7DcmItemmb"
               %dcmtk::insert)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:360:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::item (:pointer %dcmtk::dcm-item))
              (%dcmtk::where :unsigned-long)
              (%dcmtk::before %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems18insertAtCurrentPosEP7DcmItemb"
               %dcmtk::insert-at-current-pos)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:378:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::item (:pointer %dcmtk::dcm-item))
              (%dcmtk::before %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK18DcmSequenceOfItems32isAffectedBySpecificCharacterSetEv"
               %dcmtk::is-affected-by-specific-character-set
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:334:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems7isEmptyEb"
               %dcmtk::is-empty)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:437:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK18DcmSequenceOfItems6isLeafEv"
               %dcmtk::is-leaf :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:132:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZNK18DcmSequenceOfItems10isSignableEv"
               %dcmtk::is-signable :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:309:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems21loadAllDataIntoMemoryEv"
               %dcmtk::load-all-data-into-memory)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:483:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems15nextInContainerEPK9DcmObject"
               %dcmtk::next-in-container)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:415:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems10nextObjectER8DcmStackb"
               %dcmtk::next-object)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:403:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::stack (:pointer %dcmtk::dcm-stack))
              (%dcmtk::into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItemsaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-sequence-of-items)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:69:25"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::obj (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems7prependEP7DcmItem"
               %dcmtk::prepend)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:349:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::item (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:141:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems4readER14DcmInputStream16E_TransferSyntax16E_GrpLenEncodingj"
               %dcmtk::read)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:261:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::in-stream (:pointer %dcmtk::dcm-input-stream))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax)
              (%dcmtk::glenc %dcmtk::e-grp-len-encoding)
              (%dcmtk::max-read-length %dcmtk::uint32))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems6removeEP7DcmItem"
               %dcmtk::remove)
              (:pointer %dcmtk::dcm-item)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:431:22"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::item (:pointer %dcmtk::dcm-item)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems6removeEm"
               %dcmtk::remove)
              (:pointer %dcmtk::dcm-item)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:423:22"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::num :unsigned-long))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems6searchERK9DcmTagKeyR8DcmStack12E_SearchModeb"
               %dcmtk::search)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:471:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::xtag (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::result-stack (:pointer %dcmtk::dcm-stack))
              (%dcmtk::mode %dcmtk::e-search-mode)
              (%dcmtk::search-into-sub %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems11transferEndEv"
               %dcmtk::transfer-end)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:238:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems12transferInitEv"
               %dcmtk::transfer-init)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:233:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems6verifyEb"
               %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:448:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems5writeER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:273:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:291:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems20writeSignatureFormatER15DcmOutputStream16E_TransferSyntax14E_EncodingTypeP13DcmWriteCache"
               %dcmtk::write-signature-format)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:301:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::out-stream
               (:pointer %dcmtk::dcm-output-stream))
              (%dcmtk::oxfer %dcmtk::e-transfer-syntax)
              (%dcmtk::enctype %dcmtk::e-encoding-type)
              (%dcmtk::wcache (:pointer %dcmtk::dcm-write-cache)))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItems8writeXMLERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEm"
               %dcmtk::write-xml)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:283:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t))

(iffi:defifun ("__claw__ZN18DcmSequenceOfItemsD1Ev"
               %dcmtk::~dcm-sequence-of-items)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcsequen.h:63:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-sequence-of-items)))

(iffi:deficlass (%dcmtk::dcm-short-string :size-reporter
                 "__claw_sizeof_DcmShortString" :alignment-reporter
                 "__claw_alignof_DcmShortString" :constructor
                 %dcmtk::dcm-short-string :destructor
                 %dcmtk::~dcm-short-string)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:37:28")

(iffi:defifun ("__claw__ZN14DcmShortStringC1ERKS_"
               %dcmtk::dcm-short-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:54:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string))
              (%dcmtk::old (:pointer %dcmtk::dcm-short-string)))

(iffi:defifun ("__claw__ZN14DcmShortStringC1ERK6DcmTagj"
               %dcmtk::dcm-short-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:48:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN14DcmShortString16checkStringValueERK8OFStringS2_S2_"
               %dcmtk::dcm-short-string+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:135:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::charset (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN14DcmShortString10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:101:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK14DcmShortString5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:69:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string)))

(iffi:defifun ("__claw__ZN14DcmShortString8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:86:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN14DcmShortString11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:110:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK14DcmShortString5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:91:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string)))

(iffi:defifun ("__claw__ZN14DcmShortStringaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-short-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:64:21"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string))
              (%dcmtk::obj (:pointer %dcmtk::dcm-short-string)))

(iffi:defifun ("__claw__ZN14DcmShortString9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:119:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN14DcmShortStringD1Ev"
               %dcmtk::~dcm-short-string)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsh.h:58:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-string)))

(iffi:deficlass (%dcmtk::dcm-short-text :size-reporter
                 "__claw_sizeof_DcmShortText" :alignment-reporter
                 "__claw_alignof_DcmShortText" :constructor
                 %dcmtk::dcm-short-text :destructor
                 %dcmtk::~dcm-short-text)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:33:28")

(iffi:defifun ("__claw__ZN12DcmShortTextC1ERKS_"
               %dcmtk::dcm-short-text)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:49:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text))
              (%dcmtk::old (:pointer %dcmtk::dcm-short-text)))

(iffi:defifun ("__claw__ZN12DcmShortTextC1ERK6DcmTagj"
               %dcmtk::dcm-short-text)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:43:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN12DcmShortText16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-short-text+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:153:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::charset (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN12DcmShortText10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:115:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK12DcmShortText5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:84:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text)))

(iffi:defifun ("__claw__ZNK12DcmShortText7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:79:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN12DcmShortText8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:101:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN12DcmShortText11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:131:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN12DcmShortText16getOFStringArrayER8OFStringb"
               %dcmtk::get-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:140:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN12DcmShortText5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:123:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text)))

(iffi:defifun ("__claw__ZNK12DcmShortText5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:106:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text)))

(iffi:defifun ("__claw__ZN12DcmShortTextaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-short-text)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:59:19"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text))
              (%dcmtk::obj (:pointer %dcmtk::dcm-short-text)))

(iffi:defifun ("__claw__ZN12DcmShortTextD1Ev"
               %dcmtk::~dcm-short-text)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrst.h:53:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-short-text)))

(iffi:deficlass (%dcmtk::dcm-signed64bit-very-long :size-reporter
                 "__claw_sizeof_DcmSigned64bitVeryLong"
                 :alignment-reporter
                 "__claw_alignof_DcmSigned64bitVeryLong" :constructor
                 %dcmtk::dcm-signed64bit-very-long :destructor
                 %dcmtk::~dcm-signed64bit-very-long)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:33:28")

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLongC1ERKS_"
               %dcmtk::dcm-signed64bit-very-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:52:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::old
               (:pointer %dcmtk::dcm-signed64bit-very-long)))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLongC1ERK6DcmTag"
               %dcmtk::dcm-signed64bit-very-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:117:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK22DcmSigned64bitVeryLong5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:87:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long)))

(iffi:defifun ("__claw__ZNK22DcmSigned64bitVeryLong7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:82:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:128:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long)))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:165:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong9getSint64ERlm"
               %dcmtk::get-sint64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:149:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::sint-val (:pointer %dcmtk::sint64))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong14getSint64ArrayERPl"
               %dcmtk::get-sint64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:157:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::sint-vals
               (:pointer (:pointer %dcmtk::sint64))))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong5getVMEv"
               %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:123:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long)))

(iffi:defifun ("__claw__ZNK22DcmSigned64bitVeryLong5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:109:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long)))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLongaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-signed64bit-very-long)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:62:29"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::obj
               (:pointer %dcmtk::dcm-signed64bit-very-long)))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:138:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong9putSint64Elm"
               %dcmtk::put-sint64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:174:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::sint-val %dcmtk::sint64)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong14putSint64ArrayEPKlm"
               %dcmtk::put-sint64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:182:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::sint-vals (:pointer %dcmtk::sint64))
              (%dcmtk::num-sints :unsigned-long))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:191:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:203:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong6verifyEb"
               %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:210:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLong9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:217:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN22DcmSigned64bitVeryLongD1Ev"
               %dcmtk::~dcm-signed64bit-very-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsv.h:56:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed64bit-very-long)))

(iffi:deficlass (%dcmtk::dcm-signed-long :size-reporter
                 "__claw_sizeof_DcmSignedLong" :alignment-reporter
                 "__claw_alignof_DcmSignedLong" :constructor
                 %dcmtk::dcm-signed-long :destructor
                 %dcmtk::~dcm-signed-long)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:33:28")

(iffi:defifun ("__claw__ZN13DcmSignedLongC1ERKS_"
               %dcmtk::dcm-signed-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:52:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::old (:pointer %dcmtk::dcm-signed-long)))

(iffi:defifun ("__claw__ZN13DcmSignedLongC1ERK6DcmTag"
               %dcmtk::dcm-signed-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN13DcmSignedLong10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:117:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK13DcmSignedLong5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:87:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long)))

(iffi:defifun ("__claw__ZNK13DcmSignedLong7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:82:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN13DcmSignedLong8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN13DcmSignedLong17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:128:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long)))

(iffi:defifun ("__claw__ZN13DcmSignedLong11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:165:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmSignedLong9getSint32ERim"
               %dcmtk::get-sint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:149:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::sint-val (:pointer %dcmtk::sint32))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN13DcmSignedLong14getSint32ArrayERPi"
               %dcmtk::get-sint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:157:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::sint-vals
               (:pointer (:pointer %dcmtk::sint32))))

(iffi:defifun ("__claw__ZN13DcmSignedLong5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:123:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long)))

(iffi:defifun ("__claw__ZNK13DcmSignedLong5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:109:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long)))

(iffi:defifun ("__claw__ZNK13DcmSignedLong7matchesERK10DcmElementb"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:213:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::candidate (:pointer %dcmtk::dcm-element))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmSignedLongaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-signed-long)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:62:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::obj (:pointer %dcmtk::dcm-signed-long)))

(iffi:defifun ("__claw__ZN13DcmSignedLong5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:138:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN13DcmSignedLong9putSint32Eim"
               %dcmtk::put-sint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:174:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::sint-val %dcmtk::sint32)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN13DcmSignedLong14putSint32ArrayEPKim"
               %dcmtk::put-sint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:182:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::sint-vals (:pointer %dcmtk::sint32))
              (%dcmtk::num-sints :unsigned-long))

(iffi:defifun ("__claw__ZN13DcmSignedLong9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:191:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN13DcmSignedLong9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:203:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN13DcmSignedLong6verifyEb" %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:210:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN13DcmSignedLongD1Ev"
               %dcmtk::~dcm-signed-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrsl.h:56:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-long)))

(iffi:deficlass (%dcmtk::dcm-signed-short :size-reporter
                 "__claw_sizeof_DcmSignedShort" :alignment-reporter
                 "__claw_alignof_DcmSignedShort" :constructor
                 %dcmtk::dcm-signed-short :destructor
                 %dcmtk::~dcm-signed-short)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:33:28")

(iffi:defifun ("__claw__ZN14DcmSignedShortC1ERKS_"
               %dcmtk::dcm-signed-short)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:52:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::old (:pointer %dcmtk::dcm-signed-short)))

(iffi:defifun ("__claw__ZN14DcmSignedShortC1ERK6DcmTag"
               %dcmtk::dcm-signed-short)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN14DcmSignedShort10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:117:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK14DcmSignedShort5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:87:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short)))

(iffi:defifun ("__claw__ZNK14DcmSignedShort7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:76:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN14DcmSignedShort8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN14DcmSignedShort17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:128:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short)))

(iffi:defifun ("__claw__ZN14DcmSignedShort11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:164:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN14DcmSignedShort9getSint16ERsm"
               %dcmtk::get-sint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:149:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::sint-val (:pointer %dcmtk::sint16))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN14DcmSignedShort14getSint16ArrayERPs"
               %dcmtk::get-sint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:156:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::sint-vals
               (:pointer (:pointer %dcmtk::sint16))))

(iffi:defifun ("__claw__ZN14DcmSignedShort5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:123:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short)))

(iffi:defifun ("__claw__ZNK14DcmSignedShort5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:109:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short)))

(iffi:defifun ("__claw__ZNK14DcmSignedShort7matchesERK10DcmElementb"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:212:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::candidate (:pointer %dcmtk::dcm-element))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN14DcmSignedShortaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-signed-short)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:82:21"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::obj (:pointer %dcmtk::dcm-signed-short)))

(iffi:defifun ("__claw__ZN14DcmSignedShort5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:138:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN14DcmSignedShort9putSint16Esm"
               %dcmtk::put-sint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:173:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::sint-val %dcmtk::sint16)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN14DcmSignedShort14putSint16ArrayEPKsm"
               %dcmtk::put-sint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:181:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::sint-vals (:pointer %dcmtk::sint16))
              (%dcmtk::num-sints :unsigned-long))

(iffi:defifun ("__claw__ZN14DcmSignedShort9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:190:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN14DcmSignedShort9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:202:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN14DcmSignedShort6verifyEb" %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:209:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN14DcmSignedShortD1Ev"
               %dcmtk::~dcm-signed-short)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrss.h:56:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-signed-short)))

(iffi:defifun ("__claw__ZN8DcmStackC1Ev" %dcmtk::dcm-stack)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:75:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZN8DcmStackC1ERKS_" %dcmtk::dcm-stack)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:81:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack))
              (%dcmtk::arg (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZNK8DcmStack4cardEv" %dcmtk::card
               :non-mutating t)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:137:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZN8DcmStack5clearEv" %dcmtk::clear)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:141:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZNK8DcmStack4elemEm" %dcmtk::elem
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:127:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack))
              (%dcmtk::number :unsigned-long))

(iffi:defifun ("__claw__ZNK8DcmStack5emptyEv" %dcmtk::empty
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:132:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZNK8DcmStackltERKS_" %dcmtk::operator<
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:106:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack))
              (%dcmtk::arg (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZN8DcmStackaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-stack)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:91:15"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack))
              (%dcmtk::arg (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZNK8DcmStackeqERKS_" %dcmtk::operator==
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:97:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack))
              (%dcmtk::arg (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZN8DcmStack3popEv" %dcmtk::pop)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:117:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZN8DcmStack4pushEP9DcmObject" %dcmtk::push)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:112:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK8DcmStack3topEv" %dcmtk::top :non-mutating
               t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:122:16"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack)))

(iffi:defifun ("__claw__ZN8DcmStackD1Ev" %dcmtk::~dcm-stack)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:84:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-stack)))

(iffi:deficlass (%dcmtk::dcm-stack-node :size-reporter
                 "__claw_sizeof_DcmStackNode" :alignment-reporter
                 "__claw_alignof_DcmStackNode" :constructor
                 %dcmtk::dcm-stack-node :destructor
                 %dcmtk::~dcm-stack-node)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:34:28")

(iffi:defifun ("__claw__ZN12DcmStackNodeC1EP9DcmObject"
               %dcmtk::dcm-stack-node)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:40:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-stack-node))
              (%dcmtk::obj (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZNK12DcmStackNode5valueEv" %dcmtk::value
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:48:16"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-stack-node)))

(iffi:defifun ("__claw__ZN12DcmStackNodeD1Ev"
               %dcmtk::~dcm-stack-node)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcstack.h:43:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-stack-node)))

(iffi:defifun ("__claw__ZN6DcmTagC1Ev" %dcmtk::dcm-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:60:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN6DcmTagC1ERKS_" %dcmtk::dcm-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:99:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN6DcmTagC1ERK9DcmTagKeyRK5DcmVR"
               %dcmtk::dcm-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:87:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag))
              (%dcmtk::akey (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::avr (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZN6DcmTagC1ERK9DcmTagKeyPKc" %dcmtk::dcm-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:69:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag))
              (%dcmtk::akey (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::priv-creator :string))

(iffi:defifun ("__claw__ZN6DcmTagC1EttRK5DcmVR" %dcmtk::dcm-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:96:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag))
              (%dcmtk::g %dcmtk::uint16)
              (%dcmtk::e %dcmtk::uint16)
              (%dcmtk::avr (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZN6DcmTagC1EttPKc" %dcmtk::dcm-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:79:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag))
              (%dcmtk::g %dcmtk::uint16)
              (%dcmtk::e %dcmtk::uint16)
              (%dcmtk::priv-creator :string))

(iffi:defifun ("__claw__ZNK6DcmTag5errorEv" %dcmtk::error
               :non-mutating t)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:177:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN6DcmTag15findTagFromNameEPKcRS_"
               %dcmtk::dcm-tag+find-tag-from-name)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:192:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::name :string)
              (%dcmtk::value (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZNK6DcmTag7getETagEv" %dcmtk::get-e-tag
               :non-mutating t)
              %dcmtk::uint16
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:127:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZNK6DcmTag6getEVREv" %dcmtk::get-evr
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:114:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZNK6DcmTag7getGTagEv" %dcmtk::get-g-tag
               :non-mutating t)
              %dcmtk::uint16
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:122:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZNK6DcmTag17getPrivateCreatorEv"
               %dcmtk::get-private-creator :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:150:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN6DcmTag10getTagNameEv"
               %dcmtk::get-tag-name)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:144:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZNK6DcmTag5getVREv" %dcmtk::get-vr
               :non-mutating t)
              (:pointer %dcmtk::dcm-vr)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:111:11"
              (%dcmtk::%%claw-result- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZNK6DcmTag9getVRNameEv" %dcmtk::get-vr-name
               :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:117:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZNK6DcmTag7getXTagEv" %dcmtk::get-x-tag
               :non-mutating t)
              (:pointer %dcmtk::dcm-tag-key)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:132:15"
              (%dcmtk::%%claw-result- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZNK6DcmTag10isSignableEv" %dcmtk::is-signable
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:170:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZNK6DcmTag11isUnknownVREv"
               %dcmtk::is-unknown-vr :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:174:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN6DcmTag20lookupVRinDictionaryEv"
               %dcmtk::lookup-v-rin-dictionary)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:164:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN6DcmTagaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-tag)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:105:13"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN6DcmTag17setPrivateCreatorEPKc"
               %dcmtk::set-private-creator)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:157:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag))
              (%dcmtk::priv-creator :string))

(iffi:defifun ("__claw__ZN6DcmTag5setVRERK5DcmVR" %dcmtk::set-vr)
              (:pointer %dcmtk::dcm-vr)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:108:11"
              (%dcmtk::%%claw-result- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag))
              (%dcmtk::avr (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZN6DcmTagD1Ev" %dcmtk::~dcm-tag)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctag.h:102:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN9DcmTagKeyC1Ev" %dcmtk::dcm-tag-key)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:46:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN9DcmTagKeyC1ERKS_" %dcmtk::dcm-tag-key)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:51:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN9DcmTagKeyC1Ett" %dcmtk::dcm-tag-key)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:57:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::g %dcmtk::uint16)
              (%dcmtk::e %dcmtk::uint16))

(iffi:defifun ("__claw__ZNK9DcmTagKey10getBaseTagEv"
               %dcmtk::get-base-tag :non-mutating t)
              (:pointer %dcmtk::dcm-tag-key)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:99:15"
              (%dcmtk::%%claw-result- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKey10getElementEv"
               %dcmtk::get-element :non-mutating t)
              %dcmtk::uint16
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:92:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKey8getGroupEv" %dcmtk::get-group
               :non-mutating t)
              %dcmtk::uint16
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:87:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKey13hasValidGroupEv"
               %dcmtk::has-valid-group :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:123:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKey4hashEv" %dcmtk::hash
               :non-mutating t)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:129:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKey13isGroupLengthEv"
               %dcmtk::is-group-length :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:105:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKey9isPrivateEv" %dcmtk::is-private
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:111:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKey20isPrivateReservationEv"
               %dcmtk::is-private-reservation :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:117:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKey13isSignableTagEv"
               %dcmtk::is-signable-tag :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:190:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKeyneERKS_" %dcmtk::operator!=
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:149:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKeyltERKS_" %dcmtk::operator<
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:156:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKeyleERKS_" %dcmtk::operator<=
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:170:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN9DcmTagKeyaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-tag-key)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:135:23"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKeyeqERKS_" %dcmtk::operator==
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:142:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKeygtERKS_" %dcmtk::operator>
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:163:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZNK9DcmTagKeygeERKS_" %dcmtk::operator>=
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:177:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN9DcmTagKey3setERKS_" %dcmtk::set)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:66:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::key (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN9DcmTagKey3setEtt" %dcmtk::set)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:72:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::g %dcmtk::uint16)
              (%dcmtk::e %dcmtk::uint16))

(iffi:defifun ("__claw__ZN9DcmTagKey10setElementEt"
               %dcmtk::set-element)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:82:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::e %dcmtk::uint16))

(iffi:defifun ("__claw__ZN9DcmTagKey8setGroupEt" %dcmtk::set-group)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:77:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key))
              (%dcmtk::g %dcmtk::uint16))

(iffi:defifun ("__claw__ZNK9DcmTagKey8toStringEv" %dcmtk::to-string
               :non-mutating t)
              (:pointer %dcmtk::of-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:184:14"
              (%dcmtk::%%claw-result- (:pointer %dcmtk::of-string))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:defifun ("__claw__ZN9DcmTagKeyD1Ev" %dcmtk::~dcm-tag-key)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dctagkey.h:61:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-tag-key)))

(iffi:deficlass (%dcmtk::dcm-time :size-reporter
                 "__claw_sizeof_DcmTime" :alignment-reporter
                 "__claw_alignof_DcmTime" :constructor
                 %dcmtk::dcm-time :destructor %dcmtk::~dcm-time)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:34:28")

(iffi:defifun ("__claw__ZN7DcmTimeC1ERK6DcmTagj" %dcmtk::dcm-time)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:45:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN7DcmTimeC1ERKS_" %dcmtk::dcm-time)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:51:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::old (:pointer %dcmtk::dcm-time)))

(iffi:defifun ("__claw__ZN7DcmTime5checkEPKcmb"
               %dcmtk::dcm-time+check)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:391:19"
              (%dcmtk::dicom-time :string)
              (%dcmtk::dicom-time-size %dcmtk::size-t)
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime5checkEPKcm"
               %dcmtk::dcm-time+check)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:381:19"
              (%dcmtk::dicom-time :string)
              (%dcmtk::dicom-time-size %dcmtk::size-t))

(iffi:defifun ("__claw__ZN7DcmTime16checkStringValueERK8OFStringS2_b"
               %dcmtk::dcm-time+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:403:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:96:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK7DcmTime5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:66:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time)))

(iffi:defifun ("__claw__ZN7DcmTime8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:83:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN7DcmTime14getCurrentTimeER8OFStringbb"
               %dcmtk::dcm-time+get-current-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:191:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time (:pointer %dcmtk::of-string))
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool))

(iffi:deficlass (%dcmtk::of-time :size-reporter
                 "__claw_sizeof_OFTime" :alignment-reporter
                 "__claw_alignof_OFTime")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oftime.h:49:26")

(iffi:defifun ("__claw__ZN7DcmTime22getDicomTimeFromOFTimeERK6OFTimeR8OFStringbb"
               %dcmtk::dcm-time+get-dicom-time-from-of-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:207:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::time-value (:pointer %dcmtk::of-time))
              (%dcmtk::dicom-time (:pointer %dcmtk::of-string))
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime19getISOFormattedTimeER8OFStringmbbbb"
               %dcmtk::get-iso-formatted-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:163:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::formatted-time (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool)
              (%dcmtk::create-missing-part %dcmtk::of-bool)
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime29getISOFormattedTimeFromStringERK8OFStringRS0_bbbb"
               %dcmtk::dcm-time+get-iso-formatted-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:336:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time (:pointer %dcmtk::of-string))
              (%dcmtk::formatted-time (:pointer %dcmtk::of-string))
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool)
              (%dcmtk::create-missing-part %dcmtk::of-bool)
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:105:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::string-value (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime9getOFTimeER6OFTimemb"
               %dcmtk::get-of-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:139:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::time-value (:pointer %dcmtk::of-time))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime19getOFTimeFromStringERK8OFStringR6OFTimebd"
               %dcmtk::dcm-time+get-of-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:257:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time (:pointer %dcmtk::of-string))
              (%dcmtk::time-value (:pointer %dcmtk::of-time))
              (%dcmtk::support-old-format %dcmtk::of-bool)
              (%dcmtk::time-zone :double))

(iffi:defifun ("__claw__ZN7DcmTime19getOFTimeFromStringERK8OFStringR6OFTimeb"
               %dcmtk::dcm-time+get-of-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:239:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time (:pointer %dcmtk::of-string))
              (%dcmtk::time-value (:pointer %dcmtk::of-time))
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime19getOFTimeFromStringERK8OFStringR6OFTime"
               %dcmtk::dcm-time+get-of-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:223:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time (:pointer %dcmtk::of-string))
              (%dcmtk::time-value (:pointer %dcmtk::of-time)))

(iffi:defifun ("__claw__ZN7DcmTime19getOFTimeFromStringEPKcmR6OFTimebd"
               %dcmtk::dcm-time+get-of-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:312:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time :string)
              (%dcmtk::dicom-time-size %dcmtk::size-t)
              (%dcmtk::time-value (:pointer %dcmtk::of-time))
              (%dcmtk::support-old-format %dcmtk::of-bool)
              (%dcmtk::time-zone :double))

(iffi:defifun ("__claw__ZN7DcmTime19getOFTimeFromStringEPKcmR6OFTimeb"
               %dcmtk::dcm-time+get-of-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:292:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time :string)
              (%dcmtk::dicom-time-size %dcmtk::size-t)
              (%dcmtk::time-value (:pointer %dcmtk::of-time))
              (%dcmtk::support-old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime19getOFTimeFromStringEPKcmR6OFTime"
               %dcmtk::dcm-time+get-of-time-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:274:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time :string)
              (%dcmtk::dicom-time-size %dcmtk::size-t)
              (%dcmtk::time-value (:pointer %dcmtk::of-time)))

(iffi:defifun ("__claw__ZN7DcmTime21getTimeZoneFromStringERK8OFStringRd"
               %dcmtk::dcm-time+get-time-zone-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:355:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time-zone (:pointer %dcmtk::of-string))
              (%dcmtk::time-zone (:pointer :double)))

(iffi:defifun ("__claw__ZN7DcmTime21getTimeZoneFromStringEPKcmRd"
               %dcmtk::dcm-time+get-time-zone-from-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:371:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::dicom-time-zone :string)
              (%dcmtk::dicom-time-zone-size %dcmtk::size-t)
              (%dcmtk::time-zone (:pointer :double)))

(iffi:defifun ("__claw__ZNK7DcmTime5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:88:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time)))

(iffi:defifun ("__claw__ZNK7DcmTime7matchesERK8OFStringS2_b"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:174:20"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::key (:pointer %dcmtk::of-string))
              (%dcmtk::candidate (:pointer %dcmtk::of-string))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTimeaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-time)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:61:14"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::obj (:pointer %dcmtk::dcm-time)))

(iffi:defifun ("__claw__ZN7DcmTime14setCurrentTimeEbb"
               %dcmtk::set-current-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:119:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::seconds %dcmtk::of-bool)
              (%dcmtk::fraction %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN7DcmTime9setOFTimeERK6OFTime"
               %dcmtk::set-of-time)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:126:17"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time))
              (%dcmtk::time-value (:pointer %dcmtk::of-time)))

(iffi:defifun ("__claw__ZN7DcmTimeD1Ev" %dcmtk::~dcm-time)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrtm.h:55:13"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-time)))

(iffi:deficlass (%dcmtk::dcm-unique-identifier :size-reporter
                 "__claw_sizeof_DcmUniqueIdentifier"
                 :alignment-reporter
                 "__claw_alignof_DcmUniqueIdentifier" :constructor
                 %dcmtk::dcm-unique-identifier :destructor
                 %dcmtk::~dcm-unique-identifier)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:32:28")

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifierC1ERK6DcmTagj"
               %dcmtk::dcm-unique-identifier)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:43:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifierC1ERKS_"
               %dcmtk::dcm-unique-identifier)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:49:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier))
              (%dcmtk::old (:pointer %dcmtk::dcm-unique-identifier)))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifier16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-unique-identifier+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:159:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifier10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:94:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK19DcmUniqueIdentifier5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:64:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier)))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifier8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:81:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifier11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:121:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK19DcmUniqueIdentifier5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:86:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier)))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifieraSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-unique-identifier)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:59:26"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier))
              (%dcmtk::obj (:pointer %dcmtk::dcm-unique-identifier)))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifier5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:109:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifier9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:133:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifier9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:147:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN19DcmUniqueIdentifierD1Ev"
               %dcmtk::~dcm-unique-identifier)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrui.h:53:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unique-identifier)))

(iffi:deficlass (%dcmtk::dcm-universal-resource-identifier-or-locator
                 :size-reporter
                 "__claw_sizeof_DcmUniversalResourceIdentifierOrLocator"
                 :alignment-reporter
                 "__claw_alignof_DcmUniversalResourceIdentifierOrLocator"
                 :constructor
                 %dcmtk::dcm-universal-resource-identifier-or-locator
                 :destructor
                 %dcmtk::~dcm-universal-resource-identifier-or-locator)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:35:28")

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocatorC1ERK6DcmTagj"
               %dcmtk::dcm-universal-resource-identifier-or-locator)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:46:5"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocatorC1ERKS_"
               %dcmtk::dcm-universal-resource-identifier-or-locator)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:52:5"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::old
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator)))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocator16checkStringValueERK8OFString"
               %dcmtk::dcm-universal-resource-identifier-or-locator+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:163:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocator10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:116:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK39DcmUniversalResourceIdentifierOrLocator5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:87:24"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator)))

(iffi:defifun ("__claw__ZNK39DcmUniversalResourceIdentifierOrLocator7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:82:17"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocator8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocator11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:132:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocator16getOFStringArrayER8OFStringb"
               %dcmtk::get-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:141:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocator5getVMEv"
               %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:124:27"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator)))

(iffi:defifun ("__claw__ZNK39DcmUniversalResourceIdentifierOrLocator5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:109:20"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator)))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocator16isUniversalMatchEbb"
               %dcmtk::is-universal-match)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:153:20"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::normalize %dcmtk::of-bool)
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK39DcmUniversalResourceIdentifierOrLocator7matchesERK8OFStringS2_b"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:148:20"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::key (:pointer %dcmtk::of-string))
              (%dcmtk::candidate (:pointer %dcmtk::of-string))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocatoraSERKS_"
               %dcmtk::operator=)
              (:pointer
               %dcmtk::dcm-universal-resource-identifier-or-locator)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:62:46"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator))
              (%dcmtk::obj
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator)))

(iffi:defifun ("__claw__ZN39DcmUniversalResourceIdentifierOrLocatorD1Ev"
               %dcmtk::~dcm-universal-resource-identifier-or-locator)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrur.h:56:13"
              (%dcmtk::%%claw-this-
               (:pointer
                %dcmtk::dcm-universal-resource-identifier-or-locator)))

(iffi:deficlass (%dcmtk::dcm-unlimited-characters :size-reporter
                 "__claw_sizeof_DcmUnlimitedCharacters"
                 :alignment-reporter
                 "__claw_alignof_DcmUnlimitedCharacters" :constructor
                 %dcmtk::dcm-unlimited-characters :destructor
                 %dcmtk::~dcm-unlimited-characters)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:34:28")

(iffi:defifun ("__claw__ZN22DcmUnlimitedCharactersC1ERK6DcmTagj"
               %dcmtk::dcm-unlimited-characters)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:44:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-characters))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN22DcmUnlimitedCharactersC1ERKS_"
               %dcmtk::dcm-unlimited-characters)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:50:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-characters))
              (%dcmtk::old
               (:pointer %dcmtk::dcm-unlimited-characters)))

(iffi:defifun ("__claw__ZN22DcmUnlimitedCharacters16checkStringValueERK8OFStringS2_S2_"
               %dcmtk::dcm-unlimited-characters+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:123:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::charset (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN22DcmUnlimitedCharacters10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:97:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-characters))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK22DcmUnlimitedCharacters5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:65:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-characters)))

(iffi:defifun ("__claw__ZN22DcmUnlimitedCharacters8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:82:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-characters))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN22DcmUnlimitedCharacters11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:106:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-characters))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK22DcmUnlimitedCharacters5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:87:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-characters)))

(iffi:defifun ("__claw__ZN22DcmUnlimitedCharactersaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-unlimited-characters)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:60:29"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-characters))
              (%dcmtk::obj
               (:pointer %dcmtk::dcm-unlimited-characters)))

(iffi:defifun ("__claw__ZN22DcmUnlimitedCharactersD1Ev"
               %dcmtk::~dcm-unlimited-characters)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruc.h:54:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-characters)))

(iffi:deficlass (%dcmtk::dcm-unlimited-text :size-reporter
                 "__claw_sizeof_DcmUnlimitedText" :alignment-reporter
                 "__claw_alignof_DcmUnlimitedText" :constructor
                 %dcmtk::dcm-unlimited-text :destructor
                 %dcmtk::~dcm-unlimited-text)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:34:28")

(iffi:defifun ("__claw__ZN16DcmUnlimitedTextC1ERK6DcmTagj"
               %dcmtk::dcm-unlimited-text)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:45:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag))
              (%dcmtk::len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN16DcmUnlimitedTextC1ERKS_"
               %dcmtk::dcm-unlimited-text)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:51:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text))
              (%dcmtk::old (:pointer %dcmtk::dcm-unlimited-text)))

(iffi:defifun ("__claw__ZN16DcmUnlimitedText16checkStringValueERK8OFStringS2_"
               %dcmtk::dcm-unlimited-text+check-string-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:155:24"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::value (:pointer %dcmtk::of-string))
              (%dcmtk::charset (:pointer %dcmtk::of-string)))

(iffi:defifun ("__claw__ZN16DcmUnlimitedText10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:117:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK16DcmUnlimitedText5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:86:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text)))

(iffi:defifun ("__claw__ZNK16DcmUnlimitedText7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:81:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN16DcmUnlimitedText8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:103:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN16DcmUnlimitedText11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:133:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN16DcmUnlimitedText16getOFStringArrayER8OFStringb"
               %dcmtk::get-of-string-array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:142:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN16DcmUnlimitedText5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:125:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text)))

(iffi:defifun ("__claw__ZNK16DcmUnlimitedText5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:108:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text)))

(iffi:defifun ("__claw__ZN16DcmUnlimitedTextaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-unlimited-text)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:61:23"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text))
              (%dcmtk::obj (:pointer %dcmtk::dcm-unlimited-text)))

(iffi:defifun ("__claw__ZN16DcmUnlimitedTextD1Ev"
               %dcmtk::~dcm-unlimited-text)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrut.h:55:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unlimited-text)))

(iffi:deficlass (%dcmtk::dcm-unsigned64bit-very-long :size-reporter
                 "__claw_sizeof_DcmUnsigned64bitVeryLong"
                 :alignment-reporter
                 "__claw_alignof_DcmUnsigned64bitVeryLong"
                 :constructor %dcmtk::dcm-unsigned64bit-very-long
                 :destructor %dcmtk::~dcm-unsigned64bit-very-long)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:32:28")

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLongC1ERK6DcmTag"
               %dcmtk::dcm-unsigned64bit-very-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:46:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLongC1ERKS_"
               %dcmtk::dcm-unsigned64bit-very-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:51:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::old
               (:pointer %dcmtk::dcm-unsigned64bit-very-long)))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:116:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK24DcmUnsigned64bitVeryLong5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:86:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long)))

(iffi:defifun ("__claw__ZNK24DcmUnsigned64bitVeryLong7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:81:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:103:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:127:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long)))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:164:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong9getUint64ERmm"
               %dcmtk::get-uint64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:148:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::uint-val (:pointer %dcmtk::uint64))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong14getUint64ArrayERPm"
               %dcmtk::get-uint64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:156:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::uint-vals
               (:pointer (:pointer %dcmtk::uint64))))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong5getVMEv"
               %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:122:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long)))

(iffi:defifun ("__claw__ZNK24DcmUnsigned64bitVeryLong5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:108:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long)))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLongaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-unsigned64bit-very-long)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:61:31"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::obj
               (:pointer %dcmtk::dcm-unsigned64bit-very-long)))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:137:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:190:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:202:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong9putUint64Emm"
               %dcmtk::put-uint64)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:173:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::uint-val %dcmtk::uint64)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong14putUint64ArrayEPKmm"
               %dcmtk::put-uint64array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:181:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::uint-vals (:pointer %dcmtk::uint64))
              (%dcmtk::num-uints :unsigned-long))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong6verifyEb"
               %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:209:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLong9writeJsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13DcmJsonFormat"
               %dcmtk::write-json)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:216:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::format (:pointer %dcmtk::dcm-json-format)))

(iffi:defifun ("__claw__ZN24DcmUnsigned64bitVeryLongD1Ev"
               %dcmtk::~dcm-unsigned64bit-very-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvruv.h:55:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned64bit-very-long)))

(iffi:deficlass (%dcmtk::dcm-unsigned-long :size-reporter
                 "__claw_sizeof_DcmUnsignedLong" :alignment-reporter
                 "__claw_alignof_DcmUnsignedLong" :constructor
                 %dcmtk::dcm-unsigned-long :destructor
                 %dcmtk::~dcm-unsigned-long)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:33:28")

(iffi:defifun ("__claw__ZN15DcmUnsignedLongC1ERK6DcmTag"
               %dcmtk::dcm-unsigned-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN15DcmUnsignedLongC1ERKS_"
               %dcmtk::dcm-unsigned-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:52:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::old (:pointer %dcmtk::dcm-unsigned-long)))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:117:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK15DcmUnsignedLong5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:87:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long)))

(iffi:defifun ("__claw__ZNK15DcmUnsignedLong7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:82:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:128:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long)))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:165:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong9getUint32ERjm"
               %dcmtk::get-uint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:149:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::uint-val (:pointer %dcmtk::uint32))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong14getUint32ArrayERPj"
               %dcmtk::get-uint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:157:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::uint-vals
               (:pointer (:pointer %dcmtk::uint32))))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:123:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long)))

(iffi:defifun ("__claw__ZNK15DcmUnsignedLong5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:109:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long)))

(iffi:defifun ("__claw__ZNK15DcmUnsignedLong7matchesERK10DcmElementb"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:213:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::candidate (:pointer %dcmtk::dcm-element))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN15DcmUnsignedLongaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-unsigned-long)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:62:22"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::obj (:pointer %dcmtk::dcm-unsigned-long)))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:138:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:191:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:203:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong9putUint32Ejm"
               %dcmtk::put-uint32)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:174:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::uint-val %dcmtk::uint32)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong14putUint32ArrayEPKjm"
               %dcmtk::put-uint32array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:182:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::uint-vals (:pointer %dcmtk::uint32))
              (%dcmtk::num-uints :unsigned-long))

(iffi:defifun ("__claw__ZN15DcmUnsignedLong6verifyEb" %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:210:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN15DcmUnsignedLongD1Ev"
               %dcmtk::~dcm-unsigned-long)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrul.h:56:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long)))

(iffi:deficlass (%dcmtk::dcm-unsigned-long-offset :size-reporter
                 "__claw_sizeof_DcmUnsignedLongOffset"
                 :alignment-reporter
                 "__claw_alignof_DcmUnsignedLongOffset" :constructor
                 %dcmtk::dcm-unsigned-long-offset :destructor
                 %dcmtk::~dcm-unsigned-long-offset)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:35:28")

(iffi:defifun ("__claw__ZN21DcmUnsignedLongOffsetC1ERK6DcmTag"
               %dcmtk::dcm-unsigned-long-offset)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:51:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN21DcmUnsignedLongOffsetC1ERKS_"
               %dcmtk::dcm-unsigned-long-offset)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:56:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset))
              (%dcmtk::old
               (:pointer %dcmtk::dcm-unsigned-long-offset)))

(iffi:defifun ("__claw__ZN21DcmUnsignedLongOffset5clearEv"
               %dcmtk::clear)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:98:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset)))

(iffi:defifun ("__claw__ZNK21DcmUnsignedLongOffset5cloneEv"
               %dcmtk::clone :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:71:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset)))

(iffi:defifun ("__claw__ZN21DcmUnsignedLongOffset8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:88:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN21DcmUnsignedLongOffset13getNextRecordEv"
               %dcmtk::get-next-record)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:103:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset)))

(iffi:defifun ("__claw__ZNK21DcmUnsignedLongOffset5identEv"
               %dcmtk::ident :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:93:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset)))

(iffi:defifun ("__claw__ZN21DcmUnsignedLongOffsetaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-unsigned-long-offset)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:66:28"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset))
              (%dcmtk::obj
               (:pointer %dcmtk::dcm-unsigned-long-offset)))

(iffi:defifun ("__claw__ZN21DcmUnsignedLongOffset13setNextRecordEP9DcmObject"
               %dcmtk::set-next-record)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:109:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset))
              (%dcmtk::record (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN21DcmUnsignedLongOffset6verifyEb"
               %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:115:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN21DcmUnsignedLongOffsetD1Ev"
               %dcmtk::~dcm-unsigned-long-offset)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrulup.h:60:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-long-offset)))

(iffi:deficlass (%dcmtk::dcm-unsigned-short :size-reporter
                 "__claw_sizeof_DcmUnsignedShort" :alignment-reporter
                 "__claw_alignof_DcmUnsignedShort" :constructor
                 %dcmtk::dcm-unsigned-short :destructor
                 %dcmtk::~dcm-unsigned-short)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:33:28")

(iffi:defifun ("__claw__ZN16DcmUnsignedShortC1ERK6DcmTag"
               %dcmtk::dcm-unsigned-short)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:47:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::tag (:pointer %dcmtk::dcm-tag)))

(iffi:defifun ("__claw__ZN16DcmUnsignedShortC1ERKS_"
               %dcmtk::dcm-unsigned-short)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:52:5"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::old (:pointer %dcmtk::dcm-unsigned-short)))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort10checkValueERK8OFStringb"
               %dcmtk::check-value)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:117:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::vm (:pointer %dcmtk::of-string))
              (%dcmtk::old-format %dcmtk::of-bool))

(iffi:defifun ("__claw__ZNK16DcmUnsignedShort5cloneEv" %dcmtk::clone
               :non-mutating t)
              (:pointer %dcmtk::dcm-object)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:87:24"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short)))

(iffi:defifun ("__claw__ZNK16DcmUnsignedShort7compareERK10DcmElement"
               %dcmtk::compare :non-mutating t)
              :int
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:72:17"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-element)))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort8copyFromERK9DcmObject"
               %dcmtk::copy-from)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:104:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::rhs (:pointer %dcmtk::dcm-object)))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort17getNumberOfValuesEv"
               %dcmtk::get-number-of-values)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:128:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short)))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort11getOFStringER8OFStringmb"
               %dcmtk::get-of-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:165:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::string-val (:pointer %dcmtk::of-string))
              (%dcmtk::pos :unsigned-long)
              (%dcmtk::normalize %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort9getUint16ERtm"
               %dcmtk::get-uint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:149:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::uint-val (:pointer %dcmtk::uint16))
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort14getUint16ArrayERPt"
               %dcmtk::get-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:157:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::uint-vals
               (:pointer (:pointer %dcmtk::uint16))))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort5getVMEv" %dcmtk::get-vm)
              :unsigned-long
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:123:27"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short)))

(iffi:defifun ("__claw__ZNK16DcmUnsignedShort5identEv" %dcmtk::ident
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:109:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short)))

(iffi:defifun ("__claw__ZNK16DcmUnsignedShort7matchesERK10DcmElementb"
               %dcmtk::matches :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:213:20"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::candidate (:pointer %dcmtk::dcm-element))
              (%dcmtk::enable-wild-card-matching %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN16DcmUnsignedShortaSERKS_"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-unsigned-short)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:82:23"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::obj (:pointer %dcmtk::dcm-unsigned-short)))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEEmiPKcPm"
               %dcmtk::print)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:138:18"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::out (:pointer %dcmtk::std+ostream))
              (%dcmtk::flags %dcmtk::size-t)
              (%dcmtk::level :int)
              (%dcmtk::pixel-file-name :string)
              (%dcmtk::pixel-counter (:pointer %dcmtk::size-t)))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort9putStringEPKc"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:191:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::string-val :string))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort9putStringEPKcj"
               %dcmtk::put-string)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:203:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::string-val :string)
              (%dcmtk::string-len %dcmtk::uint32))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort9putUint16Etm"
               %dcmtk::put-uint16)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:174:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::uint-val %dcmtk::uint16)
              (%dcmtk::pos :unsigned-long))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort14putUint16ArrayEPKtm"
               %dcmtk::put-uint16array)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:182:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::uint-vals (:pointer %dcmtk::uint16))
              (%dcmtk::num-uints :unsigned-long))

(iffi:defifun ("__claw__ZN16DcmUnsignedShort6verifyEb"
               %dcmtk::verify)
              (:pointer %dcmtk::of-condition)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:210:25"
              (%dcmtk::%%claw-result-
               (:pointer %dcmtk::of-condition))
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short))
              (%dcmtk::autocorrect %dcmtk::of-bool))

(iffi:defifun ("__claw__ZN16DcmUnsignedShortD1Ev"
               %dcmtk::~dcm-unsigned-short)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvrus.h:76:13"
              (%dcmtk::%%claw-this-
               (:pointer %dcmtk::dcm-unsigned-short)))

(iffi:defifun ("__claw__ZN5DcmVRC1Ev" %dcmtk::dcm-vr)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:287:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZN5DcmVRC1E6DcmEVR" %dcmtk::dcm-vr)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:295:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::evr %dcmtk::dcm-evr))

(iffi:defifun ("__claw__ZN5DcmVRC1ERKS_" %dcmtk::dcm-vr)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:317:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::avr (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZN5DcmVRC1EPKc" %dcmtk::dcm-vr)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:308:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::vr-name :string))

(iffi:defifun ("__claw__ZNK5DcmVR17getDelimiterCharsEv"
               %dcmtk::get-delimiter-chars :non-mutating t)
              (:pointer %dcmtk::of-string)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:459:21"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR6getEVREv" %dcmtk::get-evr
               :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:353:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR17getMaxValueLengthEv"
               %dcmtk::get-max-value-length :non-mutating t)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:445:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR17getMinValueLengthEv"
               %dcmtk::get-min-value-length :non-mutating t)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:438:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR9getVRNameEv" %dcmtk::get-vr-name
               :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:374:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR11getValidEVREv"
               %dcmtk::get-valid-evr :non-mutating t)
              %dcmtk::dcm-evr
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:369:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR14getValidVRNameEv"
               %dcmtk::get-valid-vr-name :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:382:17"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR13getValueWidthEv"
               %dcmtk::get-value-width :non-mutating t)
              %dcmtk::size-t
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:390:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR32isAffectedBySpecificCharacterSetEv"
               %dcmtk::is-affected-by-specific-character-set
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:451:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR12isEquivalentERKS_"
               %dcmtk::is-equivalent :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:427:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::avr (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR20isForInternalUseOnlyEv"
               %dcmtk::is-for-internal-use-only :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:400:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR14isLengthInCharEv"
               %dcmtk::is-length-in-char :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:465:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR10isStandardEv" %dcmtk::is-standard
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:395:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR9isaStringEv" %dcmtk::isa-string
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:405:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZN5DcmVRaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-vr)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:344:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::arg (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZN5DcmVR5setVRE6DcmEVR" %dcmtk::set-vr)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:325:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::evr %dcmtk::dcm-evr))

(iffi:defifun ("__claw__ZN5DcmVR5setVRERKS_" %dcmtk::set-vr)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:338:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::avr (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZN5DcmVR5setVREPKc" %dcmtk::set-vr)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:333:10"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr))
              (%dcmtk::vr-name :string))

(iffi:defifun ("__claw__ZNK5DcmVR23supportsUndefinedLengthEv"
               %dcmtk::supports-undefined-length :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:418:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw__ZNK5DcmVR26usesExtendedLengthEncodingEv"
               %dcmtk::uses-extended-length-encoding :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcvr.h:412:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:defifun ("__claw_cE3AE40SE40DcmVR_claw_dtor" %dcmtk::~dcm-vr)
              :void
              "::"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-vr)))

(iffi:deficlass (%dcmtk::dcm-xfer :size-reporter
                 "__claw_sizeof_DcmXfer" :alignment-reporter
                 "__claw_alignof_DcmXfer" :constructor
                 %dcmtk::dcm-xfer :destructor %dcmtk::~dcm-xfer)
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:177:28")

(iffi:defifun ("__claw__ZN7DcmXferC1E16E_TransferSyntax"
               %dcmtk::dcm-xfer)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:183:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZN7DcmXferC1ERKS_" %dcmtk::dcm-xfer)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:191:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer))
              (%dcmtk::new-xfer (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZN7DcmXferC1EPKc" %dcmtk::dcm-xfer)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:188:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer))
              (%dcmtk::xfer-name-xfer-id :string))

(iffi:defifun ("__claw__ZNK7DcmXfer12getByteOrderEv"
               %dcmtk::get-byte-order :non-mutating t)
              %dcmtk::e-byte-order
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:206:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer19getJPEGProcess12BitEv"
               %dcmtk::get-jpeg-process12bit :non-mutating t)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:256:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer18getJPEGProcess8BitEv"
               %dcmtk::get-jpeg-process8bit :non-mutating t)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:249:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer21getPixelDataByteOrderEv"
               %dcmtk::get-pixel-data-byte-order :non-mutating t)
              %dcmtk::e-byte-order
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:209:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer20getStreamCompressionEv"
               %dcmtk::get-stream-compression :non-mutating t)
              %dcmtk::e-stream-compression
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:286:32"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer7getXferEv" %dcmtk::get-xfer
               :non-mutating t)
              %dcmtk::e-transfer-syntax
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:203:29"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer9getXferIDEv" %dcmtk::get-xfer-id
               :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:215:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer11getXferNameEv"
               %dcmtk::get-xfer-name :non-mutating t)
              :string
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:212:24"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer11isBigEndianEv"
               %dcmtk::is-big-endian :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:224:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer14isEncapsulatedEv"
               %dcmtk::is-encapsulated :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:233:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer12isExplicitVREv"
               %dcmtk::is-explicit-vr :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:230:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer12isImplicitVREv"
               %dcmtk::is-implicit-vr :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:227:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer14isLittleEndianEv"
               %dcmtk::is-little-endian :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:218:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer10isLosslessEv"
               %dcmtk::is-lossless :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:270:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer7isLossyEv" %dcmtk::is-lossy
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:261:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer17isNotEncapsulatedEv"
               %dcmtk::is-not-encapsulated :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:239:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer12isReferencedEv"
               %dcmtk::is-referenced :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:295:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZNK7DcmXfer9isRetiredEv" %dcmtk::is-retired
               :non-mutating t)
              %dcmtk::of-bool
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:278:19"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZN7DcmXferaSERKS_" %dcmtk::operator=)
              (:pointer %dcmtk::dcm-xfer)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:200:15"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer))
              (%dcmtk::newtag (:pointer %dcmtk::dcm-xfer)))

(iffi:defifun ("__claw__ZN7DcmXferaSE16E_TransferSyntax"
               %dcmtk::operator=)
              (:pointer %dcmtk::dcm-xfer)
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:197:15"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer))
              (%dcmtk::xfer %dcmtk::e-transfer-syntax))

(iffi:defifun ("__claw__ZNK7DcmXfer15sizeofTagHeaderE6DcmEVR"
               %dcmtk::sizeof-tag-header :non-mutating t)
              %dcmtk::uint32
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:306:12"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer))
              (%dcmtk::evr %dcmtk::dcm-evr))

(iffi:defifun ("__claw__ZN7DcmXferD1Ev" %dcmtk::~dcm-xfer)
              :void
              "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcxfer.h:194:5"
              (%dcmtk::%%claw-this- (:pointer %dcmtk::dcm-xfer)))

(iffi:deficlass (%dcmtk::of-list<dcm-representation-entry*>
                 :size-reporter
                 "__claw_sizeof_OFList_DcmRepresentationEntry__"
                 :alignment-reporter
                 "__claw_alignof_OFList_DcmRepresentationEntry__")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oflist.h:302:7")

(iffi:defitype %dcmtk::dcm-representation-list
               %dcmtk::of-list<dcm-representation-entry*>
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:127:42")

(iffi:deficlass (%dcmtk::of-iterator<dcm-representation-entry*>
                 :size-reporter
                 "__claw_sizeof_OFIterator_DcmRepresentationEntry__"
                 :alignment-reporter
                 "__claw_alignof_OFIterator_DcmRepresentationEntry__")
                nil
                "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/ofstd/include/dcmtk/ofstd/oflist.h:169:7")

(iffi:defitype %dcmtk::dcm-representation-list-const-iterator
               %dcmtk::of-iterator<dcm-representation-entry*>
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:133:55")

(iffi:defitype %dcmtk::dcm-representation-list-iterator
               %dcmtk::of-iterator<dcm-representation-entry*>
               "/home/borodust/devel/repo/cl-dcmtk/src/lib/dcmtk/dcmdata/include/dcmtk/dcmdata/dcpixel.h:130:50")

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%dcmtk::~dcm-dataset "%DCMTK")
  (export '%dcmtk::+elp-prev+ "%DCMTK")
  (export '%dcmtk::number-of-normal-tag-entries "%DCMTK")
  (export '%dcmtk::+elp-atpos+ "%DCMTK")
  (export '%dcmtk::dcm-universal-resource-identifier-or-locator
          "%DCMTK")
  (export '%dcmtk::get-uint32 "%DCMTK")
  (export '%dcmtk::remove-all-but-original-representations "%DCMTK")
  (export '%dcmtk::dcm-code-string+check-string-value "%DCMTK")
  (export '%dcmtk::operator++ "%DCMTK")
  (export '%dcmtk::+ert-presentation+ "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process25-27+ "%DCMTK")
  (export '%dcmtk::dcm-short-string+check-string-value "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process3-5+ "%DCMTK")
  (export '%dcmtk::is-empty "%DCMTK")
  (export '%dcmtk::uint16 "%DCMTK")
  (export '%dcmtk::write-json "%DCMTK")
  (export '%dcmtk::remove-invalid-groups "%DCMTK")
  (export '%dcmtk::dcm-floating-point-double "%DCMTK")
  (export '%dcmtk::+ert-results+ "%DCMTK")
  (export '%dcmtk::get-referenced-mrdr "%DCMTK")
  (export '%dcmtk::get-byte-order "%DCMTK")
  (export '%dcmtk::get-float32 "%DCMTK")
  (export '%dcmtk::dcm-representation-entry "%DCMTK")
  (export '%dcmtk::dcm-pixel-item "%DCMTK")
  (export '%dcmtk::get-uncompressed-frame "%DCMTK")
  (export '%dcmtk::dcm-object+print-helper "%DCMTK")
  (export '%dcmtk::dcm-private-tag-cache-entry "%DCMTK")
  (export '%dcmtk::put-uint16array "%DCMTK")
  (export '%dcmtk::get-sint64 "%DCMTK")
  (export '%dcmtk::dcm-date+check-string-value "%DCMTK")
  (export '%dcmtk::+ert-private+ "%DCMTK")
  (export '%dcmtk::+esc-unsupported+ "%DCMTK")
  (export '%dcmtk::flush "%DCMTK")
  (export '%dcmtk::put-and-insert-tag-key "%DCMTK")
  (export '%dcmtk::is-private-reservation "%DCMTK")
  (export '%dcmtk::dcm-element+get-value-from-string "%DCMTK")
  (export '%dcmtk::is-flushed "%DCMTK")
  (export '%dcmtk::assign-to-sop-file "%DCMTK")
  (export '%dcmtk::get-string "%DCMTK")
  (export '%dcmtk::+exs-jpeg2000lossless-only+ "%DCMTK")
  (export '%dcmtk::+ert-hl7struc-doc+ "%DCMTK")
  (export '%dcmtk::~dcm-date-time "%DCMTK")
  (export '%dcmtk::write-xml "%DCMTK")
  (export '%dcmtk::card-sub "%DCMTK")
  (export '%dcmtk::+ert-rt-dose+ "%DCMTK")
  (export '%dcmtk::dcm-date+get-dicom-date-from-of-date "%DCMTK")
  (export '%dcmtk::get-sint16 "%DCMTK")
  (export '%dcmtk::subset "%DCMTK")
  (export '%dcmtk::get-partial-value "%DCMTK")
  (export '%dcmtk::get-of-time "%DCMTK")
  (export '%dcmtk::put-uint8array "%DCMTK")
  (export '%dcmtk::+ert-tract+ "%DCMTK")
  (export '%dcmtk::get-sint32array "%DCMTK")
  (export '%dcmtk::repeating-end "%DCMTK")
  (export '%dcmtk::put-and-insert-sint32 "%DCMTK")
  (export '%dcmtk::store-compressed-frame "%DCMTK")
  (export '%dcmtk::+esm-from-stack-top+ "%DCMTK")
  (export '%dcmtk::find-and-get-float32array "%DCMTK")
  (export '%dcmtk::dcm-sequence-of-items "%DCMTK")
  (export '%dcmtk::find-and-get-element "%DCMTK")
  (export '%dcmtk::+ert-overlay+ "%DCMTK")
  (export '%dcmtk::+exs-jpeg2000multicomponent+ "%DCMTK")
  (export '%dcmtk::of-date "%DCMTK")
  (export '%dcmtk::+exs-jpeg2000+ "%DCMTK")
  (export '%dcmtk::~dcm-dict-entry-list "%DCMTK")
  (export '%dcmtk::get-g-tag "%DCMTK")
  (export '%dcmtk::find-and-get-float32 "%DCMTK")
  (export '%dcmtk::number-of-entries "%DCMTK")
  (export '%dcmtk::dcm-element+check-vm "%DCMTK")
  (export '%dcmtk::dcm-unlimited-text "%DCMTK")
  (export '%dcmtk::is-referenced "%DCMTK")
  (export '%dcmtk::dcm-other64bit-very-long "%DCMTK")
  (export '%dcmtk::operator!= "%DCMTK")
  (export '%dcmtk::+ert-patient+ "%DCMTK")
  (export '%dcmtk::put-uint64array "%DCMTK")
  (export '%dcmtk::get-element-range-restriction "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process1+ "%DCMTK")
  (export '%dcmtk::insert-sub-at-current-pos "%DCMTK")
  (export '%dcmtk::+ewm-dont-update-meta+ "%DCMTK")
  (export '%dcmtk::create-float32array "%DCMTK")
  (export '%dcmtk::+ert-assessment+ "%DCMTK")
  (export '%dcmtk::find-and-get-float64 "%DCMTK")
  (export '%dcmtk::~dcm-integer-string "%DCMTK")
  (export '%dcmtk::put-and-insert-uint16array "%DCMTK")
  (export '%dcmtk::check-for-specific-character-set "%DCMTK")
  (export '%dcmtk::~dcm-age-string "%DCMTK")
  (export '%dcmtk::size "%DCMTK")
  (export '%dcmtk::get-max-value-length "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process10-12+ "%DCMTK")
  (export '%dcmtk::can-choose-representation "%DCMTK")
  (export '%dcmtk::get-root-record "%DCMTK")
  (export '%dcmtk::dcm-other-long "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process2-4+ "%DCMTK")
  (export '%dcmtk::~dcm-signed-short "%DCMTK")
  (export '%dcmtk::put-and-insert-sint16array "%DCMTK")
  (export '%dcmtk::+exs-mpeg4high-profile-level4-1+ "%DCMTK")
  (export '%dcmtk::normal-begin "%DCMTK")
  (export '%dcmtk::number-of-repeating-tag-entries "%DCMTK")
  (export '%dcmtk::+exs-mpeg4high-profile-level4-2-for2d-video+
          "%DCMTK")
  (export '%dcmtk::find-and-get-uint32array "%DCMTK")
  (export '%dcmtk::dcm-date+get-iso-formatted-date-from-string
          "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process14sv1+ "%DCMTK")
  (export '%dcmtk::+ert-modality-lut+ "%DCMTK")
  (export '%dcmtk::get-e-tag "%DCMTK")
  (export '%dcmtk::put-sint16 "%DCMTK")
  (export '%dcmtk::dcm-long-text+check-string-value "%DCMTK")
  (export '%dcmtk::+ert-measurement+ "%DCMTK")
  (export '%dcmtk::is-private-creator-for "%DCMTK")
  (export '%dcmtk::get-formatted-name "%DCMTK")
  (export '%dcmtk::get-record-type "%DCMTK")
  (export '%dcmtk::set-next-record "%DCMTK")
  (export '%dcmtk::is-dictionary-loaded "%DCMTK")
  (export '%dcmtk::find-and-get-long-int "%DCMTK")
  (export '%dcmtk::get-group "%DCMTK")
  (export '%dcmtk::begin "%DCMTK")
  (export '%dcmtk::~dcm-other64bit-very-long "%DCMTK")
  (export '%dcmtk::dcm-time+get-current-time "%DCMTK")
  (export '%dcmtk::find-or-create-sequence-item "%DCMTK")
  (export '%dcmtk::card "%DCMTK")
  (export '%dcmtk::put-and-insert-float32 "%DCMTK")
  (export '%dcmtk::+dcm-tag-error-tag-name+ "%DCMTK")
  (export '%dcmtk::is-universal-match "%DCMTK")
  (export '%dcmtk::+ert-print-queue+ "%DCMTK")
  (export '%dcmtk::is-lossy "%DCMTK")
  (export '%dcmtk::put-and-insert-uint32array "%DCMTK")
  (export '%dcmtk::~dcm-pixel-data "%DCMTK")
  (export '%dcmtk::is-encapsulated "%DCMTK")
  (export '%dcmtk::operator> "%DCMTK")
  (export '%dcmtk::save-file "%DCMTK")
  (export '%dcmtk::+ert-curve+ "%DCMTK")
  (export '%dcmtk::put-float64prec "%DCMTK")
  (export '%dcmtk::clear-sub "%DCMTK")
  (export '%dcmtk::get-valid-vr-name "%DCMTK")
  (export '%dcmtk::+ert-root+ "%DCMTK")
  (export '%dcmtk::set-non-encapsulation-flag "%DCMTK")
  (export '%dcmtk::+exs-jpeg2000multicomponent-lossless-only+
          "%DCMTK")
  (export '%dcmtk::create-float64array "%DCMTK")
  (export '%dcmtk::find-and-get-elements "%DCMTK")
  (export '%dcmtk::private-creator-match "%DCMTK")
  (export '%dcmtk::dcm-output-filter "%DCMTK")
  (export '%dcmtk::dcm-decimal-string+check-string-value "%DCMTK")
  (export '%dcmtk::set-eq "%DCMTK")
  (export '%dcmtk::dcm-unique-identifier+check-string-value "%DCMTK")
  (export '%dcmtk::read "%DCMTK")
  (export '%dcmtk::get-read-mode "%DCMTK")
  (export '%dcmtk::dcm-write-cache "%DCMTK")
  (export '%dcmtk::contains-extended-characters "%DCMTK")
  (export '%dcmtk::remove-original-representation "%DCMTK")
  (export '%dcmtk::find-and-get-uint16array "%DCMTK")
  (export '%dcmtk::put-sint64array "%DCMTK")
  (export '%dcmtk::dcm-codec-list "%DCMTK")
  (export '%dcmtk::is-standard "%DCMTK")
  (export '%dcmtk::dcm-attribute-tag "%DCMTK")
  (export '%dcmtk::get-length "%DCMTK")
  (export '%dcmtk::get-jpeg-process12bit "%DCMTK")
  (export '%dcmtk::put-sint32 "%DCMTK")
  (export '%dcmtk::get-dir-file-format "%DCMTK")
  (export '%dcmtk::dcm-tag+find-tag-from-name "%DCMTK")
  (export '%dcmtk::eos "%DCMTK")
  (export '%dcmtk::e-file-read-mode "%DCMTK")
  (export '%dcmtk::get-sint32 "%DCMTK")
  (export '%dcmtk::find-and-get-sint16array "%DCMTK")
  (export '%dcmtk::+epd-without-padding+ "%DCMTK")
  (export '%dcmtk::dcm-private-tag-cache "%DCMTK")
  (export '%dcmtk::~dcm-signed64bit-very-long "%DCMTK")
  (export '%dcmtk::write-json-ext "%DCMTK")
  (export '%dcmtk::convert-to-utf8 "%DCMTK")
  (export '%dcmtk::is-nested "%DCMTK")
  (export '%dcmtk::~dcm-unlimited-characters "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process28+ "%DCMTK")
  (export '%dcmtk::dcm-hash-dict "%DCMTK")
  (export '%dcmtk::e-grp-len-encoding "%DCMTK")
  (export '%dcmtk::read-until-tag "%DCMTK")
  (export '%dcmtk::+erm-meta-only+ "%DCMTK")
  (export '%dcmtk::dcm-person-name+get-string-from-name-components
          "%DCMTK")
  (export '%dcmtk::isa-string "%DCMTK")
  (export '%dcmtk::dcm-time "%DCMTK")
  (export '%dcmtk::dcm-short-text+check-string-value "%DCMTK")
  (export '%dcmtk::insert-sub "%DCMTK")
  (export '%dcmtk::~dcm-other-double "%DCMTK")
  (export '%dcmtk::seek "%DCMTK")
  (export '%dcmtk::put-and-insert-float64 "%DCMTK")
  (export '%dcmtk::get-pixel-data-byte-order "%DCMTK")
  (export '%dcmtk::get-uint8 "%DCMTK")
  (export '%dcmtk::get-tag "%DCMTK")
  (export '%dcmtk::+ebo-little-endian+ "%DCMTK")
  (export '%dcmtk::dcm-pixel-sequence "%DCMTK")
  (export '%dcmtk::~dcm-data-dictionary "%DCMTK")
  (export '%dcmtk::get-parent-item "%DCMTK")
  (export '%dcmtk::~dcm-output-stream "%DCMTK")
  (export '%dcmtk::print "%DCMTK")
  (export '%dcmtk::+exs-jpip-referenced-deflate+ "%DCMTK")
  (export '%dcmtk::~dcm-attribute-tag "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process15+ "%DCMTK")
  (export '%dcmtk::~dcm-sequence-of-items "%DCMTK")
  (export '%dcmtk::dcm-age-string "%DCMTK")
  (export '%dcmtk::+egl-without-gl+ "%DCMTK")
  (export '%dcmtk::sizeof-tag-header "%DCMTK")
  (export '%dcmtk::is-retired "%DCMTK")
  (export '%dcmtk::calc-element-length "%DCMTK")
  (export '%dcmtk::+erw-not-initialized+ "%DCMTK")
  (export '%dcmtk::+dcm-variable-vm+ "%DCMTK")
  (export '%dcmtk::get-xfer "%DCMTK")
  (export '%dcmtk::+exs-big-endian-implicit+ "%DCMTK")
  (export '%dcmtk::set-current-representation-parameter "%DCMTK")
  (export '%dcmtk::dcm-hash-dict-iterator "%DCMTK")
  (export '%dcmtk::find-entry "%DCMTK")
  (export '%dcmtk::+exs-mpeg4b-dcompatible-high-profile-level4-1+
          "%DCMTK")
  (export '%dcmtk::set-group "%DCMTK")
  (export '%dcmtk::set-parent "%DCMTK")
  (export '%dcmtk::create-uint8array "%DCMTK")
  (export '%dcmtk::put-tag-val "%DCMTK")
  (export '%dcmtk::~dcm-long-string "%DCMTK")
  (export '%dcmtk::~dcm-universal-resource-identifier-or-locator
          "%DCMTK")
  (export '%dcmtk::get-real-length "%DCMTK")
  (export '%dcmtk::can-write-xfer "%DCMTK")
  (export '%dcmtk::dcm-tag-key "%DCMTK")
  (export '%dcmtk::+ert-rt-structure-set+ "%DCMTK")
  (export '%dcmtk::of-filename "%DCMTK")
  (export '%dcmtk::get-float64vector "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process7-9+ "%DCMTK")
  (export '%dcmtk::is-lossless "%DCMTK")
  (export '%dcmtk::+ert-study+ "%DCMTK")
  (export '%dcmtk::get-tag-val "%DCMTK")
  (export '%dcmtk::~dcm-decimal-string "%DCMTK")
  (export '%dcmtk::of-iterator<dcm-dict-entry*> "%DCMTK")
  (export '%dcmtk::~dcm-xfer "%DCMTK")
  (export '%dcmtk::dcm-dicom-dir "%DCMTK")
  (export '%dcmtk::~dcm-list "%DCMTK")
  (export '%dcmtk::+ert-study-component+ "%DCMTK")
  (export '%dcmtk::+exs-jpegls-lossy+ "%DCMTK")
  (export '%dcmtk::delete-sub-and-purge-file "%DCMTK")
  (export '%dcmtk::~dcm-private-tag-cache-entry "%DCMTK")
  (export '%dcmtk::+ert-surface+ "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process17-19+ "%DCMTK")
  (export '%dcmtk::dcm-code-string+check-vr "%DCMTK")
  (export '%dcmtk::dcm-short-string "%DCMTK")
  (export '%dcmtk::set-current-date "%DCMTK")
  (export '%dcmtk::+epd-with-padding+ "%DCMTK")
  (export '%dcmtk::dcm-meta-info "%DCMTK")
  (export '%dcmtk::put-and-insert-float64array "%DCMTK")
  (export '%dcmtk::dcm-stack-node "%DCMTK")
  (export '%dcmtk::dcm-unique-identifier "%DCMTK")
  (export '%dcmtk::e-dir-rec-type "%DCMTK")
  (export '%dcmtk::dcm-dict-entry-list "%DCMTK")
  (export '%dcmtk::get "%DCMTK")
  (export '%dcmtk::+ert-voi-lut+ "%DCMTK")
  (export '%dcmtk::+ert-implant-group+ "%DCMTK")
  (export '%dcmtk::~dcm-signed-long "%DCMTK")
  (export '%dcmtk::dcm-time+check "%DCMTK")
  (export '%dcmtk::normal-end "%DCMTK")
  (export '%dcmtk::putback "%DCMTK")
  (export '%dcmtk::seek-to "%DCMTK")
  (export '%dcmtk::is-variable-range-vm "%DCMTK")
  (export '%dcmtk::dcm-person-name+get-name-components-from-string
          "%DCMTK")
  (export '%dcmtk::get-iso-formatted-date "%DCMTK")
  (export '%dcmtk::+elp-next+ "%DCMTK")
  (export '%dcmtk::is-big-endian "%DCMTK")
  (export '%dcmtk::dcm-vr "%DCMTK")
  (export '%dcmtk::detach-value-field "%DCMTK")
  (export '%dcmtk::dcm-application-entity "%DCMTK")
  (export '%dcmtk::get-records-origin-file "%DCMTK")
  (export '%dcmtk::put-float32 "%DCMTK")
  (export '%dcmtk::find-and-get-sint64 "%DCMTK")
  (export '%dcmtk::load-file-until-tag "%DCMTK")
  (export '%dcmtk::dcm-other-float "%DCMTK")
  (export '%dcmtk::find-and-get-uint16 "%DCMTK")
  (export '%dcmtk::uses-extended-length-encoding "%DCMTK")
  (export '%dcmtk::load-summary "%DCMTK")
  (export '%dcmtk::e-search-mode "%DCMTK")
  (export '%dcmtk::value "%DCMTK")
  (export '%dcmtk::~dcm-item "%DCMTK")
  (export '%dcmtk::get-xfer-name "%DCMTK")
  (export '%dcmtk::dcm-signed-long "%DCMTK")
  (export '%dcmtk::dcm-attribute-tag+check-string-value "%DCMTK")
  (export '%dcmtk::is-explicit-vr "%DCMTK")
  (export '%dcmtk::dcm-long-text "%DCMTK")
  (export '%dcmtk::get-valid-evr "%DCMTK")
  (export '%dcmtk::dcm-unsigned64bit-very-long "%DCMTK")
  (export '%dcmtk::get-name-components "%DCMTK")
  (export '%dcmtk::+exs-jpegls-lossless+ "%DCMTK")
  (export '%dcmtk::dcm-time+get-of-time-from-string "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process6-8+ "%DCMTK")
  (export '%dcmtk::mark "%DCMTK")
  (export '%dcmtk::to-string "%DCMTK")
  (export '%dcmtk::~dcm-unsigned-long "%DCMTK")
  (export '%dcmtk::get-file-offset "%DCMTK")
  (export '%dcmtk::of-vector<double> "%DCMTK")
  (export '%dcmtk::find-and-get-uint8array "%DCMTK")
  (export '%dcmtk::good "%DCMTK")
  (export '%dcmtk::put-and-insert-uint32 "%DCMTK")
  (export '%dcmtk::add-entry "%DCMTK")
  (export '%dcmtk::+esc-zlib+ "%DCMTK")
  (export '%dcmtk::+erw-init+ "%DCMTK")
  (export '%dcmtk::hash "%DCMTK")
  (export '%dcmtk::+egl-with-gl+ "%DCMTK")
  (export '%dcmtk::dcm-evr "%DCMTK")
  (export '%dcmtk::get-uint32array "%DCMTK")
  (export '%dcmtk::get-evr "%DCMTK")
  (export '%dcmtk::insert-at-current-pos "%DCMTK")
  (export '%dcmtk::+exs-private-ge-lei-with-big-endian-pixel-data+
          "%DCMTK")
  (export '%dcmtk::get-float32array "%DCMTK")
  (export '%dcmtk::get-uncompressed-frame-size "%DCMTK")
  (export '%dcmtk::dcm-unsigned-short "%DCMTK")
  (export '%dcmtk::get-key "%DCMTK")
  (export '%dcmtk::lookup-v-rin-dictionary "%DCMTK")
  (export '%dcmtk::get-x-tag "%DCMTK")
  (export '%dcmtk::is-signable "%DCMTK")
  (export '%dcmtk::insert-empty-element "%DCMTK")
  (export '%dcmtk::~dcm-short-string "%DCMTK")
  (export '%dcmtk::find-and-get-uint64array "%DCMTK")
  (export '%dcmtk::dcm-time+get-time-zone-from-string "%DCMTK")
  (export '%dcmtk::dcm-code-string "%DCMTK")
  (export '%dcmtk::dcm-consumer "%DCMTK")
  (export '%dcmtk::is-fixed-single-vm "%DCMTK")
  (export '%dcmtk::put-uint64 "%DCMTK")
  (export '%dcmtk::~dcm-polymorph-obow "%DCMTK")
  (export '%dcmtk::create-uint16array "%DCMTK")
  (export '%dcmtk::dcm-date-time "%DCMTK")
  (export '%dcmtk::dcm-age-string+check-string-value "%DCMTK")
  (export '%dcmtk::find-and-insert-copy-of-element "%DCMTK")
  (export '%dcmtk::dcm-input-stream-factory-type "%DCMTK")
  (export '%dcmtk::dcm-person-name "%DCMTK")
  (export '%dcmtk::assign-to-mrdr "%DCMTK")
  (export '%dcmtk::+ert-film-box+ "%DCMTK")
  (export '%dcmtk::dcm-time+get-iso-formatted-time-from-string
          "%DCMTK")
  (export '%dcmtk::+ert-radiotherapy+ "%DCMTK")
  (export '%dcmtk::+elp-last+ "%DCMTK")
  (export '%dcmtk::dcm-dataset "%DCMTK")
  (export '%dcmtk::~dcm-other-long "%DCMTK")
  (export '%dcmtk::dcm-representation-list "%DCMTK")
  (export '%dcmtk::+ert-raw-data+ "%DCMTK")
  (export '%dcmtk::load-dictionary "%DCMTK")
  (export '%dcmtk::dcm-date-time+check-string-value "%DCMTK")
  (export '%dcmtk::+eet-undefined-length+ "%DCMTK")
  (export '%dcmtk::+ert-surface-scan+ "%DCMTK")
  (export '%dcmtk::put-sint64 "%DCMTK")
  (export '%dcmtk::dcm-unlimited-characters+check-string-value
          "%DCMTK")
  (export '%dcmtk::dcm-representation-list-const-iterator "%DCMTK")
  (export '%dcmtk::~dcm-tag "%DCMTK")
  (export '%dcmtk::~dcm-char-string "%DCMTK")
  (export '%dcmtk::~dcm-file-format "%DCMTK")
  (export '%dcmtk::is-length-in-char "%DCMTK")
  (export '%dcmtk::compact-elements "%DCMTK")
  (export '%dcmtk::sint64 "%DCMTK")
  (export '%dcmtk::+ert-palette+ "%DCMTK")
  (export '%dcmtk::get-number-of-values "%DCMTK")
  (export '%dcmtk::dcm-element "%DCMTK")
  (export '%dcmtk::reload-dictionaries "%DCMTK")
  (export '%dcmtk::put-of-string-at-pos "%DCMTK")
  (export '%dcmtk::+exs-big-endian-explicit+ "%DCMTK")
  (export '%dcmtk::get-mrdr-sequence "%DCMTK")
  (export '%dcmtk::+ebo-unknown+ "%DCMTK")
  (export '%dcmtk::dcm-directory-record "%DCMTK")
  (export '%dcmtk::is-private "%DCMTK")
  (export '%dcmtk::is-not-encapsulated "%DCMTK")
  (export '%dcmtk::e-padding-encoding "%DCMTK")
  (export '%dcmtk::+ert-film-session+ "%DCMTK")
  (export '%dcmtk::get-float64array "%DCMTK")
  (export '%dcmtk::search "%DCMTK")
  (export '%dcmtk::~dcm-private-tag-cache "%DCMTK")
  (export '%dcmtk::find-and-get-sint32array "%DCMTK")
  (export '%dcmtk::find-and-get-uint32 "%DCMTK")
  (export '%dcmtk::dcm-object "%DCMTK")
  (export '%dcmtk::get-current-representation-key "%DCMTK")
  (export '%dcmtk::next-sub "%DCMTK")
  (export '%dcmtk::get-uint64array "%DCMTK")
  (export '%dcmtk::copy-from "%DCMTK")
  (export '%dcmtk::get-uint16 "%DCMTK")
  (export '%dcmtk::~dcm-dicom-dir "%DCMTK")
  (export '%dcmtk::dcm-date+get-of-date-from-string "%DCMTK")
  (export '%dcmtk::push "%DCMTK")
  (export '%dcmtk::find-and-get-sequence "%DCMTK")
  (export '%dcmtk::e-stream-compression "%DCMTK")
  (export '%dcmtk::dcm-person-name+get-formatted-name-from-components
          "%DCMTK")
  (export '%dcmtk::change-xfer "%DCMTK")
  (export '%dcmtk::+ewm-update-meta+ "%DCMTK")
  (export '%dcmtk::set-vr "%DCMTK")
  (export '%dcmtk::sint32 "%DCMTK")
  (export '%dcmtk::+elp-first+ "%DCMTK")
  (export '%dcmtk::is-repeating-group "%DCMTK")
  (export '%dcmtk::float32 "%DCMTK")
  (export '%dcmtk::set-upper-element "%DCMTK")
  (export '%dcmtk::get-tag-name "%DCMTK")
  (export '%dcmtk::load-all-data-into-memory "%DCMTK")
  (export '%dcmtk::write-signature-format "%DCMTK")
  (export '%dcmtk::dcm-long-string "%DCMTK")
  (export '%dcmtk::~dcm-application-entity "%DCMTK")
  (export '%dcmtk::transfer-state "%DCMTK")
  (export '%dcmtk::create-uint64array "%DCMTK")
  (export '%dcmtk::operator>= "%DCMTK")
  (export '%dcmtk::put-uint16 "%DCMTK")
  (export '%dcmtk::~dcm-overlay-data "%DCMTK")
  (export '%dcmtk::operator== "%DCMTK")
  (export '%dcmtk::dcm-signed64bit-very-long "%DCMTK")
  (export '%dcmtk::~dcm-directory-record "%DCMTK")
  (export '%dcmtk::remove "%DCMTK")
  (export '%dcmtk::get-iso-formatted-date-time "%DCMTK")
  (export '%dcmtk::get-upper-element "%DCMTK")
  (export '%dcmtk::+erm-auto-detect+ "%DCMTK")
  (export '%dcmtk::remove-sub "%DCMTK")
  (export '%dcmtk::dcm-list-node "%DCMTK")
  (export '%dcmtk::dcm-long-string+check-string-value "%DCMTK")
  (export '%dcmtk::dcm-tag "%DCMTK")
  (export '%dcmtk::+epd-no-change+ "%DCMTK")
  (export '%dcmtk::put-sint16array "%DCMTK")
  (export '%dcmtk::combination-matches "%DCMTK")
  (export '%dcmtk::dcm-decimal-string "%DCMTK")
  (export '%dcmtk::put "%DCMTK")
  (export '%dcmtk::get-vr "%DCMTK")
  (export '%dcmtk::+ert-sr-document+ "%DCMTK")
  (export '%dcmtk::~dcm-long-text "%DCMTK")
  (export '%dcmtk::+ert-rt-plan+ "%DCMTK")
  (export '%dcmtk::dcm-dict-entry "%DCMTK")
  (export '%dcmtk::operator* "%DCMTK")
  (export '%dcmtk::~dcm-code-string "%DCMTK")
  (export '%dcmtk::compare "%DCMTK")
  (export '%dcmtk::get-uint16array "%DCMTK")
  (export '%dcmtk::contains-unknown-vr "%DCMTK")
  (export '%dcmtk::is-repeating-element "%DCMTK")
  (export '%dcmtk::matches "%DCMTK")
  (export '%dcmtk::find-and-get-of-string "%DCMTK")
  (export '%dcmtk::dcm-overlay-data "%DCMTK")
  (export '%dcmtk::is-for-internal-use-only "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process16-18+ "%DCMTK")
  (export '%dcmtk::status "%DCMTK")
  (export '%dcmtk::get-iso-formatted-time "%DCMTK")
  (export '%dcmtk::get-item "%DCMTK")
  (export '%dcmtk::find-and-get-sint64array "%DCMTK")
  (export '%dcmtk::dcm-specific-character-set "%DCMTK")
  (export '%dcmtk::is-equivalent "%DCMTK")
  (export '%dcmtk::put-name-components "%DCMTK")
  (export '%dcmtk::+egl-no-change+ "%DCMTK")
  (export '%dcmtk::remove-all-but-current-representations "%DCMTK")
  (export '%dcmtk::std+ostream "%DCMTK")
  (export '%dcmtk::~dcm-stack "%DCMTK")
  (export '%dcmtk::get-sint64array "%DCMTK")
  (export '%dcmtk::put-and-insert-of-string-array "%DCMTK")
  (export '%dcmtk::+ert-image-box+ "%DCMTK")
  (export '%dcmtk::float64 "%DCMTK")
  (export '%dcmtk::remove-representation "%DCMTK")
  (export '%dcmtk::get-vm-max "%DCMTK")
  (export '%dcmtk::get-and-remove-dataset "%DCMTK")
  (export '%dcmtk::dcm-pixel-data "%DCMTK")
  (export '%dcmtk::contains "%DCMTK")
  (export '%dcmtk::+ert-value-map+ "%DCMTK")
  (export '%dcmtk::transfer-init "%DCMTK")
  (export '%dcmtk::is-affected-by-specific-character-set "%DCMTK")
  (export '%dcmtk::get-original-xfer "%DCMTK")
  (export '%dcmtk::+ert-encap-doc+ "%DCMTK")
  (export '%dcmtk::+ert-image+ "%DCMTK")
  (export '%dcmtk::get-vm-min "%DCMTK")
  (export '%dcmtk::install-compression-filter "%DCMTK")
  (export '%dcmtk::~dcm-time "%DCMTK")
  (export '%dcmtk::set-current-time "%DCMTK")
  (export '%dcmtk::get-of-date "%DCMTK")
  (export '%dcmtk::dcm-person-name+check-string-value "%DCMTK")
  (export '%dcmtk::dcm-input-filter "%DCMTK")
  (export '%dcmtk::dcm-file-format "%DCMTK")
  (export '%dcmtk::prepend "%DCMTK")
  (export '%dcmtk::operator= "%DCMTK")
  (export '%dcmtk::e-list-pos "%DCMTK")
  (export '%dcmtk::dcm-file-cache "%DCMTK")
  (export '%dcmtk::offile-off-t "%DCMTK")
  (export '%dcmtk::of-iterator<dcm-representation-entry*> "%DCMTK")
  (export '%dcmtk::skip "%DCMTK")
  (export '%dcmtk::error "%DCMTK")
  (export '%dcmtk::dcm-producer "%DCMTK")
  (export '%dcmtk::has-representation "%DCMTK")
  (export '%dcmtk::dcm-date "%DCMTK")
  (export '%dcmtk::~dcm-dict-entry "%DCMTK")
  (export '%dcmtk::find-and-get-sequence-item "%DCMTK")
  (export '%dcmtk::transfer-end "%DCMTK")
  (export '%dcmtk::get-current-xfer "%DCMTK")
  (export '%dcmtk::create-value-from-temp-file "%DCMTK")
  (export '%dcmtk::+ert-rt-treat-record+ "%DCMTK")
  (export '%dcmtk::supports-undefined-length "%DCMTK")
  (export '%dcmtk::get-next-record "%DCMTK")
  (export '%dcmtk::dcm-application-entity+check-string-value
          "%DCMTK")
  (export '%dcmtk::number-of-skeleton-entries "%DCMTK")
  (export '%dcmtk::is-group-length "%DCMTK")
  (export '%dcmtk::get-sint16array "%DCMTK")
  (export '%dcmtk::~dcm-unsigned-long-offset "%DCMTK")
  (export '%dcmtk::of-list<unsigned+int> "%DCMTK")
  (export '%dcmtk::dcm-date+check "%DCMTK")
  (export '%dcmtk::find-private-creator "%DCMTK")
  (export '%dcmtk::put-of-string-array "%DCMTK")
  (export '%dcmtk::insert-item "%DCMTK")
  (export '%dcmtk::insert "%DCMTK")
  (export '%dcmtk::get-stream-compression "%DCMTK")
  (export '%dcmtk::is-little-endian "%DCMTK")
  (export '%dcmtk::get-private-creator "%DCMTK")
  (export '%dcmtk::dcmobj- "%DCMTK")
  (export '%dcmtk::append "%DCMTK")
  (export '%dcmtk::next-object "%DCMTK")
  (export '%dcmtk::end "%DCMTK")
  (export '%dcmtk::valid "%DCMTK")
  (export '%dcmtk::+exs-hevc-main10profile-level5-1+ "%DCMTK")
  (export '%dcmtk::~dcm-pixel-sequence "%DCMTK")
  (export '%dcmtk::dcm-item+new-dicom-element "%DCMTK")
  (export '%dcmtk::set-current-date-time "%DCMTK")
  (export '%dcmtk::+erm-dataset+ "%DCMTK")
  (export '%dcmtk::dcm-polymorph-obow "%DCMTK")
  (export '%dcmtk::get-input-stream "%DCMTK")
  (export '%dcmtk::create-uint32array "%DCMTK")
  (export '%dcmtk::+exs-hevc-main-profile-level5-1+ "%DCMTK")
  (export '%dcmtk::dcm-date-time+get-current-date-time "%DCMTK")
  (export '%dcmtk::set-records-origin-file "%DCMTK")
  (export '%dcmtk::put-uint32array "%DCMTK")
  (export '%dcmtk::validate-meta-info "%DCMTK")
  (export '%dcmtk::get-decompressed-color-model "%DCMTK")
  (export '%dcmtk::+ert-implant+ "%DCMTK")
  (export '%dcmtk::+erw-ready+ "%DCMTK")
  (export '%dcmtk::repeating-begin "%DCMTK")
  (export '%dcmtk::set-upper "%DCMTK")
  (export '%dcmtk::+ert-visit+ "%DCMTK")
  (export '%dcmtk::find "%DCMTK")
  (export '%dcmtk::has-valid-group "%DCMTK")
  (export '%dcmtk::of-condition "%DCMTK")
  (export '%dcmtk::~dcm-floating-point-double "%DCMTK")
  (export '%dcmtk::sint16 "%DCMTK")
  (export '%dcmtk::+eet-explicit-length+ "%DCMTK")
  (export '%dcmtk::get-of-string "%DCMTK")
  (export '%dcmtk::put-float64array "%DCMTK")
  (export '%dcmtk::~print-helper "%DCMTK")
  (export '%dcmtk::print-helper "%DCMTK")
  (export '%dcmtk::dcm-floating-point-single "%DCMTK")
  (export '%dcmtk::set-read-mode "%DCMTK")
  (export '%dcmtk::clear "%DCMTK")
  (export '%dcmtk::+ert-stereometric+ "%DCMTK")
  (export '%dcmtk::clone "%DCMTK")
  (export '%dcmtk::set-of-time "%DCMTK")
  (export '%dcmtk::~dcm-person-name "%DCMTK")
  (export '%dcmtk::e-encoding-type "%DCMTK")
  (export '%dcmtk::~dcm-unsigned-short "%DCMTK")
  (export '%dcmtk::get-uint8array "%DCMTK")
  (export '%dcmtk::tag-exists "%DCMTK")
  (export '%dcmtk::~dcm-unsigned64bit-very-long "%DCMTK")
  (export '%dcmtk::get-dataset "%DCMTK")
  (export '%dcmtk::put-sint32array "%DCMTK")
  (export '%dcmtk::operator< "%DCMTK")
  (export '%dcmtk::+exs-mpeg4stereo-high-profile-level4-2+ "%DCMTK")
  (export '%dcmtk::find-and-delete-sequence-item "%DCMTK")
  (export '%dcmtk::get-value-width "%DCMTK")
  (export '%dcmtk::set-group-range-restriction "%DCMTK")
  (export '%dcmtk::put-and-insert-uint8array "%DCMTK")
  (export '%dcmtk::get-parent "%DCMTK")
  (export '%dcmtk::+ert-key-object-doc+ "%DCMTK")
  (export '%dcmtk::+erw-in-work+ "%DCMTK")
  (export '%dcmtk::dcm-stack "%DCMTK")
  (export '%dcmtk::empty "%DCMTK")
  (export '%dcmtk::~dcm-unique-identifier "%DCMTK")
  (export '%dcmtk::elem "%DCMTK")
  (export '%dcmtk::dcm-unsigned-long-offset "%DCMTK")
  (export '%dcmtk::~dcm-byte-string "%DCMTK")
  (export '%dcmtk::find-and-get-sint16 "%DCMTK")
  (export '%dcmtk::uint64 "%DCMTK")
  (export '%dcmtk::+ert-stored-print+ "%DCMTK")
  (export '%dcmtk::~dcm-hash-dict-iterator "%DCMTK")
  (export '%dcmtk::compact "%DCMTK")
  (export '%dcmtk::~dcm-short-text "%DCMTK")
  (export '%dcmtk::+ert-registration+ "%DCMTK")
  (export '%dcmtk::put-float32array "%DCMTK")
  (export '%dcmtk::dcm-date-time+get-iso-formatted-date-time-from-string
          "%DCMTK")
  (export '%dcmtk::load-file "%DCMTK")
  (export '%dcmtk::dcm-date-time+get-of-date-time-from-string
          "%DCMTK")
  (export '%dcmtk::match-filename "%DCMTK")
  (export '%dcmtk::dcm-unlimited-text+check-string-value "%DCMTK")
  (export '%dcmtk::put-string "%DCMTK")
  (export '%dcmtk::find-and-get-string "%DCMTK")
  (export '%dcmtk::dcm-unsigned-long "%DCMTK")
  (export '%dcmtk::get-encapsulated-representation "%DCMTK")
  (export '%dcmtk::get-uint64 "%DCMTK")
  (export '%dcmtk::get-jpeg-process8bit "%DCMTK")
  (export '%dcmtk::~dcm-vr "%DCMTK")
  (export '%dcmtk::dcm-dict-entry-list-iterator "%DCMTK")
  (export '%dcmtk::set-of-date "%DCMTK")
  (export '%dcmtk::+esm-after-stack-top+ "%DCMTK")
  (export '%dcmtk::tag-exists-with-value "%DCMTK")
  (export '%dcmtk::new-factory "%DCMTK")
  (export '%dcmtk::+exs-little-endian-implicit+ "%DCMTK")
  (export '%dcmtk::+exs-mpeg4high-profile-level4-2-for3d-video+
          "%DCMTK")
  (export '%dcmtk::choose-representation "%DCMTK")
  (export '%dcmtk::dcm-byte-string "%DCMTK")
  (export '%dcmtk::dcm-item "%DCMTK")
  (export '%dcmtk::is-fixed-range-vm "%DCMTK")
  (export '%dcmtk::verify "%DCMTK")
  (export '%dcmtk::e-byte-order "%DCMTK")
  (export '%dcmtk::is-implicit-vr "%DCMTK")
  (export '%dcmtk::dcm-date-time+check "%DCMTK")
  (export '%dcmtk::get-min-value-length "%DCMTK")
  (export '%dcmtk::dcm-other-byte-other-word "%DCMTK")
  (export '%dcmtk::get-upper-group "%DCMTK")
  (export '%dcmtk::tell "%DCMTK")
  (export '%dcmtk::set-element "%DCMTK")
  (export '%dcmtk::dcm-representation-list-iterator "%DCMTK")
  (export '%dcmtk::check-value "%DCMTK")
  (export '%dcmtk::dcm-output-stream "%DCMTK")
  (export '%dcmtk::+exs-unknown+ "%DCMTK")
  (export '%dcmtk::insert-sequence-item "%DCMTK")
  (export '%dcmtk::put-and-insert-sint16 "%DCMTK")
  (export '%dcmtk::put-and-insert-uint16 "%DCMTK")
  (export '%dcmtk::dcm-short-text "%DCMTK")
  (export '%dcmtk::+exs-little-endian-explicit+ "%DCMTK")
  (export '%dcmtk::is-signable-tag "%DCMTK")
  (export '%dcmtk::find-and-get-uint8 "%DCMTK")
  (export '%dcmtk::of-date-time "%DCMTK")
  (export '%dcmtk::set-upper-group "%DCMTK")
  (export '%dcmtk::dcm-xfer "%DCMTK")
  (export '%dcmtk::create "%DCMTK")
  (export '%dcmtk::get-dir-file-name "%DCMTK")
  (export '%dcmtk::operator<= "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process20-22+ "%DCMTK")
  (export '%dcmtk::std+basic-ostream<char> "%DCMTK")
  (export '%dcmtk::dcm-byte-string+e-string-mode "%DCMTK")
  (export '%dcmtk::dcm-integer-string+check-string-value "%DCMTK")
  (export '%dcmtk::get-element "%DCMTK")
  (export '%dcmtk::~dcm-date "%DCMTK")
  (export '%dcmtk::del "%DCMTK")
  (export '%dcmtk::uint32 "%DCMTK")
  (export '%dcmtk::+exs-mpeg2main-profile-at-main-level+ "%DCMTK")
  (export '%dcmtk::top "%DCMTK")
  (export '%dcmtk::match-or-create-mrdr "%DCMTK")
  (export '%dcmtk::~dcm-meta-info "%DCMTK")
  (export '%dcmtk::get-float64 "%DCMTK")
  (export '%dcmtk::dcm-universal-resource-identifier-or-locator+check-string-value
          "%DCMTK")
  (export '%dcmtk::dcm-signed-short "%DCMTK")
  (export '%dcmtk::+ewm-create-new-meta+ "%DCMTK")
  (export '%dcmtk::e-transfer-syntax "%DCMTK")
  (export '%dcmtk::dcm-codec "%DCMTK")
  (export '%dcmtk::~dcm-other-byte-other-word "%DCMTK")
  (export '%dcmtk::find-and-delete-element "%DCMTK")
  (export '%dcmtk::get-upper-key "%DCMTK")
  (export '%dcmtk::dcm-time+get-dicom-time-from-of-time "%DCMTK")
  (export '%dcmtk::+ert-spectroscopy+ "%DCMTK")
  (export '%dcmtk::dcm-representation-parameter "%DCMTK")
  (export '%dcmtk::get-delimiter-chars "%DCMTK")
  (export '%dcmtk::+exs-deflated-little-endian-explicit+ "%DCMTK")
  (export '%dcmtk::put-original-representation "%DCMTK")
  (export '%dcmtk::+ewm-fileformat+ "%DCMTK")
  (export '%dcmtk::e-transfer-state "%DCMTK")
  (export '%dcmtk::pop "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process24-26+ "%DCMTK")
  (export '%dcmtk::put-float64 "%DCMTK")
  (export '%dcmtk::~dcm-list-node "%DCMTK")
  (export '%dcmtk::find-and-get-sint32 "%DCMTK")
  (export '%dcmtk::is-unknown-vr "%DCMTK")
  (export '%dcmtk::+ert-interpretation+ "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process21-23+ "%DCMTK")
  (export '%dcmtk::push-back "%DCMTK")
  (export '%dcmtk::dcm-unlimited-characters "%DCMTK")
  (export '%dcmtk::set "%DCMTK")
  (export '%dcmtk::insert-and-replace "%DCMTK")
  (export '%dcmtk::uint8 "%DCMTK")
  (export '%dcmtk::get-vm "%DCMTK")
  (export '%dcmtk::dcm-person-name+get-component-group "%DCMTK")
  (export '%dcmtk::+exs-rle-lossless+ "%DCMTK")
  (export '%dcmtk::+ert-topic+ "%DCMTK")
  (export '%dcmtk::get-base-tag "%DCMTK")
  (export '%dcmtk::size-t "%DCMTK")
  (export '%dcmtk::set-element-range-restriction "%DCMTK")
  (export '%dcmtk::find-and-get-uint64 "%DCMTK")
  (export '%dcmtk::get-group-range-restriction "%DCMTK")
  (export '%dcmtk::find-and-get-of-string-array "%DCMTK")
  (export '%dcmtk::dcm-date+get-current-date "%DCMTK")
  (export '%dcmtk::avail "%DCMTK")
  (export '%dcmtk::dcm-dict-entry-list-const-iterator "%DCMTK")
  (export '%dcmtk::dcm-person-name+get-formatted-name-from-string
          "%DCMTK")
  (export '%dcmtk::put-and-insert-string "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process29+ "%DCMTK")
  (export '%dcmtk::dcm-list "%DCMTK")
  (export '%dcmtk::~dcm-tag-key "%DCMTK")
  (export '%dcmtk::+ert-hanging-protocol+ "%DCMTK")
  (export '%dcmtk::get-sub "%DCMTK")
  (export '%dcmtk::e-file-write-mode "%DCMTK")
  (export '%dcmtk::+exs-jpip-referenced+ "%DCMTK")
  (export '%dcmtk::~dcm-hash-dict "%DCMTK")
  (export '%dcmtk::+esc-none+ "%DCMTK")
  (export '%dcmtk::+ert-plan+ "%DCMTK")
  (export '%dcmtk::find-and-get-float64array "%DCMTK")
  (export '%dcmtk::+erm-file-only+ "%DCMTK")
  (export '%dcmtk::set-g-tag "%DCMTK")
  (export '%dcmtk::is-leaf "%DCMTK")
  (export '%dcmtk::+ert-fiducial+ "%DCMTK")
  (export '%dcmtk::dcm-data-dictionary "%DCMTK")
  (export '%dcmtk::put-and-insert-float32array "%DCMTK")
  (export '%dcmtk::dcm-offset-list "%DCMTK")
  (export '%dcmtk::~dcm-floating-point-single "%DCMTK")
  (export '%dcmtk::+ert-waveform+ "%DCMTK")
  (export '%dcmtk::+ert-implant-assy+ "%DCMTK")
  (export '%dcmtk::get-meta-info "%DCMTK")
  (export '%dcmtk::ident "%DCMTK")
  (export '%dcmtk::~dcm-stack-node "%DCMTK")
  (export '%dcmtk::dcm-char-string "%DCMTK")
  (export '%dcmtk::of-string "%DCMTK")
  (export '%dcmtk::+egl-recalc-gl+ "%DCMTK")
  (export '%dcmtk::get-xfer-id "%DCMTK")
  (export '%dcmtk::+ert-series+ "%DCMTK")
  (export '%dcmtk::is-repeating "%DCMTK")
  (export '%dcmtk::delete-all-elements "%DCMTK")
  (export '%dcmtk::of-list<dcm-representation-entry*> "%DCMTK")
  (export '%dcmtk::+ewm-dataset+ "%DCMTK")
  (export '%dcmtk::get-of-date-time "%DCMTK")
  (export '%dcmtk::+exs-mpeg2main-profile-at-high-level+ "%DCMTK")
  (export '%dcmtk::+ebo-big-endian+ "%DCMTK")
  (export '%dcmtk::get-standard-version "%DCMTK")
  (export '%dcmtk::get-original-representation-key "%DCMTK")
  (export '%dcmtk::~dcm-other-float "%DCMTK")
  (export '%dcmtk::~dcm-unlimited-text "%DCMTK")
  (export '%dcmtk::dcm-item+new-dicom-element-with-vr "%DCMTK")
  (export '%dcmtk::dcm-element+determine-vm "%DCMTK")
  (export '%dcmtk::dcm-other-double "%DCMTK")
  (export '%dcmtk::convert-character-set "%DCMTK")
  (export '%dcmtk::update-original-xfer "%DCMTK")
  (export '%dcmtk::compute-group-length-and-padding "%DCMTK")
  (export '%dcmtk::dcm-date-time+get-dicom-date-time-from-of-date-time
          "%DCMTK")
  (export '%dcmtk::dcm-dict-range-restriction "%DCMTK")
  (export '%dcmtk::write "%DCMTK")
  (export '%dcmtk::next-in-container "%DCMTK")
  (export '%dcmtk::value-loaded "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process11-13+ "%DCMTK")
  (export '%dcmtk::+exs-jpeg-process14+ "%DCMTK")
  (export '%dcmtk::of-time "%DCMTK")
  (export '%dcmtk::get-length-field "%DCMTK")
  (export '%dcmtk::get-of-string-array "%DCMTK")
  (export '%dcmtk::of-bool "%DCMTK")
  (export '%dcmtk::dcm-input-stream "%DCMTK")
  (export '%dcmtk::dcm-input-stream-factory "%DCMTK")
  (export '%dcmtk::dcm-integer-string "%DCMTK")
  (export '%dcmtk::dcm-time+check-string-value "%DCMTK")
  (export '%dcmtk::+esm-from-here+ "%DCMTK")
  (export '%dcmtk::set-private-creator "%DCMTK")
  (export '%dcmtk::class-name "%DCMTK")
  (export '%dcmtk::put-uint32 "%DCMTK")
  (export '%dcmtk::dcm-element+scan-value "%DCMTK")
  (export '%dcmtk::update-cache "%DCMTK")
  (export '%dcmtk::get-vr-name "%DCMTK")
  (export '%dcmtk::get-root-item "%DCMTK")
  (export '%dcmtk::dcm-json-format "%DCMTK")
  (export '%dcmtk::set-of-date-time "%DCMTK")
  (export '%dcmtk::+ert-mrdr+ "%DCMTK"))

