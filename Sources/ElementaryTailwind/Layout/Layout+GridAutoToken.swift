import Elementary

/// Controls the CSS `grid-auto-flow` property.
public enum TWTGridAutoFlow: String, TWToken, Sendable, Equatable, CaseIterable {
    case row = "grid-flow-row"
    case column = "grid-flow-col"
    case dense = "grid-flow-dense"
    case rowDense = "grid-flow-row-dense"
    case columnDense = "grid-flow-col-dense"
}

/// Controls the CSS `grid-auto-columns` property.
public enum TWTGridAutoColumns: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "auto-cols-auto"
    case smallest = "auto-cols-min"
    case smallestContent = "auto-cols-min-content"
    case largest = "auto-cols-max"
    case largestContent = "auto-cols-max-content"
    case fractional = "auto-cols-fr"
}

/// Controls the CSS `grid-auto-rows` property.
public enum TWTGridAutoRows: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "auto-rows-auto"
    case smallest = "auto-rows-min"
    case smallestContent = "auto-rows-min-content"
    case largest = "auto-rows-max"
    case largestContent = "auto-rows-max-content"
    case fractional = "auto-rows-fr"
}
