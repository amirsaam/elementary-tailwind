import Elementary

/// A type-safe representation of a Tailwind CSS utility class.
///
/// Each `TWToken` maps to a single Tailwind CSS class string via its `rawValue`.
/// Tokens are used with convenience modifier methods to compose Tailwind utilities
///
/// **Example:**
/// ```swift
/// div(.display(.flex), .items(.center), .gap(4)) {
///     p { "Hello" }
/// }
/// ```
public protocol TWToken: Sendable {
    /// The Tailwind CSS class string this token produces.
    var rawValue: String { get }
}

// MARK: - Formatting

/// Formats a numeric value for Tailwind CSS class output.
///
/// Whole numbers are rendered without a decimal point (`4.0` → `"4"`).
/// Fractional values are rendered as-is (`1.5` → `"1.5"`).
func twFormat(_ n: Double) -> String {
    n.truncatingRemainder(dividingBy: 1) == 0 ? "\(Int(n))" : "\(n)"
}

// MARK: - Class Overload

extension MarkupAttribute {
    /// Creates a class attribute from one or more typed Tailwind tokens.
    ///
    /// Each token's `rawValue` is joined into a space-separated class string.
    /// Multiple tokens can be passed in a single call.
    ///
    /// **Example:**
    /// ```swift
    /// div(.class(TWTDisplay.flex, TWTItems.center, TWTGap.size(4))) { ... }
    /// ```
    public static func `class`(_ tokens: any TWToken...) -> Self {
        let value = tokens.map(\.rawValue).joined(separator: " ")
        return .init(name: "class", value: value, mergedBy: .appending(separatedBy: " "))
    }

    /// Creates a class attribute from a raw CSS class string with Tailwind variants.
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

// MARK: - Phantom tag for string extraction

extension HTMLTag {
    /// Phantom tag used to extract Tailwind class strings from modifier methods
    /// without an actual HTML context.
    public enum _twPhantom: HTMLTrait.Paired {
        public static let name = "_twPhantom"
    }
}

/// Extracts the Tailwind CSS class string from one or more modifier calls.
///
/// Use this to capture the output of modifier methods (`.translate()`, `.margin()`,
/// etc.) into a concrete `String` value outside of an HTML builder context.
///
/// **Example:**
/// ```swift
/// let classes = twValue(
///     .translate(.y("10"), negative: true),
///     .margin(.size(4)),
///     .text(.lg, variants: [.sm])
/// )
/// // → "-translate-y-10 m-4 sm:text-lg"
/// ```
public func twValue(_ attrs: MarkupAttribute<HTMLTag._twPhantom>...) -> String {
    attrs.compactMap(\.value).joined(separator: " ")
}
