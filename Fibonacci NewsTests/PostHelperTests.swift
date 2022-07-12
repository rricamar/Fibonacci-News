import XCTest

@testable import Fibonacci_News

class PostHelperTests: XCTestCase {
    
    func testPostHelper_filterValidPosts_shouldReturnOnlyPostsWithUrl() throws {
        let mockPosts: [Post] = [
            Post(objectID: "1", points: 100, title: "Mock Post 1", url: "Mock Url (Valid Url)"),
            Post(objectID: "2", points: 200, title: "Mock Post 2 (Nil Url)", url: nil),
            Post(objectID: "3", points: 300, title: "Mock Post 2 (Valid Url but empty)", url: ""),
        ]
        
        let filteredPosts = filterValidPosts(posts: mockPosts)
        
        XCTAssertEqual(filteredPosts.count, 1)
        XCTAssertEqual(filteredPosts[0].url, "Mock Url (Valid Url)")
    }
    
}

