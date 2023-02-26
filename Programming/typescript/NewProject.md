# Typescript - New Project

Finding lots of project setup resources recently (because I started looking)

- [khalilstemmler.com](https://khalilstemmler.com/blogs/typescript/node-starter-project/) - Given here (mostly)
- [abrahamberg.com](https://www.abrahamberg.com/blog/how-to-setup-typescript-project-dev-environment-like-a-pro/) -
  Adds vercel/ncc for packaging distributable to a single output file and jest for testing
- [digitalocean.com](https://www.digitalocean.com/community/tutorials/typescript-new-project) - Suggests using
  [Google Typescript Style](https://github.com/google/ts-style) package for styling/linting/autocorrection

```sh
$ mkdir my-proj
$ cd my-proj
$ npm init -y
$ npm install typescript --save-dev
$ npm install @types/node --save-dev
$ npx tsc --init --rootDir src --outDir dist --esModuleInterop --resolveJsonModule --lib es6 --module commonjs --allowJs true --noImplicitAny true
$ mkdir src
$ mkdir dist
$ npm install --save-dev ts-node nodemon
$ cat > nodemon.json
{
  "watch": ["src"],
  "ext": ".ts,.js",
  "ignore": [],
  "exec": "npx ts-node ./src/index.ts"
}
<ctrl-d>
# add to package.json/scripts...
"start:dev": "npx nodemon",
```

## OLD STUFF

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
