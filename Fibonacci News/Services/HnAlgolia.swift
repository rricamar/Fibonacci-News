import Foundation

class HnAlgoliaService: ObservableObject {
    static let hnAlgoliaApiUrl = "https://hn.algolia.com/api/v1/search?tags=front_page"

    @Published var posts = [Post]()

    func list() {
        if let url = URL(string: HnAlgoliaService.hnAlgoliaApiUrl) {
            createSession(url: url)
        }
    }

    fileprivate func createSession(url: URL) {
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        session.dataTask(with: url) { data, response, error in
            if error == nil, let safeData = data {
                do {
                    let decoder = JSONDecoder()
                    let results = try decoder.decode(HnAlgoliaResults.self, from: safeData)
                    DispatchQueue.main.async {
                        self.posts = results.hits
                    }
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}

