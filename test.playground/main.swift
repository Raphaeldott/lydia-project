 /* The framework  in Swift that provides essential 
functionalities like working with URLs, JSON, and networking
Required here because we use URLSession (for API calls) 
and JSONDecoder (for parsing JSON).*/

import Foundation

// Define User structure to match API response

struct User: Codable { // Codable protocol to encode/decode JSON
    let name: Name
    let email: String
    let picture: Picture
    
    struct Name: Codable {
        let first: String  // First name
        let last: String   // Last name
    }
    // Email doesnt need any specific structure
    struct Picture: Codable { // Picture URL
        let large: String
    }
}
