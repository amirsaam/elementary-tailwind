import Elementary

extension MarkupAttribute {
    /// Applies a Gaussian blur to the element.
    /// Produces `blur-*` classes (e.g. `blur-sm`, `blur`, `blur-lg`, `blur-2xl`).
    public static func blur(_ value: TWTBlur, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adjusts the brightness of the element.
    /// Produces `brightness-*` classes (e.g. `brightness-0`, `brightness-50`, `brightness-100`).
    public static func brightness(_ value: TWTBrightness, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adjusts the contrast of the element.
    /// Produces `contrast-*` classes (e.g. `contrast-0`, `contrast-50`, `contrast-100`).
    public static func contrast(_ value: TWTContrast, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adds a drop shadow filter to the element.
    /// Produces `drop-shadow-*` classes (e.g. `drop-shadow-sm`, `drop-shadow`, `drop-shadow-lg`).
    public static func dropShadow(_ value: TWTDropShadow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Converts the element to grayscale.
    /// Produces `grayscale-*` classes (e.g. `grayscale-0`, `grayscale`).
    public static func grayscale(_ value: TWTGrayscale, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Rotates the hue of the element.
    /// Produces `hue-rotate-*` classes (e.g. `hue-rotate-0`, `hue-rotate-30`, `hue-rotate-90`).
    public static func hueRotate(_ value: TWTHueRotate, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Inverts the colors of the element.
    /// Produces `invert-*` classes (e.g. `invert-0`, `invert`).
    public static func invert(_ value: TWTInvert, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adjusts the color saturation of the element.
    /// Produces `saturate-*` classes (e.g. `saturate-0`, `saturate-50`, `saturate-100`).
    public static func saturate(_ value: TWTSaturate, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Applies a sepia tone to the element.
    /// Produces `sepia-*` classes (e.g. `sepia-0`, `sepia`).
    public static func sepia(_ value: TWTSepia, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Applies a Gaussian blur to the area behind the element.
    /// Produces `backdrop-blur-*` classes (e.g. `backdrop-blur-sm`, `backdrop-blur`, `backdrop-blur-lg`).
    public static func backdropBlur(_ value: TWTBackdropBlur, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adjusts the brightness of the area behind the element.
    /// Produces `backdrop-brightness-*` classes (e.g. `backdrop-brightness-0`, `backdrop-brightness-50`).
    public static func backdropBrightness(
        _ value: TWTBackdropBrightness,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adjusts the contrast of the area behind the element.
    /// Produces `backdrop-contrast-*` classes (e.g. `backdrop-contrast-0`, `backdrop-contrast-50`).
    public static func backdropContrast(
        _ value: TWTBackdropContrast,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Converts the area behind the element to grayscale.
    /// Produces `backdrop-grayscale-*` classes (e.g. `backdrop-grayscale-0`, `backdrop-grayscale`).
    public static func backdropGrayscale(
        _ value: TWTBackdropGrayscale,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Rotates the hue of the area behind the element.
    /// Produces `backdrop-hue-rotate-*` classes (e.g. `backdrop-hue-rotate-0`, `backdrop-hue-rotate-30`).
    public static func backdropHueRotate(
        _ value: TWTBackdropHueRotate,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Inverts the colors of the area behind the element.
    /// Produces `backdrop-invert-*` classes (e.g. `backdrop-invert-0`, `backdrop-invert`).
    public static func backdropInvert(
        _ value: TWTBackdropInvert,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adjusts the transparency of the area behind the element.
    /// Produces `backdrop-opacity-*` classes (e.g. `backdrop-opacity-0`, `backdrop-opacity-50`).
    public static func backdropOpacity(
        _ value: TWTBackdropOpacity,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adjusts the color saturation of the area behind the element.
    /// Produces `backdrop-saturate-*` classes (e.g. `backdrop-saturate-0`, `backdrop-saturate-50`).
    public static func backdropSaturate(
        _ value: TWTBackdropSaturate,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Applies a sepia tone to the area behind the element.
    /// Produces `backdrop-sepia-*` classes (e.g. `backdrop-sepia-0`, `backdrop-sepia`).
    public static func backdropSepia(_ value: TWTBackdropSepia, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
