------

Создай новый deployment с названием nginx-deploy и одним контейнером по имени nginx, образом nginx:1.16 и 4 репликами.
Этот deployment должен использовать стратегию RollingUpdate с maxSurge=1 и maxUnavailable=2.

Далее обнови deployment до версии 1.17.

Наконец, когда все pods обновились, откати обновление и вернись на предыдущую версию.


Deployment created correctly?

Was the deployment created with nginx:1.16?

Was it upgraded to 1.17?

Deployment rolled back to 1.16?

-----------------

Создай deployment redis со следующими параметрами:

Название deployment должно быть redis, использует образ redis:alpine. Также должна быть именно 1 реплика.

Контейнер должен запрашивать .2 CPU. Также он должен иметь метку app=redis.

В нем должно быть именно 2 тома.


a. Том empty directory с названием data по пути /redis-master-data.

b. Том configmap с названием redis-config по пути /redis-master.

c. Контейнер должен быть выставлен на порт 6379.


ConfigMap уже был создан.

---------------


Мы развернули новый pod с названием secure-pod и службу с названием secure-service. Входящие и исходящие соединения с этим pod не работают.
Найди причину, почему это происходит и устрани.

Убедись, что входящее соединение с pod webapp-rockets установлено успешно.


Важно: Не удаляй уже развернутые объекты.

Important: Don't Alter Existing Objects!

Connectivity working?


---------------------


Создай Persistent Volume с названием log-volume. Он должен использовать storage class с названием manual. Должен быть использован режим доступа RWX и размер 1Gi. Этот том должен использовать hostPath /opt/volume/nginx.

Далее, создай PVC с названием log-claim, которая запрашивает минимум 200Mi для хранения. Эта PVC должна связаться с log-volume.

Смонтируй это в pod по имени logger в размещение /var/www/nginx. Этот pod должен использовать образ nginx:alpine.

---------------------
Создай pod с названием time-check в пространстве dvl1987. Этот pod должен запускать контейнер с названием time-check, который будет использовать образ busybox.

Создай ConfigMap с названием time-config и данными TIME_FREQ=10 в том же namespace.
Контейнер time-check должен выполнять команду: while true; do date; sleep $TIME_FREQ;done и записывать результат в размещение /opt/time/time-check.log.
Путь /opt/time в pod следует смонтировать в том, который будет существовать в течение всего срока службы этого pod.

Pod time-check configured correctly?

