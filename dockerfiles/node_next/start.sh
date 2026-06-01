#!/bin/bash
cd /home/eliel/frontend
npm install
npm run build   
npx serve -s dist -l 5173