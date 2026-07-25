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
}
