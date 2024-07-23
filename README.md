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

1- create: Create new Flutter App, Package or MonoRepo workspace and Initialize it.
```sh
# create new app
xflutter_cli create --name=my_app --package=com.my_package_name

# create new package
xflutter_cli create --name=test_package --template=package

# create monorepo workspace (multiple apps with shared packages)
xflutter_cli create --name=test_workspace --template=workspace
```
- generate: Generates and/or modifies files based on a schematic.
```sh
# generate new screen
xflutter_cli g screen --path=ui/screens/login

# generate new form
xflutter_cli g form --path=ui/screens/login

# generate @Freezed model from json file
xflutter_cli g model

# generate CRUD (create, read, update and delete) apis
xflutter_cli g crud

# generate --help
xflutter_cli g --help
```
- make: generates new module depending on xflutter-cli commands.
```sh
# generate login, register, forget-password and reset-password screens with network-layer
xflutter_cli make auth --type=credentials

# generate login with phone and verify-otp screens with network-layer
xflutter_cli make auth --type=phone
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

- (model): generate @freezed models from json file.

- (crud): generate (RestClient and repository) for specific data model.

- (isar): generate local-database layer for specific data model. 

- (paging): make a viewModel extends (PaginationViewModel) after generate CRUD.

### generate flags:

- (responsive): used with (generate screen), give you the ability to wrap tablet and mobile layouts in your screen (tablet screen will not generated).

- (tablet): used with (generate screen), give you the ability to wrap tablet and mobile layouts in your screen (generate mobile and tablet screens).

- (di): used with (generate screen), state management with dependency injection to manage variables between screen and children widgets.

- (theme): used with (generate screen), initialize your global app theme.

- (router): used with (generate screen), give you ability to manage navigation between screens, initialize (auto_route) package and wrap the generated screen in app routes.