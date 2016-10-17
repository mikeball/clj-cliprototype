(ns {{{:PROJECT_NAME:}}}-tests
  (:require [clojure.test :refer :all]
            [{{{:PROJECT_NAME:}}} :as main]))


(deftest greeting-is-friendly
  (are ; here we declare 2 test parameters, a name to be passed
       ; to the say-hi function, and the expected return message
       [name expected-message]

       ; this is the test function for each set of test parameters
       ; in this case the expeted message should equal the return from say-hi
       (= expected-message
          (main/say-hi name))

       ; here we supply the parameters to test
       "bob"  "hi bob"
       "bill" "hi bill"))

