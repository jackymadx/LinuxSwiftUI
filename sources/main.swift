import SwiftGtk

let site = "solarianprogrammer.com"
print("Hello from \(site)")

// Make an URLComponents instance
// let swifty = NSURLComponents(string: "https://swift.org")!

// Print something useful about the URL
//print("\(swifty.host!)")

// Output: "swift.org"

let app = Application(applicationId: "com.example.application")
app.run { window in
    window.title = "Hello World"
    window.defaultSize = Size(width: 120, height: 140)
    window.resizable = true

    let button = Button(label: "Press Me")
    button.clicked = { _ in
        let newWindow = Window(windowType: .topLevel)
        newWindow.title = "Just a window"
        newWindow.defaultSize = Size(width: 100, height: 120)
        let labelPressed = Label(text: "Oh, you pressed the button.")
        newWindow.add(labelPressed)

        newWindow.showAll()
    }

    window.add(button)
}
