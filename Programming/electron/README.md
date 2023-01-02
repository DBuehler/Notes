# Installation

Just follow the [tutorial at electronjs.org](https://www.electronjs.org/docs/latest/tutorial/tutorial-first-app)?

```
$ yarn set version berry # Needed to avoid an error when using git bash terminal
$ yarn init
$ yarn add electron --dev
```

New stuff - following info from Tigran Tech YouTube video...

```bash
$ yarn create react-app desktop-app --template typescript
$ yarn create electron-app temp-electron-app --template typescript-webpack
$ cd desktop-app
$ yarn add -D electron
```

~~ In desktop-app - add electron folder at top level, create files: ~~
~~ _ electron/index.ts ~~
~~ _ electron/preload.ts ~~
~~ \* electron/tsconfig.json ~~

Going in my own direction here...

```
$ cp ../temp-electron-app/tsconfig.json electron
$ cp -r ../temp-electron-app/src electron
```

edit `electron/tsconfig.json` change `outDir` to `../build`
