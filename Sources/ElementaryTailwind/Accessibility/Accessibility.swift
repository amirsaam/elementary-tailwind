import Elementary

extension MarkupAttribute {
    /// Hides an element visually but keeps it accessible to screen readers.
    /// Produces `sr-*` classes (e.g. `sr-only`, `not-sr-only`).
    public static func screenReader(
        _ value: TWTScreenReader,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls whether the element's colors are automatically adjusted by the browser.
    /// Produces `forced-color-adjust-*` classes (e.g. `forced-color-adjust-auto`, `forced-color-adjust-none`).
    public static func forcedColorAdjust(
        _ value: TWTForcedColorAdjust,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
