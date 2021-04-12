(uiop:define-package :%dcmtk (:use))
(uiop:define-package :cl-dcmtk-binding~pristine (:use :cl))
(common-lisp:in-package :cl-dcmtk-binding~pristine)

(defparameter %dcmtk::+tag-error-tag-name+ "Unknown Tag & Data")

(defparameter %dcmtk::+variable-vm+ -1)

(define-symbol-macro
  %dcmtk::*age-string*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmAgeString")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*application-entity*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmApplicationEntity")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*attribute-tag*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmAttributeTag")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*byte-string*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmByteString")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*char-string*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmCharString")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*code-string*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmCodeString")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*codec*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmCodec")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*codec-list*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmCodecList")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*consumer*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmConsumer")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*data-dictionary*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmDataDictionary")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*dataset*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmDataset")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*date*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmDate")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*date-time*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmDateTime")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*decimal-string*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmDecimalString")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*dicom-dir*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmDicomDir")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*dict-entry*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmDictEntry")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*dict-entry-list*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmDictEntryList")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*directory-record*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmDirectoryRecord")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*element*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmElement")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*file-cache*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmFileCache")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*file-format*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmFileFormat")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*floating-point-double*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmFloatingPointDouble")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*floating-point-single*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmFloatingPointSingle")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*hash-dict*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmHashDict")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*hash-dict-iterator*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmHashDictIterator")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*input-filter*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmInputFilter")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*input-stream*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmInputStream")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*input-stream-factory*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmInputStreamFactory")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*integer-string*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmIntegerString")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*item*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmItem")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*json-format*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmJsonFormat")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*list*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmList")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*list-node*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmListNode")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*long-string*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmLongString")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*long-text*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmLongText")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*meta-info*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmMetaInfo")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*object*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmObject")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*other-byte-other-word*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmOtherByteOtherWord")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*other-double*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmOtherDouble")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*other-float*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmOtherFloat")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*other-long*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmOtherLong")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*output-filter*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmOutputFilter")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*output-stream*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmOutputStream")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*overlay-data*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmOverlayData")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*person-name*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmPersonName")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*pixel-data*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmPixelData")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*pixel-item*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmPixelItem")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*pixel-sequence*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmPixelSequence")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*polymorph-obow*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmPolymorphOBOW")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*private-tag-cache*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmPrivateTagCache")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*private-tag-cache-entry*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmPrivateTagCacheEntry")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*producer*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmProducer")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*representation-entry*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmRepresentationEntry")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*representation-parameter*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmRepresentationParameter")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*sequence-of-items*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmSequenceOfItems")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*short-string*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmShortString")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*short-text*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmShortText")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*signed-long*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmSignedLong")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*signed-short*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmSignedShort")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*specific-character-set*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmSpecificCharacterSet")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*stack*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmStack")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*stack-node*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmStackNode")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*tag*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmTag")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*tag-key*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmTagKey")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*time*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmTime")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*unique-identifier*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmUniqueIdentifier")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*universal-resource-identifier-or-locator*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer
           "DcmUniversalResourceIdentifierOrLocator")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*unlimited-characters*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmUnlimitedCharacters")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*unlimited-text*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmUnlimitedText")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*unsigned-long*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmUnsignedLong")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*unsigned-long-offset*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmUnsignedLongOffset")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*unsigned-short*
  (let ((%dcmtk::ptr
         (cffi:foreign-symbol-pointer "DcmUnsignedShort")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*vr*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmVR")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*write-cache*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmWriteCache")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(define-symbol-macro
  %dcmtk::*xfer*
  (let ((%dcmtk::ptr (cffi:foreign-symbol-pointer "DcmXfer")))
    (when %dcmtk::ptr (cffi:mem-ref %dcmtk::ptr '%dcmtk::class))))

(cffi:defcenum (%dcmtk::dict-range-restriction :unsigned-int)
               "/usr/include/dcmtk/dcmdata/dcdicent.h:42:6"
               (:unspecified 0)
               (:odd 1)
               (:even 2))

(cffi:defcenum (%dcmtk::evr :unsigned-int)
               "/usr/include/dcmtk/dcmdata/dcvr.h:102:6"
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
               (:ow 16)
               (:pn 17)
               (:sh 18)
               (:sl 19)
               (:sq 20)
               (:ss 21)
               (:st 22)
               (:tm 23)
               (:uc 24)
               (:ui 25)
               (:ul 26)
               (:ur 27)
               (:us 28)
               (:ut 29)
               (:ox 30)
               (:xs 31)
               (:lt 32)
               (:na 33)
               (:up 34)
               (:item 35)
               (:metainfo 36)
               (:dataset 37)
               (:file-format 38)
               (:dicom-dir 39)
               (:dir-record 40)
               (:pixel-sq 41)
               (:pixel-item 42)
               (:unknown 43)
               (:un 44)
               (:pixel-data 45)
               (:overlay-data 46)
               (:unknown2b 47))

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%dcmtk::*date* "%DCMTK")
  (export '%dcmtk::*vr* "%DCMTK")
  (export '%dcmtk::*tag* "%DCMTK")
  (export '%dcmtk::*short-string* "%DCMTK")
  (export '%dcmtk::*element* "%DCMTK")
  (export '%dcmtk::*xfer* "%DCMTK")
  (export '%dcmtk::*byte-string* "%DCMTK")
  (export '%dcmtk::*age-string* "%DCMTK")
  (export '%dcmtk::*codec* "%DCMTK")
  (export '%dcmtk::*meta-info* "%DCMTK")
  (export '%dcmtk::*dataset* "%DCMTK")
  (export '%dcmtk::+tag-error-tag-name+ "%DCMTK")
  (export '%dcmtk::*dict-entry-list* "%DCMTK")
  (export '%dcmtk::*private-tag-cache* "%DCMTK")
  (export '%dcmtk::*attribute-tag* "%DCMTK")
  (export '%dcmtk::*person-name* "%DCMTK")
  (export '%dcmtk::*other-double* "%DCMTK")
  (export '%dcmtk::*input-stream* "%DCMTK")
  (export '%dcmtk::*unique-identifier* "%DCMTK")
  (export '%dcmtk::*char-string* "%DCMTK")
  (export '%dcmtk::evr "%DCMTK")
  (export '%dcmtk::*file-format* "%DCMTK")
  (export '%dcmtk::*floating-point-double* "%DCMTK")
  (export '%dcmtk::*signed-short* "%DCMTK")
  (export '%dcmtk::*consumer* "%DCMTK")
  (export '%dcmtk::*list-node* "%DCMTK")
  (export '%dcmtk::*application-entity* "%DCMTK")
  (export '%dcmtk::*json-format* "%DCMTK")
  (export '%dcmtk::*producer* "%DCMTK")
  (export '%dcmtk::*unsigned-long* "%DCMTK")
  (export '%dcmtk::*short-text* "%DCMTK")
  (export '%dcmtk::*pixel-sequence* "%DCMTK")
  (export '%dcmtk::*hash-dict-iterator* "%DCMTK")
  (export '%dcmtk::*polymorph-obow* "%DCMTK")
  (export '%dcmtk::*list* "%DCMTK")
  (export '%dcmtk::*representation-parameter* "%DCMTK")
  (export '%dcmtk::*item* "%DCMTK")
  (export '%dcmtk::*stack* "%DCMTK")
  (export '%dcmtk::+variable-vm+ "%DCMTK")
  (export '%dcmtk::*input-filter* "%DCMTK")
  (export '%dcmtk::*representation-entry* "%DCMTK")
  (export '%dcmtk::*long-string* "%DCMTK")
  (export '%dcmtk::*directory-record* "%DCMTK")
  (export '%dcmtk::*sequence-of-items* "%DCMTK")
  (export '%dcmtk::*integer-string* "%DCMTK")
  (export '%dcmtk::*code-string* "%DCMTK")
  (export '%dcmtk::*pixel-data* "%DCMTK")
  (export '%dcmtk::*tag-key* "%DCMTK")
  (export '%dcmtk::*date-time* "%DCMTK")
  (export '%dcmtk::*time* "%DCMTK")
  (export '%dcmtk::*hash-dict* "%DCMTK")
  (export '%dcmtk::*other-byte-other-word* "%DCMTK")
  (export '%dcmtk::dict-range-restriction "%DCMTK")
  (export '%dcmtk::*dicom-dir* "%DCMTK")
  (export '%dcmtk::*overlay-data* "%DCMTK")
  (export '%dcmtk::*unlimited-characters* "%DCMTK")
  (export '%dcmtk::*other-float* "%DCMTK")
  (export '%dcmtk::*output-filter* "%DCMTK")
  (export '%dcmtk::*write-cache* "%DCMTK")
  (export '%dcmtk::*data-dictionary* "%DCMTK")
  (export '%dcmtk::*input-stream-factory* "%DCMTK")
  (export '%dcmtk::*stack-node* "%DCMTK")
  (export '%dcmtk::*signed-long* "%DCMTK")
  (export '%dcmtk::*output-stream* "%DCMTK")
  (export '%dcmtk::*private-tag-cache-entry* "%DCMTK")
  (export '%dcmtk::*unsigned-short* "%DCMTK")
  (export '%dcmtk::*pixel-item* "%DCMTK")
  (export '%dcmtk::*universal-resource-identifier-or-locator*
          "%DCMTK")
  (export '%dcmtk::*object* "%DCMTK")
  (export '%dcmtk::*floating-point-single* "%DCMTK")
  (export '%dcmtk::*unlimited-text* "%DCMTK")
  (export '%dcmtk::*unsigned-long-offset* "%DCMTK")
  (export '%dcmtk::*other-long* "%DCMTK")
  (export '%dcmtk::*file-cache* "%DCMTK")
  (export '%dcmtk::*decimal-string* "%DCMTK")
  (export '%dcmtk::*long-text* "%DCMTK")
  (export '%dcmtk::*dict-entry* "%DCMTK")
  (export '%dcmtk::*codec-list* "%DCMTK")
  (export '%dcmtk::*specific-character-set* "%DCMTK"))

