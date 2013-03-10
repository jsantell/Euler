(defn power [x y]
  (reduce * (repeat y x)))

(defn char-int [c]
  (- (int c) 48))

(defn euler-16 [x]
  (reduce +
    (map char-int (seq (str (power 2 x))))))

(println (euler-16 1000))
