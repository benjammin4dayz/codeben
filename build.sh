#!/bin/bash
rm -rf dist/ flems/dist/

cd flems &&
    npm ci &&
    npm run build &&
    mv dist/ ../

cd ../ &&
    cp index.html dist/ &&
    cp styles.css dist/ &&
    rm dist/*.map
