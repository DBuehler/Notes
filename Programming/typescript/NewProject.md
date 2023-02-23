# Typescript - New Project

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
$ # alternative - add typescript globally: npm install -g typescript
$ # alternative: yarn add typescript
$ # consider installing ts-node (globally) - it allows you to compile and run the compiled output with a single command
```

## Generate tsconfig.json

```sh
$ node node_modules/typescript/bin/tsc --init
$ node_modules/.bin/tsc --init
$ npx tsc init
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
$ node_modules/.bin/tsc -w
$ npx tsc -w
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

Use [ts-node](https://github.com/TypeStrong/ts-node) (Typescript execution and
REPL for node.js)

```sh
$ npm install -D ts-node
$ yarn add -D ts-node
```

## Installing Node

Installing from binary tarball (downloaded from nodejs.org)...

```sh
$ cd /usr/local
$ sudo tar --strip-components 1 -xvf ~/Downloads/node<version>.tar.xz | tee /tmp/tarxnode.log
$ sudo rm CHANGELOG.md LICENSE README.md
```