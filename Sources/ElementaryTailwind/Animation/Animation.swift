import Elementary

extension MarkupAttribute {
    /// Applies a CSS animation to the element.
    /// Produces `animate-*` classes (e.g. `animate-spin`, `animate-pulse`, `animate-bounce`).
    public static func animation(_ value: TWTAnimation, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
