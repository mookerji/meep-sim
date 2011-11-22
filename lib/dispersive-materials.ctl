;;; Drude-Lorentz dispersion models for different metals
;;;
;;; Meta-source: 
;;;     http://www.mail-archive.com/meep-discuss@ab-initio.mit.edu/msg04267.html
;;; 
;;; Materials available:
;;;     Ag, Al, Au, Be, Cr, Cu, Ni, Pd, Pt, Ti, W, Silica
;;; 
;;; Author: Bhaskar Mookerji (mookerji@mit.edu)
;;; Date Started: 4 November 2011

(define myAg 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)   (gamma 0.038715) (sigma 4.4625e+41))
            (make polarizability (omega 0.65815) (gamma 3.1343)   (sigma 7.9247))
            (make polarizability (omega 3.6142)  (gamma 0.36456)  (sigma 0.50133))
            (make polarizability (omega 6.6017)  (gamma 0.052426) (sigma 0.013329))
            (make polarizability (omega 7.3259)  (gamma 0.7388)   (sigma 0.82655))
            (make polarizability (omega 16.365)  (gamma 1.9511)   (sigma 1.1133)))))
            
; Additional Information
; http://www.opticsinfobase.org/abstract.cfm?URI=ao-37-22-5271
; Normalization length=1e-06 in meter
; Material_used_is_Agfrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=6.6802

(define myAl 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)   (gamma 0.037908) (sigma 7.6347e+41))
            (make polarizability (omega 0.13066) (gamma 0.26858)  (sigma 1941))
            (make polarizability (omega 1.2453)  (gamma 0.25165)  (sigma 4.7065))
            (make polarizability (omega 1.4583)  (gamma 1.0897)   (sigma 11.396))
            (make polarizability (omega 2.8012)  (gamma 2.7278)   (sigma 0.55813)))))
            
; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Alfrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=8.7377

(define myAu 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)   (gamma 0.042747) (sigma 4.0314e+41))
            (make polarizability (omega 0.33472) (gamma 0.19438)  (sigma 11.363))
            (make polarizability (omega 0.66944) (gamma 0.27826)  (sigma 1.1836))
            (make polarizability (omega 2.3947)  (gamma 0.7017)   (sigma 0.65677))
            (make polarizability (omega 3.4714)  (gamma 2.0115)   (sigma 2.6455))
            (make polarizability (omega 10.743)  (gamma 1.7857)   (sigma 2.0148)))))
        
; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Aufrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=6.3493

(define myBe 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)    (gamma 0.028229) (sigma 1.8722e+41))
            (make polarizability (omega 0.080655) (gamma 1.3421)   (sigma 1062.1))
            (make polarizability (omega 0.83236)  (gamma 2.7383)   (sigma 45.038))
            (make polarizability (omega 2.5673)   (gamma 3.5924)   (sigma 17.923))
            (make polarizability (omega 3.7134)   (gamma 1.4534)   (sigma 2.1013)))))

; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Befrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=4.3269

(define myCr 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)    (gamma 0.037908) (sigma 1.263e+41))
            (make polarizability (omega 0.097593) (gamma 2.5608)   (sigma 1191.9))
            (make polarizability (omega 0.43796)  (gamma 1.0526)   (sigma 58.791))
            (make polarizability (omega 1.5889)   (gamma 2.1583)   (sigma 34.214))
            (make polarizability (omega 7.0775)   (gamma 1.0768)   (sigma 1.2382)))))
        
; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Crfrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=3.5538

(define myCu 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)   (gamma 0.024197) (sigma 4.3873e+41))
            (make polarizability (omega 0.23471) (gamma 0.30488)  (sigma 84.489))
            (make polarizability (omega 2.385)   (gamma 0.85172)  (sigma 1.395))
            (make polarizability (omega 4.2747)  (gamma 2.5915)   (sigma 3.0189))
            (make polarizability (omega 9.0173)  (gamma 3.4722)   (sigma 0.59868)))))
        
; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Cufrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=6.6236

(define myNi 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)   (gamma 0.038715) (sigma 1.5828e+41))
            (make polarizability (omega 0.14034) (gamma 3.6384)   (sigma 837.12))
            (make polarizability (omega 0.46941) (gamma 1.0759)   (sigma 101.01))
            (make polarizability (omega 1.2881)  (gamma 1.7567)   (sigma 10.534))
            (make polarizability (omega 4.9111)  (gamma 5.0748)   (sigma 4.9834)))))
        
; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Nifrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=3.9784

(define myPd 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)   (gamma 0.0064524) (sigma 2.0282e+41))
            (make polarizability (omega 0.271)   (gamma 2.3793)    (sigma 543.12))
            (make polarizability (omega 0.40408) (gamma 0.44764)   (sigma 45.545))
            (make polarizability (omega 1.3381)  (gamma 3.7271)    (sigma 21.901))
            (make polarizability (omega 4.6095)  (gamma 2.61)      (sigma 1.3104)))))
        
; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Pdfrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=4.5036

(define myPt 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)   (gamma 0.064524) (sigma 1.9923e+41))
            (make polarizability (omega 0.62911) (gamma 0.41699)  (sigma 28.872))
            (make polarizability (omega 1.0598)  (gamma 1.4824)   (sigma 35.102))
            (make polarizability (omega 2.5334)  (gamma 2.9584)   (sigma 5.099))
            (make polarizability (omega 7.4598)  (gamma 6.8694)   (sigma 3.8445)))))
        
; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Ptfrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=4.4635

(define myTi 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)   (gamma 0.066137) (sigma 5.1166e+40))
            (make polarizability (omega 0.62669) (gamma 1.8357)   (sigma 79.136))
            (make polarizability (omega 1.2461)  (gamma 2.0309)   (sigma 8.7496))
            (make polarizability (omega 2.0236)  (gamma 1.3413)   (sigma 1.5787))
            (make polarizability (omega 1.5671)  (gamma 1.4211)   (sigma 0.014077)))))
        
; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Tifrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=2.262

(define myW 
    (make dielectric (epsilon 1)
        (polarizations
            (make polarizability (omega 1e-20)   (gamma 0.05162) (sigma 2.3421e+41))
            (make polarizability (omega 0.80978) (gamma 0.42747) (sigma 9.3624))
            (make polarizability (omega 1.5462)  (gamma 1.0332)  (sigma 7.8945))
            (make polarizability (omega 2.8875)  (gamma 2.6874)  (sigma 9.6272))
            (make polarizability (omega 6.0475)  (gamma 4.7071)  (sigma 8.0514)))))
        
; Additional Information
; Normalization length=1e-06 in meter
; Material_used_is_Wfrom Rakic et al.,Applied Optics (1998)
; Plasma Angular Frequency (and plasma wave vector,kp) in normalized units=4.8395

(define mySilica 
    (make dielectric (epsilon 1)
        (polarizations 
            (make polarizability (omega 14.61896) (gamma 0) (sigma 0.69617))
            (make polarizability (omega  8.60279) (gamma 0) (sigma 0.40794))
            (make polarizability (omega  0.10105) (gamma 0) (sigma 0.89748)))))    