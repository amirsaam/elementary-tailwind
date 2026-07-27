import Elementary

/// Controls the CSS `text-align` property.
public enum TWTTextAlign: String, TWToken, Sendable, Equatable, CaseIterable {
    case left = "text-left"
    case center = "text-center"
    case right = "text-right"
    case justify = "text-justify"
    case start = "text-start"
    case end = "text-end"
}

/// Controls the CSS `color` property.
public struct TWTTextColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity { rawValue = "text-\(color.rawValue)/\(opacity)" }
        else { rawValue = "text-\(color.rawValue)" }
    }
}

/// Controls the CSS `text-decoration` property.
public enum TWTTextDecoration: String, TWToken, Sendable, Equatable, CaseIterable {
    case underline = "underline"
    case overline = "overline"
    case lineThrough = "line-through"
    case noUnderline = "no-underline"
}

/// Controls the CSS `text-overflow` property.
public enum TWTTextOverflow: String, TWToken, Sendable, Equatable, CaseIterable {
    case truncate = "truncate"
    case ellipsis = "text-ellipsis"
    case clip = "text-clip"
}

/// Controls the CSS `text-transform` property.
public enum TWTTextTransform: String, TWToken, Sendable, Equatable, CaseIterable {
    case uppercase = "uppercase"
    case lowercase = "lowercase"
    case capitalize = "capitalize"
    case normalCase = "normal-case"
}

/// Controls the CSS `text-wrap` property.
public enum TWTTextWrap: String, TWToken, Sendable, Equatable, CaseIterable {
    case wrap = "wrap"
    case nowrap = "text-nowrap"
    case balance = "text-balance"
    case pretty = "text-pretty"
}
