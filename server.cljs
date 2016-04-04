(def express (nodejs/require "express"))
(def serve-static (nodejs/require "serve-static"))

(defn -main []
  (let [app (express)]
    (.use app (serve-static "/vagrant/cache/apt-mirror/mirror/archive.ubuntu.com/"))
    (.listen app 3000 (fn []
                        (println "Server started on port 3000")))))
