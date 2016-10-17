(ns {{{:PROJECT_NAME:}}}
  (:gen-class))


(defn say-hi [name]
  (str "hi " name))


(defn -main [& args]
  ; here we take command line the arguments passed,
  ; get the first one, call the say-hi function
  ; and then print out the result.
  (-> args
      (first)
      (say-hi)
      (println)))