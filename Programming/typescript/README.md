# Typescript

(assuming node is installed)

```sh
$ mkdir project
$ cd project
$ npm init --yes
```

Original instructions said to create `tsconfig.json` next, but installing
typescript next works well...

```sh
$ npm install -D typescript
$ # alternative: npm install -g typescript
$ # alternative: yarn add typescript
```

## Generate tsconfig.json

```sh
$ node node_modules/typescript/bin/tsc --init
```

Suggestions for settings to use:

```json
{
  "compilerOptions": {
    "target": "es6", // was es2018
    "outDir": "./dist",
    "rootDir": "./src",
    "module": "commonjs"
  }
}
```

```json
{
  "compilerOptions": {
    "module": "commonjs",
    "esModuleInterop": true,
    "target": "es6",
    "moduleResolution": "node",
    "sourceMap": true,
    "outDir": "dist"
  },
  "lib": ["es2015"]
}
```

## Compile and run

Run tsc continuously, re-compiling whenever changes are saved...

```sh
$ node node_modules/typescript/bin/tsc -w
```

Run the output...

```sh
$ node disk/index.js
```

## Other additions

Add eslint linting...

```sh
$ npm install -D eslint
$ npx eslint --init
```

## Installing Node

Installing from binary tarball (downloaded from nodejs.org)...

```sh
$ cd /usr/local
$ sudo tar --script-components 1 -xvf ~/Downloads/node<version>.tar.xz | tee /tmp/tarxnode.log
$ sudo rm CHANGELOG.md LICENSE README.md
```
