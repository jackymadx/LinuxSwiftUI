import PackageDescription

let package = Package(
    name: "Project",

     dependencies: [
                .Package(url: "https://github.com/TomasLinhart/SwiftGtk", Version(0, 3, 1))
     ],

     exclude: ["iOS", "Resources"]
)
