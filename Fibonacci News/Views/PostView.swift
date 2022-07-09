import SwiftUI

struct PostView: View {
    var post: Post
    
    var body: some View {
        HStack {
            Text(String(post.points))
            Text(post.title)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post(
            objectID: "1",
            points: 100,
            title: "Mock Post 1",
            url: "Mock Url"
        ))
    }
}
