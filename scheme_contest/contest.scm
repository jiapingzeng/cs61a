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

(define (draw)
  (define (draw-circle r x-pos y-pos)
    (define (draw-circle-helper theta)
      (if
        (< theta 360)
        (begin 
          (pixelsize 100)
          (pixel
            (+ x-pos (floor (* r (cos theta))))
            (+ y-pos (floor (* r (sin theta))))
            "red"
          )
          (draw-circle-helper (+ theta 20))
        )
      )
    )
    (draw-circle-helper 0)
  )
  (pendown)
  (setheading 0)
  (forward 100)
  (setheading 90)
  (forward 100)
  (setheading 180)
  (forward 100)
  (setheading 270)
  (forward 100)
  (penup)
  (exitonclick)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)