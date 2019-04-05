[![npm version](https://badge.fury.io/js/npm-now.svg)](https://badge.fury.io/js/npm-now)

# npm-now

A module to turn NPM packages into Now services

## Install

First install this package:
```
npm install npm-now
```
then copy the `now.json` supplied with this package into your project's
root directory:
```
cp node_modules/npm-now/now.json .
```
### package.json
For convenience you can modify your `package.json` to include the following:
```json
  "scripts": {
    "now": "now --target staging"
```
and if you have a "postversion" script, you can add `&& npm run now` to automatically
deploy your service to Now, for example:
```bash
npm version patch
```
***NOTE: deployments to the Now `NPM` team will require membership.  Please request
it by posting an issue on Github***

### README

You'll want to let your users know that your module is available on Now.  You can run
the command below to add some sample language to your `README.md`.  The parameters you
pass should be an example method name and the arguments it requires.  For example, for 
the  `country-list-js` module, the method `findByIso2` takes a single parameter `code` 
to which we supply the argument `DK`:
```
$ node_modules/npm-now/mk findByIso2 code DK >> README.md
```



