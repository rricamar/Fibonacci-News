import SwiftUI

struct PostView: View {
    var post: Post
    
    var body: some View {
        HStack (alignment: .top) {
            Text(String(post.points))
                .foregroundColor(.red)
            
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
