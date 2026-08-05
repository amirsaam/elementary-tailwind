import Elementary

extension MarkupAttribute {
    /// Adds a shadow effect around the element.
    /// Produces `shadow-*` classes (e.g. `shadow-md`, `shadow-lg`, `shadow-xl`).
    public static func boxShadow(_ value: TWTBoxShadow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the color of the box shadow.
    /// Produces `shadow-*` classes with opacity (e.g. `shadow-blue-500/50`, `shadow-black/30`).
    public static func boxShadowColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWTBoxShadowColor(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adds an inset shadow effect inside the element.
    /// Produces `inset-shadow-*` classes (e.g. `inset-shadow-2xs`, `inset-shadow-sm`).
    public static func insetShadow(_ value: TWTInsetShadow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the transparency level of the element.
    /// Produces `opacity-*` classes (e.g. `opacity-50`, `opacity-100`, `opacity-0`).
    public static func opacity(_ value: TWTOpacity, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how the element's content blends with its background.
    /// Produces `mix-blend-*` classes (e.g. `mix-blend-multiply`, `mix-blend-screen`, `mix-blend-overlay`).
    public static func mixBlendMode(_ value: TWMixBlendMode, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how the element's background blends with its content.
    /// Produces `bg-blend-*` classes (e.g. `bg-blend-multiply`, `bg-blend-screen`, `bg-blend-overlay`).
    public static func backgroundBlendMode(
        _ value: TWTBackgroundBlendMode,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adds a shadow effect behind the text.
    /// Produces `text-shadow-*` classes (e.g. `text-shadow-xs`, `text-shadow-sm`, `text-shadow-md`, `text-shadow-lg`).
    public static func textShadow(_ value: TWTTextShadow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets which parts of the element are revealed by the mask.
    /// Produces `mask-clip-*` classes (e.g. `mask-clip-border`, `mask-clip-text`, `mask-clip-content`).
    public static func maskClip(_ value: TWTMaskClip, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how multiple masks are combined.
    /// Produces `mask-composite-*` classes (e.g. `mask-composite-add`, `mask-composite-subtract`, `mask-composite-intersect`).
    public static func maskComposite(_ value: TWTMaskComposite, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the image used as the mask.
    /// Produces `mask-*` classes (e.g. `mask-none`, `mask-image-*`).
    public static func maskImage(_ value: TWTMaskImage, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether the mask uses the alpha channel or luminance.
    /// Produces `mask-mode-*` classes (e.g. `mask-mode-alpha`, `mask-mode-luminance`, `mask-mode-match`).
    public static func maskMode(_ value: TWTMaskMode, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the coordinate system for the mask position.
    /// Produces `mask-origin-*` classes (e.g. `mask-origin-border`, `mask-origin-padding`, `mask-origin-content`).
    public static func maskOrigin(_ value: TWTMaskOrigin, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the position of the mask image.
    /// Produces `mask-*` classes (e.g. `mask-center`, `mask-top`, `mask-left`).
    public static func maskPosition(_ value: TWTMaskPosition, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how the mask image repeats.
    /// Produces `mask-repeat-*` classes (e.g. `mask-no-repeat`, `mask-repeat-x`, `mask-repeat-y`).
    public static func maskRepeat(_ value: TWTMaskRepeat, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the size of the mask image.
    /// Produces `mask-size-*` classes (e.g. `mask-size-auto`, `mask-size-cover`, `mask-size-contain`).
    public static func maskSize(_ value: TWTMaskSize, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether the mask treats the image as a luminance or alpha mask.
    /// Produces `mask-type-*` classes (e.g. `mask-type-alpha`, `mask-type-luminance`).
    public static func maskType(_ value: TWTMaskType, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
