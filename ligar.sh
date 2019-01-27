#!/bin/bash
#docker container attach 4f08ba4be37c

ps -ef && read userInput 
kill  $userInput;python article.py&
#ps -ef | grep -i article.py | awk {'print $2'} | xargs kill -9
#ps -aux | grep -i article.py | awk {'print $2'} | xargs kill -9
#exit



