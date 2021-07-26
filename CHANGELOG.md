# Changelog
All notable changes to this project will be documented in this file.

## [1.0.1] - 2021-08-26

### Changed
- **ARC**: Fixed minor bugs with the missing [weak self] in some async operations.
- **Syntax**: The push function in the ViperRouter class has changed the syntax and now looks like this: push (_ViewController: UIViewController, animated: Bool).
- **Threads**:  Now the entire body of the function show(title: String?, message: String?, animated: Bool) in the ViperViewController class is wrapped in the main thread.

## [1.0.0] - 2021-08-23

### Changed
- Distribution: Swift Package Manager
