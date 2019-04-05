#!/usr/bin/env node

const pkg = require(process.cwd() + '/package.json');
const package = pkg.name;
const [method, parameter, argument] = process.argv.slice(2);

console.log(`
## NPM-as-a-service on the Now platform

The functionality in this module is also available via a REST API where any methods 
may be called by passing parameters to the service's url.  The parameter "method" is
used to indicate which method to call, and additional parameters should match the
signature of the method, for example:
\`\`\`bash
curl "https://${package}.npm.now.sh/server.js?method=${method}&${parameter}=${argument}"
\`\`\`
returns a JSON object with the method's return value

In Javascript you may use your fevourite package for fetching instead:
\`\`\`js
const fetch = require('node-fetch')
const url = 'https://${package}.npm.now.sh/server.js?method=${method}&${parameter}=${argument}'
fetch(url).then(res => res.json())
    .then(o => {
        console.log(o)  // will show the result
    })
\`\`\`
`);