# DialogFlowWithR

Sign up for DialogFlow
https://console.dialogflow.com/api-client/#/login

upload the file RScripts.json under the intents category make sure webhook is enabled in
the fufillment category after the intent is uploaded


![capture](https://user-images.githubusercontent.com/7577489/38846990-1b11dbae-41b4-11e8-8e72-5669b7466c77.png)



Fufillment webhook enabled make sure to save.

![capture](https://user-images.githubusercontent.com/7577489/38847767-309de004-41b8-11e8-86f5-ab86952274f9.png)



upload the file average.json under the entity category 


![caputre](https://user-images.githubusercontent.com/7577489/38846989-1af88eb0-41b4-11e8-9f67-4a01fbfaae73.png)

you can upload for each category by click the three vertical dots next to the create buttons

Install Node JS

https://nodejs.org/en/


mkdir project1

//move index.js, R_mean.r inside the folder

cd project1

npm init

//Click enter on everything

npm install -g @google-cloud/functions-emulator
npm install -g localtunnel


npm install --save actions-on-google r-script firebase-functions firebase-admin


//Deploy the function this will create a localhost port
// in my example the function is name Rtest

functions deploy Rtest --trigger-http

//The resource will be something like  Resource   │ http://localhost:8010/helloWorld/us-central1/Rtest 

//We want to make this public in order for dialogflow to call it 
//We use localtunel to make our local host public

lt --port 8010

//it will output something like your url is: https://shy-dodo-32.localtunnel.me
//copy the end of our deployed resource and combine with the url


https://shy-dodo-32.localtunnel.me/helloWorld/us-central1/Rtest

This is you fufillment that you should input into your dialogflow console in order to call the RScript.


![capture](https://user-images.githubusercontent.com/7577489/38846988-1add46c8-41b4-11e8-808b-6927180c3c68.png)
