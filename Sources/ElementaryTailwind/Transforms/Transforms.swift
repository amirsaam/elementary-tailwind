import Elementary

extension MarkupAttribute {
    /// Scales the element along the X and Y axes.
    /// Produces `scale-*` classes (e.g. `scale-50`, `scale-100`, `scale-150`).
    public static func scale(_ value: TWTScale, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Rotates the element clockwise or counterclockwise.
    /// Produces `rotate-*` classes (e.g. `rotate-0`, `rotate-45`, `rotate-90`).
    public static func rotate(_ value: TWTRotate, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Moves the element along the X and Y axes.
    /// Produces `translate-*` classes (e.g. `translate-x-4`, `translate-y-8`, `translate-x-full`).
    public static func translate(_ value: TWTTranslate, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Tilts the element along the X and Y axes.
    /// Produces `skew-*` classes (e.g. `skew-x-3`, `skew-y-6`, `skew-x-12`).
    public static func skew(_ value: TWTSkew, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Resets or enables CSS transforms on the element.
    /// Produces `transform` or `transform-none` classes.
    public static func transform(_ value: TWTTransform, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the origin point for CSS transforms.
    /// Produces `origin-*` classes (e.g. `origin-center`, `origin-top-left`, `origin-bottom-right`).
    public static func transformOrigin(
        _ value: TWTTransformOrigin,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the distance from the viewer to the element for 3D transforms.
    /// Produces `perspective-*` classes (e.g. `perspective-normal`, `perspective-near`, `perspective-distant`).
    public static func perspective(_ value: TWTPerspective, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the vanishing point for 3D perspective transforms.
    /// Produces `perspective-origin-*` classes (e.g. `perspective-origin-center`, `perspective-origin-top-left`).
    public static func perspectiveOrigin(
        _ value: TWTPerspectiveOrigin,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls whether the back face of a 3D-transformed element is visible.
    /// Produces `backface-*` classes (e.g. `backface-visible`, `backface-hidden`).
    public static func backfaceVisibility(
        _ value: TWTBackfaceVisibility,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether nested elements are positioned in 3D space or flattened.
    /// Produces `transform-*` classes (e.g. `transform-3d`, `transform-flat`).
    public static func transformStyle(
        _ value: TWTTransformStyle,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Scales the element visually without affecting layout.
    /// Produces `zoom-*` classes (e.g. `zoom-in`, `zoom-out`, `zoom-50`).
    public static func zoom(_ value: TWTZoom, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
