import Elementary

extension MarkupAttribute {
    /// Sets which CSS properties animate when their values change.
    /// Produces `transition-*` classes (e.g. `transition`, `transition-colors`, `transition-none`).
    public static func transition(
        _ value: TWTTransitionProperty,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how long the CSS transition takes to complete.
    /// Produces `duration-*` classes (e.g. `duration-300`, `duration-1000`).
    public static func transitionDuration(
        _ value: TWTTransitionDuration,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the speed curve of the CSS transition.
    /// Produces `ease-*` classes (e.g. `ease-linear`, `ease-in-out`, `ease-out`).
    public static func transitionTimingFunction(
        _ value: TWTTransitionTimingFunction,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how long to wait before the CSS transition starts.
    /// Produces `delay-*` classes (e.g. `delay-150`, `delay-500`).
    public static func transitionDelay(
        _ value: TWTTransitionDelay,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether the transition animates discrete properties (e.g. `display`).
    /// Produces `transition-*` classes (e.g. `transition-discrete`, `transition-normal`).
    public static func transitionBehavior(
        _ value: TWTTransitionBehavior,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
