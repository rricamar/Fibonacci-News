import SwiftUI

struct PostList: View {
    static private var navBarTitle = "Fibonacci News"
    
    @State var showWebView = false
    @State var nextPostUrl = ""
    
    var posts: [Post]
    
    var body: some View {
        List(posts) { post in
            PostView(post: post)
                .onTapGesture {
                    nextPostUrl = post.url!
                    showWebView = true
                }
                .sheet(isPresented: $showWebView) {
                    WebView(url: $nextPostUrl)
                }
        }
        .navigationTitle(PostList.navBarTitle)
    }
}

struct PostList_Previews: PreviewProvider {
    static let mockPosts: [Post] = [
        Post(
            objectID: "1",
            points: 100,
            title: "Mock Post 1",
            url: "Mock Url"
        )
    ]
    
    static var previews: some View {
        PostList(posts: PostList_Previews.mockPosts)
    }
}
