import Elementary

extension MarkupAttribute {
    /// Sets the background color of the element.
    /// Produces `bg-*` classes (e.g. `bg-blue-500`, `bg-red-600/50`).
    public static func backgroundColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWTBackgroundColor(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how the background image scrolls with the element.
    /// Produces `bg-*` classes (e.g. `bg-fixed`, `bg-scroll`, `bg-local`).
    public static func backgroundAttachment(
        _ value: TWTBackgroundAttachment,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls which area of the element the background color or image fills.
    /// Produces `bg-clip-*` classes (e.g. `bg-clip-border`, `bg-clip-text`).
    public static func backgroundClip(
        _ value: TWTBackgroundClip,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the positioning area for the background image.
    /// Produces `bg-origin-*` classes (e.g. `bg-origin-border`, `bg-origin-content`).
    public static func backgroundOrigin(
        _ value: TWTBackgroundOrigin,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls how the background image repeats.
    /// Produces `bg-repeat-*` classes (e.g. `bg-repeat`, `bg-no-repeat`, `bg-repeat-x`).
    public static func backgroundRepeat(
        _ value: TWTBackgroundRepeat,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the background image of the element.
    /// Produces `bg-*` classes (e.g. `bg-none`, `bg-gradient-to-r`).
    public static func backgroundImage(
        _ value: TWTBackgroundImage,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the size of the background image.
    /// Produces `bg-*` classes (e.g. `bg-auto`, `bg-cover`, `bg-contain`).
    public static func backgroundSize(
        _ value: TWTBackgroundSize,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the starting position of the background image.
    /// Produces `bg-*` classes (e.g. `bg-center`, `bg-top`, `bg-right-top`).
    public static func backgroundPosition(
        _ value: TWTBackgroundPosition,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the direction of the background gradient.
    /// Produces `bg-gradient-*` classes (e.g. `bg-gradient-to-r`, `bg-gradient-to-b`).
    public static func gradientToDirection(
        _ value: TWTGradientToDirection,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the starting color stop in a background gradient.
    /// Produces `from-*` classes (e.g. `from-blue-500`, `from-red-600/50`).
    public static func gradientFromColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWTGradientFromColor(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the middle color stop in a three-stop background gradient.
    /// Produces `via-*` classes (e.g. `via-green-500`, `via-yellow-600/50`).
    public static func gradientViaColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWTGradientViaColor(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the ending color stop in a background gradient.
    /// Produces `to-*` classes (e.g. `to-purple-500`, `to-indigo-600/50`).
    public static func gradientToColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWTGradientToColor(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
