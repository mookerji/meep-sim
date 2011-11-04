; Mie scattering off of a Ag sphere

(reset-meep)

(define-param r 1.0)
(define-param ct-freq 0.15)
(define-param d-pml 2)
(define-param sx 20)

(define ct-src
    (make source
        (src (make continuous-src (frequency ct-freq)))
        (component Ez)
        (center -7 0)))
        
(define ag-sphere 
    (make sphere (center 0 0) (radius r) (material metal)))

(define sim-pml 
    (make pml (thickness d-pml)))
    
(define sim-lattice 
    (make lattice (size sx sx no-size)))
        
(set! sources (list ct-src))
(set! geometry (list ag-sphere))
(set! pml-layers (list sim-pml))
(set! geometry-lattice sim-lattice)

(set-param! resolution 10)
