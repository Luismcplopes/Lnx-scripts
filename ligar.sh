#!/bin/bash
docker container attach 4f08ba4be37c
#end

teste
pidof datahub.prediction.model.article.py
ps -ef | grep -i datahub.prediction.model.article.py | awk {'print $2'} | xargs kill -9
ps -aux | grep -i datahub.prediction.model.article.py | awk {'print $2'} | xargs kill -9


ps -ef && read userInput 
kill  $userInput;python datahub.prediction.model.article.py&
