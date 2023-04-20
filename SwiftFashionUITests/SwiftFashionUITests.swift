//
//  SwiftFashionUITests.swift
//  SwiftFashionUITests
//
//  Created by Larry Nguyen on 4/7/23.
//
//  swiftlint:disable line_length

import XCTest

final class SwiftFashionUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        app = XCUIApplication()
        continueAfterFailure = false
    }

    func testErrorMessageDisplayedIfNotConnectedToServer() {
        app.launch()

        let errorMessage = "Unable to connect to server. Please ensure that your server and database are running and try again."

        XCTAssert(app.staticTexts[errorMessage].exists)
    }

    func testProductsDisplayedDuringUITesting() {
        app.launchArguments.append(Config.productArgument)
        app.launch()

        let productImages = app.collectionViews.scrollViews
            .otherElements
            .images

        XCTAssert(app.staticTexts["T-shirt"].exists)
        XCTAssert(productImages["tshirt-9E8A8A"].exists)
    }

    func testProductViewDisplaysOnTap() {
        app.launchArguments.append(Config.productArgument)
        app.launch()

        let scrollViewsQuery = app.scrollViews

        // Tap on t-shirt product
        app.collectionViews/*@START_MENU_TOKEN@*/.scrollViews/*[[".cells.scrollViews",".scrollViews"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            .staticTexts["T-shirt"]
            .tap()

        XCTAssert(app.staticTexts["Dusty Gray"].exists)

        // Tap on Tan Hide color
        scrollViewsQuery.otherElements
            .containing(.image, identifier: "tshirt-9E8A8A")
            .children(matching: .button)
            .element(boundBy: 1)
            .tap()

        XCTAssert(app.staticTexts["Tan Hide"].exists)
        XCTAssert(app.images["tshirt-FC9C5E"].exists)
    }

    func testTappingOnProductCategoryChangesProductsDisplayed() {
        app.launchArguments.append(Config.productArgument)
        app.launch()

        // Tap on Dresses category
        app.scrollViews.otherElements
            .buttons["Dresses"]
            .tap()

        XCTAssert(app.staticTexts["Sundress"].exists)

        // Tap on Footwear category
        app.scrollViews.otherElements
            .buttons["Footwear"]
            .tap()

        XCTAssert(app.staticTexts["Low tops"].exists)
    }

    func testAddingItemToCartUpdatesButtonText() {
        app.launchArguments.append(Config.productArgument)
        app.launch()

        // Tap on jersey product
        app.collectionViews/*@START_MENU_TOKEN@*/.scrollViews/*[[".cells.scrollViews",".scrollViews"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            .staticTexts["Jersey"]
            .tap()

        // Tap add to cart button
        let addButton = app.buttons["Add to cart"]
        addButton.tap()

        XCTAssert(app.staticTexts["1 in cart"].exists)
        XCTAssertFalse(app.buttons["Add to cart"].exists)

        // Tap increment button 2x
        let incrementButton = app.buttons["Add"]
        incrementButton.tap()
        incrementButton.tap()

        XCTAssert(app.staticTexts["3 in cart"].exists)

        // Tap decrement button 1x
        let decrementButton = app.buttons["Remove"]
        decrementButton.tap()

        XCTAssert(app.staticTexts["2 in cart"].exists)

        // Tap decrement button 2x
        decrementButton.tap()
        decrementButton.tap()

        XCTAssert(app.buttons["Add to cart"].exists)
    }

    func testEmptyCartDisplaysMessage() {
        app.launchArguments.append(Config.productArgument)
        app.launch()

        // Tap on Cart tab
        app.tabBars["Tab Bar"]
            .buttons["Cart"]
            .tap()

        XCTAssert(app.images["Shopping Cart"].exists)
        XCTAssert(app.staticTexts["Your cart is empty"].exists)
    }

    func testCartDisplaysOrderItemsAfterAddingToCart() {
        app.launchArguments.append(Config.productArgument)
        app.launch()

        let elementsQuery = app.collectionViews/*@START_MENU_TOKEN@*/.scrollViews/*[[".cells.scrollViews",".scrollViews"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.otherElements
        let addToCartButton = app.buttons["Add to cart"]
        let closeButton = app.navigationBars["Product Details"]/*@START_MENU_TOKEN@*/.buttons["Close"]/*[[".otherElements[\"Close\"].buttons[\"Close\"]",".buttons[\"Close\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/

        // Tap on polo shirt product and add to cart
        elementsQuery.staticTexts["Polo shirt"].tap()
        addToCartButton.tap()

        // Dismiss product view
        closeButton.tap()

        // Tap on turtle neck product
        elementsQuery.staticTexts["Turtleneck sweater"].tap()

        // Select color variant with HEX 745EFC
        app.scrollViews.otherElements
            .containing(.image, identifier: "turtleneck-65676C")
            .children(matching: .button)
            .element(boundBy: 1)
            .tap()

        // Add to cart
        addToCartButton.tap()

        // Dismiss product view
        closeButton.tap()

        // Tap on Cart tab
        app.tabBars["Tab Bar"].buttons["Cart"].tap()

        XCTAssert(app.staticTexts["Polo shirt"].exists)
        XCTAssert(app.images["polo-4EC67C"].exists)

        XCTAssert(app.staticTexts["Turtleneck sweater"].exists)
        XCTAssert(app.images["turtleneck-745EFC"].exists)

        XCTAssert(app.buttons["Check out"].exists)
    }

    func testCheckoutFailureFlow() {
        app.launchArguments.append(Config.productArgument)
        app.launch()

        // Tap on tank top product
        app.collectionViews/*@START_MENU_TOKEN@*/.scrollViews/*[[".cells.scrollViews",".scrollViews"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            .staticTexts["Tank top"]
            .tap()

        // Add to cart and dismiss product view
        app.buttons["Add to cart"].tap()
        app.navigationBars["Product Details"]/*@START_MENU_TOKEN@*/.buttons["Close"]/*[[".otherElements[\"Close\"].buttons[\"Close\"]",".buttons[\"Close\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        // Tap on Cart tab and check out
        app.tabBars["Tab Bar"].buttons["Cart"].tap()
        app.buttons["Check out"].tap()

        // Fill out form
        let elementsQuery = app.scrollViews.otherElements
        let name = elementsQuery.textFields["John Smith"]
        name.tap()
        name.typeText("John Smith")

        let email = elementsQuery.textFields["john@email.com"]
        email.tap()
        email.typeText("john@email.com")

        let address = elementsQuery.textFields["1 Apple Park Way"]
        address.tap()
        address.typeText("1 Apple Park Way")

        let city = elementsQuery.textFields["Cupertino"]
        city.tap()
        city.typeText("Cupertino")

        let state = elementsQuery.textFields["CA"]
        state.tap()
        state.typeText("CA")

        let zip = elementsQuery.textFields["95014"]
        zip.tap()
        zip.typeText("95014")

        // Tap complete order
        app.buttons["Complete Order - $6.40"].tap()

        let alert = app.alerts["Sorry, we are unable to process your order right now. Please try again later."]
        XCTAssertTrue(alert.waitForExistence(timeout: 5))
    }

    func testCheckoutSuccessFlow() {
        app.launchArguments.append(Config.productArgument)
        app.launchArguments.append(Config.orderArgument)
        app.launch()

        // Tap on t-shirt product
        app.collectionViews/*@START_MENU_TOKEN@*/.scrollViews/*[[".cells.scrollViews",".scrollViews"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            .staticTexts["T-shirt"]
            .tap()

        // Add two to cart and dismiss product view
        app.buttons["Add to cart"].tap()
        app.buttons["Add"].tap()
        app.navigationBars["Product Details"]/*@START_MENU_TOKEN@*/.buttons["Close"]/*[[".otherElements[\"Close\"].buttons[\"Close\"]",".buttons[\"Close\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        // Tap on Cart tab and check out
        app.tabBars["Tab Bar"].buttons["Cart"].tap()
        app.buttons["Check out"].tap()

        // Fill out form
        let elementsQuery = app.scrollViews.otherElements
        let name = elementsQuery.textFields["John Smith"]
        name.tap()
        name.typeText("John Smith")

        let email = elementsQuery.textFields["john@email.com"]
        email.tap()
        email.typeText("john@email.com")

        let address = elementsQuery.textFields["1 Apple Park Way"]
        address.tap()
        address.typeText("1 Apple Park Way")

        let city = elementsQuery.textFields["Cupertino"]
        city.tap()
        city.typeText("Cupertino")

        let state = elementsQuery.textFields["CA"]
        state.tap()
        state.typeText("CA")

        let zip = elementsQuery.textFields["95014"]
        zip.tap()
        zip.typeText("95014")

        // Tap complete order
        app.buttons["Complete Order - $19.20"].tap()

        let thankYouText = app.staticTexts["Thank you!"]
        let productImage = app.images["tshirt-9E8A8A"]

        XCTAssertTrue(thankYouText.waitForExistence(timeout: 5))
        XCTAssertTrue(productImage.waitForExistence(timeout: 5))
    }
}
