import SwiftUI

struct PostList: View {
    static var navBarTitle = "Fibonacci News"
    
    var posts: [Post]
    
    var body: some View {
        List(posts) { post in
            PostView(post: post)
        }.navigationTitle(PostList.navBarTitle)
    }
}


struct PostList_Previews: PreviewProvider {
    static let mockPosts: [Post] = [
        Post(
            objectID: "1",
            points: 100,
            title: "Mock Post 1",
            url: ""
        )
    ]
    
    static var previews: some View {
        PostList(posts: PostList_Previews.mockPosts)
    }
}
