/// A Tailwind CSS color palette with optional shade.
///
/// Used by background, text, border, ring, and other color utilities.
///
/// **Example:**
/// ```swift
/// .backgroundColor(.blue, shade: 600)   // → "bg-blue-600"
/// .textColor(.gray, shade: 200)          // → "text-gray-200"
/// ```
public struct TWColor: Sendable, Equatable, Hashable {
    /// The color palette name (e.g. "blue", "gray", "red").
    public let palette: String
    /// The shade value (50–950), or nil for the palette base.
    public let shade: Int?

    public init(_ palette: String, _ shade: Int? = nil) {
        self.palette = palette
        self.shade = shade
    }

    /// Returns the Tailwind color string (e.g. "blue-600", "gray").
    public var rawValue: String {
        guard let shade else { return palette }
        return "\(palette)-\(shade)"
    }

    // MARK: - Standard Palettes

    public static let white = TWColor("white")
    public static let black = TWColor("black")
    public static let transparent = TWColor("transparent")
    public static let slate = TWColor("slate")
    public static let gray = TWColor("gray")
    public static let zinc = TWColor("zinc")
    public static let neutral = TWColor("neutral")
    public static let stone = TWColor("stone")
    public static let red = TWColor("red")
    public static let orange = TWColor("orange")
    public static let amber = TWColor("amber")
    public static let yellow = TWColor("yellow")
    public static let lime = TWColor("lime")
    public static let green = TWColor("green")
    public static let emerald = TWColor("emerald")
    public static let teal = TWColor("teal")
    public static let cyan = TWColor("cyan")
    public static let sky = TWColor("sky")
    public static let blue = TWColor("blue")
    public static let indigo = TWColor("indigo")
    public static let violet = TWColor("violet")
    public static let purple = TWColor("purple")
    public static let fuchsia = TWColor("fuchsia")
    public static let pink = TWColor("pink")
    public static let rose = TWColor("rose")

    // MARK: - Shade Accessors

    public func shade(_ value: Int) -> TWColor {
        TWColor(palette, value)
    }
}
