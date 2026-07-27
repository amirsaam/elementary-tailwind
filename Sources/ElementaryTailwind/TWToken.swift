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

// MARK: - Formatting

/// Formats a numeric value for Tailwind CSS class output.
///
/// Whole numbers are rendered without a decimal point (`4.0` → `"4"`).
/// Fractional values are rendered as-is (`4.5` → `"4.5"`).
func twFormat(_ n: Double) -> String {
    n.truncatingRemainder(dividingBy: 1) == 0 ? "\(Int(n))" : "\(n)"
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

    /// Creates a class attribute from a raw CSS class string with variants.
    ///
    /// Useful for applying Tailwind variants to arbitrary or project-specific classes.
    ///
    /// **Example:**
    /// ```swift
    /// div(.class("shadow-outline", variants: [.focus])) { ... }
    /// // → <div class="focus:shadow-outline">
    /// ```
    public static func `class`(_ rawValue: String, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
