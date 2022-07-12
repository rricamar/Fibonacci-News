import SwiftUI

struct ContentView: View {
    @ObservedObject var hnAlgoliaService = HnAlgoliaService()
    
    var body: some View {
        NavigationView {
            if hnAlgoliaService.posts.isEmpty {
                ProgressView()
            } else {
                let validPosts: [Post] = filterValidPosts(posts: hnAlgoliaService.posts)
                PostList(posts: validPosts)
            }
        }.onAppear {
            hnAlgoliaService.list()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
