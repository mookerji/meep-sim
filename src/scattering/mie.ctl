; Mie scattering off of a Ag sphere.
; 
; This is a plasmonics accuracy benchmark test for MEEP.
; 
; Author: Bhaskar Mookerji (mookerji@mit.edu)
; Date started: 4 November 2011

; Reset and load libraries
(reset-meep)
(load "../../lib/dispersive-materials.ctl")
(use-output-directory "../../out/data")

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
(set-param! resolution 10)

; Output parameters

(run-until 10
            (at-beginning output-epsilon)
            (to-appended "ez" (at-every 0.6 output-efield-z)))
           

;(exit 0)