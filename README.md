#### `xflutter_cli` is a command line tool helps you to generates and/or modifies your Flutter Components.

### Official Docs:
[https://www.xflutter-cli.com](https://www.xflutter-cli.com)

### Install:
activate dart cli to run it globally:

`dart pub global activate xflutter_cli`

### Notes:
- make sure your Flutter version is up to 3.0.0.
- if you are using *(macOS)* don't forget to update your .zshrc file with:

1- export PATH="$PATH:$HOME/{your flutter path}/flutter/bin"

2- export PATH="$PATH":"$HOME/.pub-cache/bin"

### Usage: `xflutter_cli <command>`

Available commands:

- create: Create new Flutter App and Initialize it.
- generate: Generates and/or modifies files based on a schematic.
- init: Initialize your project with necessary packages and reusable files.
- help: browse all available commands, options and flags.

### generate options:

- (screen): generate screen with state management, responsive and routing configuration.

- (form): generate form inside your screen widgets with inputs such as (email, password) with state management.

- (model): generate @freezed models from json file.

- (crud): generate (RestClient and repository) for specific data model.

- (isar): generate local-database layer for specific data model. 

### generate flags:

- (responsive): used with (generate screen), give you the ability to wrap tablet and mobile layouts in your screen (tablet screen will not generated).

- (tablet): used with (generate screen), give you the ability to wrap tablet and mobile layouts in your screen (generate mobile and tablet screens).

- (state_management): used with (generate screen), state management with dependency injection to manage variables between screen and children widgets.

- (theme): used with (generate screen), initialize your global app theme.

- (router): used with (generate screen), give you ability to manage navigation between screens, initialize (auto_route) package and wrap the generated screen in app routes.
