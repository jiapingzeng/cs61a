;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Your title here>
;;;
;;; Description:
;;;   <It's your masterpiece.
;;;    Use these three lines to describe
;;;    its inner meaning.>

(define x-center (floor (/ (screen_width) 2)))
(define y-center (floor (/ (screen_height) 2)))

(define (draw-arc start end r x-pos y-pos)
  (define (draw-arc-helper theta)
    (if
      (< theta end)
      (begin
        (pixel
          (+ x-pos (floor (* r (cos (radians theta)))))
          (+ y-pos (floor (* r (sin (radians theta)))))
          "red"
        )
        (draw-arc-helper (+ theta 5))
      )
    )
  )
  (draw-arc-helper start)
)

(define (draw)
  (print (floor (* 200 (cos (radians 45)))))
  (print (floor (* 200 (sin (radians 45)))))
  (print (+ x-center (floor (* 200 (cos (radians 45))))))
  (print (+ y-center (floor (* 200 (sin (radians 45))))))
  (pixel x-center y-center "red")
  (pixel 
    (+ x-center (floor (* 200 (cos (radians 45)))))
    (+ y-center (floor (* 200 (sin (radians 45)))))
    "red"
  )
  (draw-arc 180 360 200 x-center y-center)
  (exitonclick)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)