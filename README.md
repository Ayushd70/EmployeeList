# Employee List

Flutter application to display and to manage employee list in a company.


## App Screenshots

<p align="center">
</p>


## Tech Stack
The libraries that this app is using as of now:
- [build_verify](https://pub.dev/packages/build_verify)
- [build_runner](https://pub.dev/packages/build_runner)
- [cupertino_icons](https://pub.dev/packages/cupertino_icons)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [flutter_svg](https://pub.dev/packages/flutter_svg)
- [focus_detector](https://pub.dev/packages/focus_detector)
- [grouped_list](https://pub.dev/packages/grouped_list)
- [http](https://pub.dev/packages/http)
- [sqfentity](https://pub.dev/packages/sqfentity)
- [sqfentity_gen](https://pub.dev/packages/sqfentity_gen)
- [table_calendar](https://pub.dev/packages/table_calendar)

## Architecture

This project uses BLoC for managing state hence it naturally uses the BLoC Architecture and feature first/layered architecture.

You can learn more about those from the following links;

[BLoC Architecture](https://bloclibrary.dev/#/architecture)
[Layered Architecture](https://verygood.ventures/blog/very-good-flutter-architecture)


## Run Locally

Make sure that you have flutter and dart installed and setup. If you don't then refer to the official installation instructions at [Flutter Docs](https://flutter.dev/docs/get-started/install)

Then run the following commands

Clone the project

```bash
  git clone https://github.com/Ayushd70/EmployeeList employee_list
```

Go to the project directory

```bash
  cd employee_list
```

Fetch dependencies and generate routes

```bash
  flutter pub get && flutter pub run build_runner build
```

Run the app

```bash
  flutter run
```

## License

```
Copyright (c) 2023 Ayush Dubey
Permission is hereby granted, free of charge, to any
person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the
Software without restriction, including without
limitation the rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software
is furnished to do so, subject to the following
conditions:
The above copyright notice and this permission notice
shall be included in all copies or substantial portions
of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF
ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT
SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
```
