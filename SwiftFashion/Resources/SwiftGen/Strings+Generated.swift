// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  /// Localizable.strings
  ///   SwiftFashion
  /// 
  ///   Created by Larry Nguyen on 4/10/23.
  internal static let appName = L10n.tr("Localizable", "appName", fallback: "Swift Fashion")
  internal enum Button {
    /// About us
    internal static let about = L10n.tr("Localizable", "button.about", fallback: "About us")
    /// Add to cart
    internal static let addToCart = L10n.tr("Localizable", "button.addToCart", fallback: "Add to cart")
    /// Cancel
    internal static let cancel = L10n.tr("Localizable", "button.cancel", fallback: "Cancel")
    /// Check out
    internal static let checkOut = L10n.tr("Localizable", "button.checkOut", fallback: "Check out")
    /// Complete Order - 
    internal static let completeOrder = L10n.tr("Localizable", "button.completeOrder", fallback: "Complete Order - ")
    /// Done
    internal static let done = L10n.tr("Localizable", "button.done", fallback: "Done")
    /// %d in cart
    internal static func numberInCart(_ p1: Int) -> String {
      return L10n.tr("Localizable", "button.numberInCart", p1, fallback: "%d in cart")
    }
    /// OK
    internal static let ok = L10n.tr("Localizable", "button.ok", fallback: "OK")
    /// Proccessing Order
    internal static let proccessingOrder = L10n.tr("Localizable", "button.proccessingOrder", fallback: "Proccessing Order")
    /// Shop now
    internal static let shop = L10n.tr("Localizable", "button.shop", fallback: "Shop now")
    /// Try again
    internal static let tryAgain = L10n.tr("Localizable", "button.tryAgain", fallback: "Try again")
  }
  internal enum Cart {
    /// Your cart is empty
    internal static let emptyCart = L10n.tr("Localizable", "cart.emptyCart", fallback: "Your cart is empty")
    /// Size: %@
    internal static func itemSize(_ p1: Any) -> String {
      return L10n.tr("Localizable", "cart.itemSize", String(describing: p1), fallback: "Size: %@")
    }
    /// Cart
    internal static let title = L10n.tr("Localizable", "cart.title", fallback: "Cart")
    /// Total
    internal static let total = L10n.tr("Localizable", "cart.total", fallback: "Total")
  }
  internal enum Error {
    /// Please enter a valid address.
    internal static let invalidAddress = L10n.tr("Localizable", "error.invalidAddress", fallback: "Please enter a valid address.")
    /// Please enter a valid city.
    internal static let invalidCity = L10n.tr("Localizable", "error.invalidCity", fallback: "Please enter a valid city.")
    /// Sorry, this doesn't look like a valid email.
    internal static let invalidEmail = L10n.tr("Localizable", "error.invalidEmail", fallback: "Sorry, this doesn't look like a valid email.")
    /// Please enter a valid name.
    internal static let invalidName = L10n.tr("Localizable", "error.invalidName", fallback: "Please enter a valid name.")
    /// Please enter your state as a two letter abbreviation.
    internal static let invalidState = L10n.tr("Localizable", "error.invalidState", fallback: "Please enter your state as a two letter abbreviation.")
    /// Please enter a valid zip code.
    internal static let invalidZip = L10n.tr("Localizable", "error.invalidZip", fallback: "Please enter a valid zip code.")
    /// Sorry, we are unable to process your order right now. Please try again later.
    internal static let orderProcessing = L10n.tr("Localizable", "error.orderProcessing", fallback: "Sorry, we are unable to process your order right now. Please try again later.")
    /// Unable to connect to server. Please ensure that your server and database are running and try again.
    internal static let unableToConnect = L10n.tr("Localizable", "error.unableToConnect", fallback: "Unable to connect to server. Please ensure that your server and database are running and try again.")
  }
  internal enum Home {
    internal enum Menu {
      /// Display setting
      internal static let displaySection = L10n.tr("Localizable", "home.menu.displaySection", fallback: "Display setting")
      /// Grid
      internal static let gridButton = L10n.tr("Localizable", "home.menu.gridButton", fallback: "Grid")
      /// Rows
      internal static let rowsButton = L10n.tr("Localizable", "home.menu.rowsButton", fallback: "Rows")
      /// Sort products
      internal static let sortSection = L10n.tr("Localizable", "home.menu.sortSection", fallback: "Sort products")
    }
  }
  internal enum Label {
    /// Address
    internal static let address = L10n.tr("Localizable", "label.address", fallback: "Address")
    /// City
    internal static let city = L10n.tr("Localizable", "label.city", fallback: "City")
    /// Email
    internal static let email = L10n.tr("Localizable", "label.email", fallback: "Email")
    /// Name
    internal static let name = L10n.tr("Localizable", "label.name", fallback: "Name")
    /// State
    internal static let state = L10n.tr("Localizable", "label.state", fallback: "State")
    /// Zip Code
    internal static let zip = L10n.tr("Localizable", "label.zip", fallback: "Zip Code")
  }
  internal enum Landing {
    /// Stylish, high-quality products that are designed to last
    internal static let text = L10n.tr("Localizable", "landing.text", fallback: "Stylish, high-quality products that are designed to last")
    /// Fashion at your fingertips
    internal static let title = L10n.tr("Localizable", "landing.title", fallback: "Fashion at your fingertips")
  }
  internal enum OrderConfirmation {
    /// Thanks for shopping with us, %@. We'll send a confirmation email when your order has shipped.
    internal static func message(_ p1: Any) -> String {
      return L10n.tr("Localizable", "orderConfirmation.message", String(describing: p1), fallback: "Thanks for shopping with us, %@. We'll send a confirmation email when your order has shipped.")
    }
    /// Order Date
    internal static let orderDate = L10n.tr("Localizable", "orderConfirmation.orderDate", fallback: "Order Date")
    /// Order number
    internal static let orderNumber = L10n.tr("Localizable", "orderConfirmation.orderNumber", fallback: "Order number")
    /// Thank you!
    internal static let thankYou = L10n.tr("Localizable", "orderConfirmation.thankYou", fallback: "Thank you!")
  }
  internal enum OrderForm {
    /// Payment
    internal static let payment = L10n.tr("Localizable", "orderForm.payment", fallback: "Payment")
    /// Checkout
    internal static let title = L10n.tr("Localizable", "orderForm.title", fallback: "Checkout")
  }
  internal enum Placeholder {
    /// 1 Apple Park Way
    internal static let address = L10n.tr("Localizable", "placeholder.address", fallback: "1 Apple Park Way")
    /// ••••• 2547
    internal static let ccNumber = L10n.tr("Localizable", "placeholder.ccNumber", fallback: "••••• 2547")
    /// Cupertino
    internal static let city = L10n.tr("Localizable", "placeholder.city", fallback: "Cupertino")
    /// john@email.com
    internal static let email = L10n.tr("Localizable", "placeholder.email", fallback: "john@email.com")
    /// 08/27
    internal static let expDate = L10n.tr("Localizable", "placeholder.expDate", fallback: "08/27")
    /// John Smith
    internal static let name = L10n.tr("Localizable", "placeholder.name", fallback: "John Smith")
    /// CA
    internal static let state = L10n.tr("Localizable", "placeholder.state", fallback: "CA")
    /// 95014
    internal static let zip = L10n.tr("Localizable", "placeholder.zip", fallback: "95014")
  }
  internal enum ProductView {
    /// Color
    internal static let color = L10n.tr("Localizable", "productView.color", fallback: "Color")
    /// Description
    internal static let description = L10n.tr("Localizable", "productView.description", fallback: "Description")
    /// Size
    internal static let size = L10n.tr("Localizable", "productView.size", fallback: "Size")
    /// Product Details
    internal static let title = L10n.tr("Localizable", "productView.title", fallback: "Product Details")
  }
  internal enum Sfs {
    /// xmark
    internal static let cancel = L10n.tr("Localizable", "sfs.cancel", fallback: "xmark")
    /// cart
    internal static let cart = L10n.tr("Localizable", "sfs.cart", fallback: "cart")
    /// creditcard
    internal static let creditCard = L10n.tr("Localizable", "sfs.creditCard", fallback: "creditcard")
    /// house
    internal static let house = L10n.tr("Localizable", "sfs.house", fallback: "house")
    /// minus
    internal static let minus = L10n.tr("Localizable", "sfs.minus", fallback: "minus")
    /// plus
    internal static let plus = L10n.tr("Localizable", "sfs.plus", fallback: "plus")
    /// slider.horizontal.3
    internal static let settings = L10n.tr("Localizable", "sfs.settings", fallback: "slider.horizontal.3")
  }
  internal enum Sidebar {
    /// Categories
    internal static let categories = L10n.tr("Localizable", "sidebar.categories", fallback: "Categories")
  }
  internal enum Tab {
    /// Cart
    internal static let cart = L10n.tr("Localizable", "tab.cart", fallback: "Cart")
    /// Home
    internal static let home = L10n.tr("Localizable", "tab.home", fallback: "Home")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
