 /* The framework  in Swift that provides essential 
functionalities like working with URLs, JSON, and networking
Required here because we use URLSession (for API calls) 
and JSONDecoder (for parsing JSON).*/

import Foundation

// Define User structure to match API response
// I will only retrieve 3 fields: name, email, and picture
// Because the goal is just to fetch data and display it
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

// Fetch users from the API
/* The @escaping keyword means the closure is stored and called later,
after the function fetchUsers has already finished executing.*/
// Optional array of User objects ([User]?)
// If the request is successful, the closure will receive a valid array ([User])
// If the request fails, the closure will receive nil
func fetchUsers(completion: @escaping ([User]?) -> Void) {
    let url = URL(string: "https://randomuser.me/api/?results=10")!
    
    // Create a network request to fetch data
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        // Check if data was received and if there's no error
        guard let data = data, error == nil else {
            print("Error fetching data:", error ?? "Unknown error") // Print error if any
            completion(nil) // Return nil because fetching failed
            return
        }
        
        do {
            // Decode the JSON response into a dictionary
            // The API returns a JSON object with a "results" key that contains an array of users
            let response = try JSONDecoder().decode([String: [User]].self, from: data)
            completion(response["results"]) // Extract the users list and return it
        } catch {
            print("Error decoding JSON:", error) // Print decoding error if any
            completion(nil) // Return nil because decoding failed
        }
    }
    
    task.resume() // Start the network request
}

// Call fetchUsers and handle the fetched data
fetchUsers { users in
    if let users = users { // Check if we got valid user data
        for user in users { // Loop through each user and print their details
            print("\(user.name.first) \(user.name.last) - \(user.email)")
        }
    } else {
        print("Failed to fetch users.") // Print error message if fetching failed
    }
}

// Keep the program running to wait for the async response
RunLoop.main.run()