(defn euler-6 [x]
  (-
    (#(* % %) (reduce + (range 1 (+ x 1))))
    (reduce + (map #(* % %) (range 1 (+ x 1))))))

(println (euler-6 100))
