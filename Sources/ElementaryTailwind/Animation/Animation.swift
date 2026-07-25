import Elementary

extension MarkupAttribute {
    /// Sets the CSS `animation` property.
    public static func animation(_ value: TWTAnimation, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
