// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal static let accentColor = ColorAsset(name: "AccentColor")
  internal enum Bottoms {
    internal static let fittedpants5F86A1 = ImageAsset(name: "fittedpants-5F86A1")
    internal static let fittedpants9368C9 = ImageAsset(name: "fittedpants-9368C9")
    internal static let pants496998 = ImageAsset(name: "pants-496998")
    internal static let pants4AA483 = ImageAsset(name: "pants-4AA483")
    internal static let pants555D68 = ImageAsset(name: "pants-555D68")
    internal static let pants5E563C = ImageAsset(name: "pants-5E563C")
    internal static let shorts455E55 = ImageAsset(name: "shorts-455E55")
    internal static let shorts8D746F = ImageAsset(name: "shorts-8D746F")
    internal static let stripedpants2B5853 = ImageAsset(name: "stripedpants-2B5853")
    internal static let stripedpants314077 = ImageAsset(name: "stripedpants-314077")
    internal static let stripedpantsAD2020 = ImageAsset(name: "stripedpants-AD2020")
    internal static let sweatpants3DBADA = ImageAsset(name: "sweatpants-3DBADA")
    internal static let sweatpants82D67D = ImageAsset(name: "sweatpants-82D67D")
    internal static let sweatpantsCC9461 = ImageAsset(name: "sweatpants-CC9461")
    internal static let swimmingshorts3EBBD8 = ImageAsset(name: "swimmingshorts-3EBBD8")
    internal static let swimmingshortsD83E63 = ImageAsset(name: "swimmingshorts-D83E63")
  }
  internal enum Dresses {
    internal static let cocktaildress497673 = ImageAsset(name: "cocktaildress-497673")
    internal static let cocktaildress4F58A1 = ImageAsset(name: "cocktaildress-4F58A1")
    internal static let cocktaildressCB525F = ImageAsset(name: "cocktaildress-CB525F")
    internal static let dress3DBADA = ImageAsset(name: "dress-3DBADA")
    internal static let dressE0E0E0 = ImageAsset(name: "dress-E0E0E0")
    internal static let dressFB9C87 = ImageAsset(name: "dress-FB9C87")
    internal static let longsleevedress94A5FF = ImageAsset(name: "longsleevedress-94A5FF")
    internal static let longsleevedressFFD53E = ImageAsset(name: "longsleevedress-FFD53E")
    internal static let sundress4EC67C = ImageAsset(name: "sundress-4EC67C")
    internal static let sundressFFD53E = ImageAsset(name: "sundress-FFD53E")
  }
  internal enum Footwear {
    internal static let boots4EC67C = ImageAsset(name: "boots-4EC67C")
    internal static let boots93522C = ImageAsset(name: "boots-93522C")
    internal static let dressshoes593B20 = ImageAsset(name: "dressshoes-593B20")
    internal static let heels3A3E99 = ImageAsset(name: "heels-3A3E99")
    internal static let heelsB42837 = ImageAsset(name: "heels-B42837")
    internal static let lowtops215DB8 = ImageAsset(name: "lowtops-215DB8")
    internal static let lowtops57C983 = ImageAsset(name: "lowtops-57C983")
    internal static let lowtops9251E3 = ImageAsset(name: "lowtops-9251E3")
    internal static let rainboots3DBADA = ImageAsset(name: "rainboots-3DBADA")
    internal static let rainbootsC94FCC = ImageAsset(name: "rainboots-C94FCC")
    internal static let rainbootsEE5D3D = ImageAsset(name: "rainboots-EE5D3D")
    internal static let rainbootsFFD53E = ImageAsset(name: "rainboots-FFD53E")
    internal static let runningshoes9666C6 = ImageAsset(name: "runningshoes-9666C6")
    internal static let runningshoes9AD7B6 = ImageAsset(name: "runningshoes-9AD7B6")
    internal static let runningshoesCC4F60 = ImageAsset(name: "runningshoes-CC4F60")
    internal static let sandal94EA76 = ImageAsset(name: "sandal-94EA76")
    internal static let sandalFE800C = ImageAsset(name: "sandal-FE800C")
    internal static let sandalFFD53E = ImageAsset(name: "sandal-FFD53E")
    internal static let sneakers5C5858 = ImageAsset(name: "sneakers-5C5858")
    internal static let sneakers783434 = ImageAsset(name: "sneakers-783434")
  }
  internal enum Tops {
    internal static let atheletictank303030 = ImageAsset(name: "atheletictank-303030")
    internal static let atheletictank4EC67C = ImageAsset(name: "atheletictank-4EC67C")
    internal static let atheletictank6D4EC6 = ImageAsset(name: "atheletictank-6D4EC6")
    internal static let atheletictankFE800C = ImageAsset(name: "atheletictank-FE800C")
    internal static let jersey4F72CC = ImageAsset(name: "jersey-4F72CC")
    internal static let jersey661A24 = ImageAsset(name: "jersey-661A24")
    internal static let jerseyC94FCC = ImageAsset(name: "jersey-C94FCC")
    internal static let jerseyCC4F60 = ImageAsset(name: "jersey-CC4F60")
    internal static let polo44464A = ImageAsset(name: "polo-44464A")
    internal static let polo4EC67C = ImageAsset(name: "polo-4EC67C")
    internal static let signaturepolo526594 = ImageAsset(name: "signaturepolo-526594")
    internal static let signaturepolo65676C = ImageAsset(name: "signaturepolo-65676C")
    internal static let sweater7EE288 = ImageAsset(name: "sweater-7EE288")
    internal static let sweaterCC4F60 = ImageAsset(name: "sweater-CC4F60")
    internal static let tanktop3DBADA = ImageAsset(name: "tanktop-3DBADA")
    internal static let tanktop4EC67C = ImageAsset(name: "tanktop-4EC67C")
    internal static let tanktopFDD54F = ImageAsset(name: "tanktop-FDD54F")
    internal static let tshirt35455E = ImageAsset(name: "tshirt-35455E")
    internal static let tshirt9E8A8A = ImageAsset(name: "tshirt-9E8A8A")
    internal static let tshirtFC9C5E = ImageAsset(name: "tshirt-FC9C5E")
    internal static let turtleneck65676C = ImageAsset(name: "turtleneck-65676C")
    internal static let turtleneck745EFC = ImageAsset(name: "turtleneck-745EFC")
    internal static let turtleneckCAC8D8 = ImageAsset(name: "turtleneck-CAC8D8")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal private(set) lazy var swiftUIColor: SwiftUI.Color = {
    SwiftUI.Color(asset: self)
  }()
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Color {
  init(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  internal func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

internal extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

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
