#!/bin/bash

git pull --ff-only 

cd client

npm install

npm run build

cp -rf public/ ../server/

cd ..

cd server

npm install

screen bash -c "npm start"