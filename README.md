## xflutter_cli 
a command line tool helps you to generates and/or modifies your Flutter Components.

<br clear="left"/>

---
## Documentation:
For official documentation, please visit https://www.xflutter-cli.com

## Install:
```sh
dart pub global activate xflutter_cli
```
If activation doesn't work, Check dart docs:
[Running a script from your PATH](https://dart.dev/tools/pub/cmd/pub-global#running-a-script-from-your-path)


## Usage: `xflutter_cli <command>`

Available commands:

1- create: Create new Flutter Application, Package or Monorepo workspace and Initialize it.
```sh
# create new app
xflutter_cli create --name=my_app --package=com.my_org

# create new package
xflutter_cli create --name=test_package --template=package

# create monorepo workspace (multiple apps with shared packages)
xflutter_cli create --name=monorepo_workspace --template=workspace
```
- generate: Generates and/or modifies files based on a schematic.
```sh
# generate new screen
xflutter_cli g screen --path=ui/screens/login

# generate new form
xflutter_cli g form --path=ui/screens/login

# generate @freezed model from http response or json file
xflutter_cli g model

# generate data layer (repository and retrofit rest-client) for (create, read, update and delete) APIs
xflutter_cli g remote

# generate --help
xflutter_cli g --help
```
- make: generates new module depending on xflutter-cli commands.
```sh
# generate login, register, forget-password and reset-password screens with network-layer
xflutter_cli make auth --auth-type=credentials

# generate login with phone and verify-otp screens with network-layer
xflutter_cli make auth --auth-type=phone
```
- graph: generate workspace graph to display applications and packages relations
```sh
xflutter_cli graph
```

- git: manage git repository with automatic configurations like formatting, commit type before push
```sh
xflutter_cli git
```

- init: Initialize your project with necessary packages and reusable files.
```sh
xflutter_cli initialize
```
- help: browse all available commands, options and flags.
```sh
xflutter_cli --help
```

### generate options:

- (screen): generate screen with state management, responsive and routing configuration.

- (form): generate form inside your screen widgets with inputs such as (email, password) with state management.

- (model): generate @freezed models from http response or json file.

- (remote): generate remote data layer for (create, read, update and delete) APIs for specific data model.

- (offline): generate local-database layer for specific data model. 

- (paging): generate paging data-source layer to by generating infinite pagination widgets and link them with generated CRUD.

### generate flags:

- (mobile): used with (generate screen), give you the ability to wrap tablet and mobile layouts in your screen (tablet screen will not generated).

- (tablet): used with (generate screen), give you the ability to wrap tablet and mobile layouts in your screen (generate mobile and tablet screens).

- (state-management): used with (generate screen), state management with dependency injection to manage variables between screen and children widgets.

- (theme): used with (generate screen), initialize your global app theme.

- (router): used with (generate screen), give you ability to manage navigation between screens, initialize (auto_route) package and wrap the generated screen in app routes.

## [Library](https://pub.dev/packages/xflutter_cli)

## [Monorepo Article](https://medium.com/p/4b307b80ab91)