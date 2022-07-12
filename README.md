#  Fibonacci News

A very simple app for reading news based on the `H4X0R News` app of the _iOS & Swift - The Complete iOS App Development Bootcamp_ course.

## Useful resources

- [3 Formas de Usar un WEBVIEW en SwiftUI](https://www.youtube.com/watch?v=xvO8u1HqklE) 
- [SwiftUI sheet doesn't update content as expected](https://www.hackingwithswift.com/forums/swiftui/swiftui-sheet-doesn-t-update-content-as-expected/4681)
- [@STATE vs @BINDING in SwiftUI](https://www.swiftbeta.com/state-vs-binding-en-swiftui/)
- [Unit Testing a SwiftUI application in Xcode | Advanced Learning #17](https://www.youtube.com/watch?v=eqdvIUKsM2A&list=PLwvDm4Vfkdphc1LLLjCaEd87BEg07M97y&index=18)
- [How to run Xcode tests from the terminal](https://mokacoding.com/blog/running-tests-from-the-terminal)
- [Running UI tests from command line](https://jayeshkawli.ghost.io/running-ui-tests-from-command-line)
- [Apple Developer: Methods for Skipping Tests](https://developer.apple.com/documentation/xctest/methods_for_skipping_tests)
- [Enable Developer Tools Access for standard user for Xcode](https://developer.apple.com/forums/thread/20840)
- [Xcode UI Testing Cheat Sheet](https://www.hackingwithswift.com/articles/148/xcode-ui-testing-cheat-sheet)

## Testing

Launch command:

```bash
xcodebuild \
  -project Fibonacci\ News.xcodeproj \
  -scheme "Fibonacci News" \
  -sdk iphonesimulator \
  -destination "platform=iOS Simulator,name=iPhone 13,OS=15.5" \
  test | xcbeautify
```
