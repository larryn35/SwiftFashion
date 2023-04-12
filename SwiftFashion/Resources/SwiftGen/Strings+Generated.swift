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
  internal enum Sfs {
    /// slider.horizontal.3
    internal static let settings = L10n.tr("Localizable", "sfs.settings", fallback: "slider.horizontal.3")
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
