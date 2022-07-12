import XCTest

class Fibonacci_NewsUITests: XCTestCase {
    let sleepDefaultTime: UInt32 = 3
    
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    override func tearDownWithError() throws {
    }
    
    func test_ContentView_shouldDisplayNewsList() throws {
        let app = XCUIApplication()
        app.launch()
        sleep(sleepDefaultTime)
        
        let postList = app.tables["PostList"]
        XCTAssertTrue(postList.exists)
    }
    
    func test_ContentView_shouldDisplayOpenWebView() throws {
        let app = XCUIApplication()
        app.launch()
        sleep(sleepDefaultTime)
        
        let postList = app.tables["PostList"]
        postList.cells.firstMatch.tap()
        sleep(sleepDefaultTime)
        
        let webView = app.webViews.firstMatch
        XCTAssertTrue(webView.exists)
    }
}

