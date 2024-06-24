// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Package",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(name: "Meal-Screen", targets: ["Meal-Screen"]),
        .library(name: "Meals-Client", targets: ["Meals-Client"]),
        .library(name: "Meals-List", targets: ["Meals-List"]),
        .library(name: "Meals-Models", targets: ["Meals-Models"]),
        .library(name: "Meals-Screen", targets: ["Meals-Screen"]),
        .library(name: "Mocks", targets: ["Mocks"]),
        .library(name: "Navigation", targets: ["Navigation"]),
        .library(name: "Navigation-View", targets: ["Navigation-View"]),
        .library(name: "Networking", targets: ["Networking"]),
    ],
    targets: [
        .target(
            name: "Meal-Screen",
            dependencies: [
                "Meals-Client",
                "Meals-Models",
                "Mocks",
                "Navigation",
                "Networking",
            ]
        ),
        .target(
            name: "Meals-Client",
            dependencies: [
                "Meals-Models",
                "Networking",
            ]
        ),
        .testTarget(
            name: "Meals-Client-Tests",
            dependencies: [
                "Meals-Client",
                "Mocks",
                "URLSession-Stub",
            ]
        ),
        .target(
            name: "Meals-List",
            dependencies: [
                "Meals-Models",
                "Mocks",
            ]
        ),
        .target(
            name: "Meals-Models"
        ),
        .testTarget(
            name: "Meals-Models-Tests",
            dependencies: [
                "Meals-Models",
            ]
        ),
        .target(
            name: "Meals-Screen",
            dependencies: [
                "Meals-Client",
                "Meals-List",
                "Meals-Models",
                "Mocks",
                "Navigation",
                "Networking",
            ]
        ),
        .target(
            name: "Mocks",
            dependencies: [
                "Meals-Client",
                "Meals-Models",
                "Networking",
            ],
            resources: [
                .process("Meal/Meal+bananaPancakes.json"),
                .process("Meal/Meal+teriyakiChickenCasserole.json"),
                .process("Meal+FromID/Meal.FromID+bananaPancakes.json"),
                .process("Meals/Meals+beef.json"),
                .process("Meals/Meals+chicken.json"),
                .process("Meals/Meals+dessert.json"),
                .process("Meals/Meals+pork.json"),
                .process("Meals/Meals+seafood.json"),
                .process("Meals/Meals+vegetarian.json"),
                .process("Meals+Preview/Meals.Preview+bananaPancakes.json"),
                .process("Meals+Preview/Meals.Preview+teriyakiChickenCasserole.json"),
            ]
        ),
        .testTarget(
            name: "Mocks-Tests",
            dependencies: [
                "Mocks",
            ]
        ),
        .target(
            name: "Navigation",
            dependencies: [
                "Meals-Models",
            ]
        ),
        .target(
            name: "Navigation-View",
            dependencies: [
                "Meals-Models",
                "Meal-Screen",
                "Navigation",
            ]
        ),
        .target(
            name: "Networking"
        ),
        .testTarget(
            name: "Networking-Tests",
            dependencies: [
                "Networking",
                "URLSession-Stub",
            ]
        ),
        .target(
            name: "URLSession-Stub"
        ),
    ]
)
