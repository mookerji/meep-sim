; Testing material dispersion with frequency sweep.
; 
; This is a plasmonics accuracy benchmark test for MEEP.
; 
; Author: Bhaskar Mookerji (mookerji@mit.edu)
; Date started: 23 November 2011
;
; See: 
; http://ab-initio.mit.edu/wiki/index.php/Meep_Tutorial/Material_dispersion

; Reset and load libraries
(reset-meep)
(load "../../lib/dispersive-materials.ctl")
(use-output-directory "../../out/data/dispersion-test")

(set! geometry-lattice (make lattice (size no-size no-size no-size)))
(set-param! resolution 20)

(set! default-material
      (make dielectric (epsilon 2.25)
	    (polarizations 
	     (make polarizability
	       (omega 1.1) (gamma 1e-5) (sigma 0.5))
	     (make polarizability
	       (omega 0.5) (gamma 0.1) (sigma 2e-5))
	     )))

(define-param fcen 1.0)
(define-param df 2.0)
(set! sources (list (make source
		      (src (make gaussian-src (frequency fcen) (fwidth df)))
		      (component Ez) (center 0 0 0))))

(define-param kmin 0.3)
(define-param kmax 2.2)
(define-param k-interp 99)
(define kpts (interpolate k-interp (list (vector3 kmin) (vector3 kmax))))

(define all-freqs (run-k-points 200 kpts)) ; a list of lists of frequencies

(map (lambda (kx fs)
       (map (lambda (f) 
	      (print "eps:, " (real-part f) ", " (imag-part f) 
		     ", " (sqr (/ kx f)) "\n"))
	    fs))
     (map vector3-x kpts) all-freqs)
