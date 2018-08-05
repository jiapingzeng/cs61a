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

(define colorful (cons-stream "red" (cons-stream "deep pink" (cons-stream "blue"
  (cons-stream "aqua" (cons-stream "green1" (cons-stream "yellow" colorful)))))))

(define morecolor (cons-stream "red" (cons-stream "orange" (cons-stream "green yellow"
  (cons-stream "aqua"(cons-stream "RoyalBlue1" (cons-stream "medium purple3" colorful)))))))

(define (Background iterations size colored angle)
  (setposition 0 0)
  (pendown)
  (color (car colored))
  (begin_fill)
  (forward size)
  (left angle)
  (backward 517.638)
  (end_fill)
  (if (or (< size 0) (<= iterations 0)) (circle 0)
  (Background (- iterations 1) size (cdr-stream colored) angle)))

(define (draw-arc heading x-pos y-pos radius angle)
  (setheading heading)
  (penup)
  (setposition x-pos y-pos)
  (pendown)
  (circle radius angle)
  (penup)
)

(define (draw)
  (speed 0)
  (hideturtle)
  (penup)
  (setposition -180 -160)
  ;(Background 5 1000 colorful 60)
  ;(Background 5 1000 morecolor -60)

  (color "#0e4d92")
  (pendown)
  (setposition -180 -300)
  (draw-arc 0 220 -300 100 90)
  (setposition 220 -300)
  (penup)

  (setposition -150 70)

  (color "#45852d")
  (pendown)
  (draw-arc 225 -150 70 200 70)
  (draw-arc 225 -130 170 160 90)
  (draw-arc 0 20 130 80 180)
  (draw-arc 0 150 130 80 180)
  (draw-arc 90 110 -20 80 180)
  (setposition 150 -90)
  (draw-arc 0 200 -90 80 90)
  (draw-arc 90 75 -220 120 90)
  (draw-arc 135 -190 -155 265 65)
  
  (color "red")
  ; left eye
  (draw-arc 45 25 60 25 60)
  (draw-arc 290 30 85 200 15)
  (draw-arc 95 -120 70 150 41)
  (draw-arc 115 -115 70 200 42)
  (draw-arc 10 -1 53 30 200)
  (draw-arc 0 -14 67 7 360)
  (draw-arc 0 -31 65 5 360)
  (draw-arc 0 -31 55 2 360)
  ; right eye
  (draw-arc 305 170 70 120 70)
  (draw-arc 125 30 70 120 70)
  (draw-arc 40 125 50 25 270)
  (draw-arc 0 123 70 7 360)
  (draw-arc 0 105 70 4 360)
  (draw-arc 0 105 60 2 360)
  ;; lips
  (draw-arc 100 -30 -100 500 27)
  (draw-arc 90 200 -105 9 180)
  (draw-arc 102 -40 -120 450 32)
  (draw-arc 90 190 -125 9 190)
  (draw-arc 102 -40 -138 450 30)
  (draw-arc 280 -30 -100 150 25)
  (draw-arc 280 -35 -120 150 15)
  (draw-arc 280 -37 -138 150 20)
  (draw-arc 270 -82 -100 20 165)
  (exitonclick)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)