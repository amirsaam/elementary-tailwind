import Elementary

/// A type-safe representation of a Tailwind CSS utility class.
///
/// Each `TWToken` maps to a single Tailwind CSS class string via its `rawValue`.
/// Tokens are used with the `.class()` modifier to compose Tailwind utilities
/// in a type-safe, self-documenting way.
///
/// **Example:**
/// ```swift
/// div(.display(.flex), .items(.center), .gap(4)) {
///     p { "Hello" }
/// }
/// ```
public protocol TWToken: Sendable {
    /// The Tailwind CSS class string this token represents.
    var rawValue: String { get }
}

/// Formats a numeric value for Tailwind CSS class strings.
///
/// Whole numbers are emitted without a decimal point (`4.0` → `"4"`).
/// Fractions are kept as-is (`1.5` → `"1.5"`).
func twFormat(_ n: Double) -> String {
    n.truncatingRemainder(dividingBy: 1) == 0 ? String(Int(n)) : String(n)
}

// MARK: - Class Overload

extension MarkupAttribute {
    /// Creates a class attribute from typed Tailwind tokens.
    ///
    /// Each token's `rawValue` is joined into a space-separated class string.
    /// Multiple tokens can be passed, and they coexist with raw string classes.
    ///
    /// **Example:**
    /// ```swift
    /// div(.class(TWTDisplay.flex, TWTItems.center, TWTGap.size(4))) { ... }
    /// ```
    public static func `class`(_ tokens: any TWToken...) -> Self {
        let value = tokens.map(\.rawValue).joined(separator: " ")
        return .init(name: "class", value: value, mergedBy: .appending(separatedBy: " "))
    }

    /// Creates a class attribute from a raw string with optional typed variants.
    ///
    /// Useful for combining raw Tailwind classes with variant modifiers.
    ///
    /// **Example:**
    /// ```swift
    /// div(.class("custom-class", variants: [.hover, .dark])) { ... }
    /// ```
    public static func `class`(_ rawValue: String, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
