import SwiftUI

struct ContentView: View {
    @ObservedObject var hnAlgoliaService = HnAlgoliaService()
    
    var body: some View {
        NavigationView {
            PostList(posts: hnAlgoliaService.posts)
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
