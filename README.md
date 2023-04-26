# SwiftFashion

[![iOS CI workflow](https://github.com/larryn35/SwiftFashion/actions/workflows/CI.yml/badge.svg)](https://github.com/larryn35/SwiftFashion/actions/workflows/CI.yml)

![swift-fashion](https://user-images.githubusercontent.com/64430817/234474653-514b6107-e840-4387-a5cb-7e5bffa0a6f9.png)

## About the app

SwiftFashion is a simple iOS e-commerce app built with SwiftUI. The app uses [SFStoreKit](https://github.com/larryn35/SFStoreKit), a REST API created with Swift using Vapor, to manage the store's products and store orders in a database. 

The goal of this app was to learn about server-side Swift development with Vapor, as well as a playground to explore experiment with concepts and tools such as:
- Building regular expressions with RegexBuilder
- UI testing in Xcode
- Implementing CI/CD using Github Actions
- Animating layout transitions with AnyLayout

---

## Getting started
Please check out the [SFStoreKit](https://github.com/larryn35/SFStoreKit) repo for details on setting up the server needed for the app to run.

### Running the app on a physical device
Since SFStoreKit runs the server on your local machine, SwiftFashion will only work on the simulator. To run the app on a physical device, you would need to expose the server to the internet. 

I used [Ngrok](https://ngrok.com/docs/getting-started/), which creates a secure tunnel to the local server and provides a public URL that can be used to access it over the internet.

After installing Ngrok and while the server is running, run the following command in the terminal:
```
./ngrok http 8080
```

The terminal should clear and look something like this:
```
    ngrok                                                                       (Ctrl+C to quit)
    
    Session Status                online
    Account                       Larry (Plan: Free)
    Version                       3.2.2
    Region                        United States (us)
    Latency                       78ms
    Web Interface                 http://127.0.0.1:4040
    Forwarding                    https://1234567890.ngrok-free.dev -> http://localhost:8000
    
    Connections                   ttl     opn     rt1     rt5     p50     p90
                                  0       0       0.00    0.00    0.00    0.00
```

Copy the forwarding URL (```https://123456790.ngrok-free.dev``` in this example) and make the following changes in the ```Endpoint.swift``` file.

```swift
// Endpoint.swift

extension ShoppingEndpoint {
    var header: [String: String]? {
        switch self {
        default:
            return [
                "Content-Type": "application/json",
                "ngrok-skip-browser-warning": "true"
            ]
        }
    }
}

extension Endpoint {
    var scheme: String { "https" }
    var host: String { "123456790.ngrok-free.dev" }
    var port: Int? { nil }
}
```

You should be able to run the app on your physical device.

---

## Demo

https://user-images.githubusercontent.com/64430817/234716003-d9a4837a-c757-473d-b081-f9dd9671d941.mp4

---

## What's next
Some features that I hope to include in the future include:
- Allow users to create an account, track previous orders, and favorite products
- Support for iPadOS and MacOS
- Add an onboarding screen
- Persist cart items
- Update UI and add animations

---

## Resources

- [Ecommerce Flat Icons 2 Collection](https://www.svgrepo.com/collection/ecommerce-flat-icons-2/) by <a href="https://www.graphicsfuel.com/2017/09/fashion-icons-set/?ref=svgrepo.com" target="_blank">Alvarez</a> in CC Attribution License via <a href="https://www.svgrepo.com/" target="_blank">SVG Repo</a>
- [The Color API](https://www.thecolorapi.com/) by [Josh Beckman](https://www.joshbeckman.org/)
- [From Hex to Color and Back in SwiftUI](https://blog.eidinger.info/from-hex-to-color-and-back-in-swiftui) by Marco Eidinger
- [How to decode JSON from your app bundle the easy way](https://www.hackingwithswift.com/example-code/system/how-to-decode-json-from-your-app-bundle-the-easy-way) by Paul Hudson

### Vapor
- [Vapor Docs](https://docs.vapor.codes/) - The Vapor Core Team
- [Getting started with Vapor 4](https://www.youtube.com/watch?v=CD283bLteP0&list=PLMRqhzcHGw1Z7xNnqS_yUNm1k9dvq-HbM) - Mikaela Caron from CodeWithChris
- [Server-Side Swift with Vapor](https://www.kodeco.com/books/server-side-swift-with-vapor) - Kodeco
- [Testing in Vapor 4](https://www.kodeco.com/16909142-testing-in-vapor-4) - Tim Condon from Kodeco
- [Developing and Testing Server-Side Swift with Docker and Vapor](https://www.kodeco.com/26322368-developing-and-testing-server-side-swift-with-docker-and-vapor) - Natan Rolnik from Kodeco
