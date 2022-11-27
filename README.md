# Kraken testing faker in web app

## Requirement

*  [Ghost installed and running](https://ghost.org/docs/install/local/)
*  [Chai assertion](https://www.chaijs.com/guide/installation/)
*  [Kraken](https://thesoftwaredesignlab.github.io/Kraken/)
*  [Cypress](https://www.cypress.io/)
*  [Faker](https://fakerjs.dev/api/)
  

## Steps to run the test

1. Go to the Ghost-Kraken folder.
2. For some reason, kraken is running the first feature it finds. What was done was to leave only the feature we were going to test in the project.
3. Execute tests
    ```sh        
    npm install kraken-node        // in case of error
    npm install -g appium          // in case of error
    npm install chai               // in case of error
    kraken-node run
    cypress open                   // Run Web Cypress
    cypress run --headless         // Run Test Cypress
    ```
4. Watch e2e test running.

## Explanation of code

1. Inside the features folder are the createAccount, login and forgot features in Gherkin language.

2. Inside the web/step-definitions folder is the index.js file. This file serves as a bridge between our test specification in the .feature and driver files.

3. For some reason, kraken is running the first feature it finds. What was done was to leave only the feature we were going to test in the project.

5. In reports are some results of tests.

6. in Evidence folder are the evidences screenshots about scenarios execution.

## Evidence

### Ghost running
![ghost](evidence/ghost.PNG) 

### Create Account
![createAccount1](evidence/createAccount_scenario1.PNG) 
![createAccount2](evidence/createAccount_scenario2.PNG) 
![createAccount3](evidence/createAccount_scenario3.PNG) 
![createAccount4](evidence/createAccount_scenario4.PNG) 
![createAccount5](evidence/createAccount_scenario5.PNG) 

### Forgot
![Screen Shot 2022-11-26 at 1 03 21 AM](https://user-images.githubusercontent.com/83414986/204076466-7eef5129-102e-4171-a3c9-71e6a43838f9.png)
![Screen Shot 2022-11-26 at 1 06 51 AM](https://user-images.githubusercontent.com/83414986/204076448-75d91e46-f9ab-44fd-bcfb-c2263c11a3eb.png)
![forgot3](evidence/forgot_scenario4.PNG) 
![forgot4](evidence/forgot_scenario5.PNG) 

### Login
![Screen Shot 2022-11-26 at 12 37 22 AM](https://user-images.githubusercontent.com/83414986/204076503-1a5a89e5-4fa7-489e-98c8-dcd5ec45acef.png)
![Screen Shot 2022-11-26 at 12 09 05 AM](https://user-images.githubusercontent.com/83414986/204076521-e5f98d10-0034-46c9-a6a6-1fa2f44c4a59.png)
![Screen Shot 2022-11-26 at 12 19 57 AM](https://user-images.githubusercontent.com/83414986/204076589-41382276-82d6-4352-a124-8fc117009161.png)
![Screen Shot 2022-11-26 at 12 25 20 AM](https://user-images.githubusercontent.com/83414986/204076524-c907ed2b-6909-4328-a18d-f93f23392b51.png)
![Screen Shot 2022-11-26 at 12 35 30 AM](https://user-images.githubusercontent.com/83414986/204076534-173b505f-20d9-4b17-86db-ee43f666b58c.png)


#### By students Jorge, Rodolfo, Luis, Steven
