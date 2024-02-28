Welcome to you all :)

Here are some instructions to run our local testing environment:

if you would like to check for linting errors before pushing to you branch follow these steps.

1- You should first install docker on your machine.

2- If you want to only expose the errors make sure this line is commented in 'Dockerfile'
    `#CMD [ "FIXIT" ]`
    
3- Run this command while you are the 'testing_env' directory
    `docker compose up`
    it will show all the linting errors for the cpp and hpp files.

4- Run this command to delete what was created in the past command
    `docker compose down`

5- If you want to fix the errors, make sure to uncomment this line in 'Dockerfile'
    `CMD [ "FIXIT" ]`

6- Then run step "4" again.
