import Foundation
import SwiftUI

func filterValidPosts(posts: [Post]) -> [Post] {
    return posts.filter({ $0.url != nil && $0.url!.count > 0 })
}

