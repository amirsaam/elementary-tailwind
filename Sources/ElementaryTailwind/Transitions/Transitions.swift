import Elementary

extension MarkupAttribute {
    /// Sets the CSS `transition-property` property.
    public static func transition(_ value: TWTTransitionProperty) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `transition-duration` property.
    public static func transitionDuration(_ value: TWTTransitionDuration) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `transition-timing-function` property.
    public static func transitionTimingFunction(_ value: TWTTransitionTimingFunction) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `transition-delay` property.
    public static func transitionDelay(_ value: TWTTransitionDelay) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `transition-behavior` property.
    public static func transitionBehavior(_ value: TWTTransitionBehavior) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
