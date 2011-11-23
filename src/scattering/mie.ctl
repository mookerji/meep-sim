; Mie scattering off of a Ag sphere.
; 
; This is a plasmonics accuracy benchmark test for MEEP.
; 
; Author: Bhaskar Mookerji (mookerji@mit.edu)
; Date started: 4 November 2011

; Reset and load libraries
(reset-meep)
(load "../../lib/dispersive-materials.ctl")
(use-output-directory "../../out/data/mie")

; Define external parameters
(define-param r 1.0)
(define-param ct-freq 0.15)
(define-param d-pml 2)
(define-param sx 20)

; Define some physical and simultation entities
(define ct-src
    (make source
        (src (make continuous-src (frequency ct-freq)))
        (component Ez)
        (center -7 0)))
                
(define ag-sphere   (make sphere (center 0 0) (radius r) (material metal)))
(define sim-pml     (make pml (thickness d-pml)))
(define sim-lattice (make lattice (size sx sx no-size)))
        
; Simulation parameters         
(set! default-material air)        
(set! sources (list ct-src))
(set! geometry (list ag-sphere))
(set! pml-layers (list sim-pml))
(set! geometry-lattice sim-lattice)
(set-param! resolution 20)

; Flux parameters through sphere
(define-param nfreq 100)
;(define trans 
;      (add-flux fcen df nfreq
;                (if no-bend?
;                    (make flux-region
;                     (center (- (/ sx 2) 1.5) wvg-ycen) (size 0 (* w 2)))
;                    (make flux-region
;                     (center wvg-xcen (- (/ sy 2) 1.5)) (size (* w 2) 0)))))
;                     
;(define refl 
;      (add-flux fcen df nfreq
;                 (make flux-region 
;                   (center (+ (* -0.5 sx) 1.5) wvg-ycen) (size 0 (* w 2)))))

; Output parameters

(run-until 70
            (at-beginning output-epsilon)
            (at-every 0.1 (output-png Ez "-Zc bluered")))        

;(exit 0)