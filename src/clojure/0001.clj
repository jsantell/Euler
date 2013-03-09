(def euler-1
  (reduce +
    (filter
      #(or (= (mod % 3) 0) (= (mod % 5) 0))
      (range 0 1000))))

(println euler-1)
