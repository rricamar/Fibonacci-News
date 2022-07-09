import SwiftUI

struct ContentView: View {
    static var navBarTitle = "Fibonacci News"
    
    @ObservedObject var hnAlgoliaService = HnAlgoliaService()
    
    var body: some View {
        NavigationView { PostList(posts: hnAlgoliaService.posts) }.onAppear {
            hnAlgoliaService.list()
        }
    }
}


struct PostList: View {
    var posts: [Post]
    
    var body: some View {
        List(posts) { post in PostView(post: post) }.navigationTitle(ContentView.navBarTitle)
    }
}


struct PostView: View {
    var post: Post
    
    var body: some View {
        HStack {
            Text(String(post.points))
            Text(post.title)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
    
}
