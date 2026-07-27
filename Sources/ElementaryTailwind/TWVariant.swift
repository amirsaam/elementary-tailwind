import Elementary

/// Represents a Tailwind CSS variant that can be applied to any utility class.
public enum TWVariant: Sendable {
    // MARK: - Pseudo-Classes

    /// The `hover:` variant.
    case hover
    /// The `focus:` variant.
    case focus
    /// The `focus-within:` variant.
    case focusWithin
    /// The `focus-visible:` variant.
    case focusVisible
    /// The `active:` variant.
    case active
    /// The `visited:` variant.
    case visited
    /// The `disabled:` variant.
    case disabled
    /// The `invalid:` variant.
    case invalid
    /// The `valid:` variant.
    case valid
    /// The `read-only:` variant.
    case readOnly
    /// The `checked:` variant.
    case checked
    /// The `indeterminate:` variant.
    case indeterminate
    /// The `required:` variant.
    case required
    /// The `empty:` variant.
    case empty

    // MARK: - Pseudo-Elements

    /// The `first:` variant.
    case first
    /// The `last:` variant.
    case last
    /// The `odd:` variant.
    case odd
    /// The `even:` variant.
    case even
    /// The `placeholder:` variant.
    case placeholder
    /// The `before:` variant.
    case before
    /// The `after:` variant.
    case after
    /// The `file:` variant.
    case file
    /// The `marker:` variant.
    case marker
    /// The `selection:` variant.
    case selection

    // MARK: - Responsive

    /// The `sm:` responsive variant.
    case sm
    /// The `md:` responsive variant.
    case md
    /// The `lg:` responsive variant.
    case lg
    /// The `xl:` responsive variant.
    case xl
    /// The `2xl:` responsive variant.
    case xxl

    // MARK: - Max-Width Responsive

    /// The `max-sm:` responsive variant.
    case maxSm
    /// The `max-md:` responsive variant.
    case maxMd
    /// The `max-lg:` responsive variant.
    case maxLg
    /// The `max-xl:` responsive variant.
    case maxXl
    /// The `max-2xl:` responsive variant.
    case maxXxl

    // MARK: - Media

    /// The `dark:` variant.
    case dark
    /// The `print:` variant.
    case `print`
    /// The `@container:` variant.
    case containerQuery
    /// The `@container/name:` variant with a custom container name.
    case namedContainerQuery(String)

    // MARK: - Group

    /// The `group-hover:` variant.
    case groupHover
    /// The `group-focus:` variant.
    case groupFocus
    /// The `group-checked:` variant.
    case groupChecked
    /// The `group-disabled:` variant.
    case groupDisabled
    /// The `group-invalid:` variant.
    case groupInvalid
    /// The `group-valid:` variant.
    case groupValid
    /// The `group-open:` variant.
    case groupOpen
    /// The `group-autofill:` variant.
    case groupAutofill
    /// The `group-required:` variant.
    case groupRequired
    /// The `group-visited:` variant.
    case groupVisited
    /// The `group-placeholder:` variant.
    case groupPlaceholder
    /// The `group-target:` variant.
    case groupTarget

    // MARK: - Peer

    /// The `peer-hover:` variant.
    case peerHover
    /// The `peer-focus:` variant.
    case peerFocus
    /// The `peer-checked:` variant.
    case peerChecked
    /// The `peer-invalid:` variant.
    case peerInvalid
    /// The `peer-valid:` variant.
    case peerValid
    /// The `peer-open:` variant.
    case peerOpen
    /// The `peer-autofill:` variant.
    case peerAutofill
    /// The `peer-required:` variant.
    case peerRequired
    /// The `peer-visited:` variant.
    case peerVisited
    /// The `peer-placeholder:` variant.
    case peerPlaceholder
    /// The `peer-target:` variant.
    case peerTarget

    // MARK: - Arbitrary

    /// An arbitrary CSS selector variant (e.g. `[&>svg]`, `[data-active]`).
    case arbitrary(String)

    // MARK: - Internal

    /// Applies this variant to a raw CSS class string.
    func apply(to rawValue: String) -> String {
        switch self {
        case .hover: return "hover:\(rawValue)"
        case .focus: return "focus:\(rawValue)"
        case .focusWithin: return "focus-within:\(rawValue)"
        case .focusVisible: return "focus-visible:\(rawValue)"
        case .active: return "active:\(rawValue)"
        case .visited: return "visited:\(rawValue)"
        case .disabled: return "disabled:\(rawValue)"
        case .invalid: return "invalid:\(rawValue)"
        case .valid: return "valid:\(rawValue)"
        case .readOnly: return "read-only:\(rawValue)"
        case .checked: return "checked:\(rawValue)"
        case .indeterminate: return "indeterminate:\(rawValue)"
        case .required: return "required:\(rawValue)"
        case .empty: return "empty:\(rawValue)"

        case .first: return "first:\(rawValue)"
        case .last: return "last:\(rawValue)"
        case .odd: return "odd:\(rawValue)"
        case .even: return "even:\(rawValue)"
        case .placeholder: return "placeholder:\(rawValue)"
        case .before: return "before:\(rawValue)"
        case .after: return "after:\(rawValue)"
        case .file: return "file:\(rawValue)"
        case .marker: return "marker:\(rawValue)"
        case .selection: return "selection:\(rawValue)"

        case .sm: return "sm:\(rawValue)"
        case .md: return "md:\(rawValue)"
        case .lg: return "lg:\(rawValue)"
        case .xl: return "xl:\(rawValue)"
        case .xxl: return "2xl:\(rawValue)"

        case .maxSm: return "max-sm:\(rawValue)"
        case .maxMd: return "max-md:\(rawValue)"
        case .maxLg: return "max-lg:\(rawValue)"
        case .maxXl: return "max-xl:\(rawValue)"
        case .maxXxl: return "max-2xl:\(rawValue)"

        case .dark: return "dark:\(rawValue)"
        case .print: return "print:\(rawValue)"
        case .containerQuery: return "@container:\(rawValue)"
        case .namedContainerQuery(let name): return "@container/\(name):\(rawValue)"

        case .groupHover: return "group-hover:\(rawValue)"
        case .groupFocus: return "group-focus:\(rawValue)"
        case .groupChecked: return "group-checked:\(rawValue)"
        case .groupDisabled: return "group-disabled:\(rawValue)"
        case .groupInvalid: return "group-invalid:\(rawValue)"
        case .groupValid: return "group-valid:\(rawValue)"
        case .groupOpen: return "group-open:\(rawValue)"
        case .groupAutofill: return "group-autofill:\(rawValue)"
        case .groupRequired: return "group-required:\(rawValue)"
        case .groupVisited: return "group-visited:\(rawValue)"
        case .groupPlaceholder: return "group-placeholder:\(rawValue)"
        case .groupTarget: return "group-target:\(rawValue)"

        case .peerHover: return "peer-hover:\(rawValue)"
        case .peerFocus: return "peer-focus:\(rawValue)"
        case .peerChecked: return "peer-checked:\(rawValue)"
        case .peerInvalid: return "peer-invalid:\(rawValue)"
        case .peerValid: return "peer-valid:\(rawValue)"
        case .peerOpen: return "peer-open:\(rawValue)"
        case .peerAutofill: return "peer-autofill:\(rawValue)"
        case .peerRequired: return "peer-required:\(rawValue)"
        case .peerVisited: return "peer-visited:\(rawValue)"
        case .peerPlaceholder: return "peer-placeholder:\(rawValue)"
        case .peerTarget: return "peer-target:\(rawValue)"

        case .arbitrary(let selector): return "\(selector):\(rawValue)"
        }
    }

    /// Applies an array of variants to a raw CSS class string.
    public static func apply(_ variants: [TWVariant], to rawValue: String) -> String {
        variants.reduce(rawValue) { $1.apply(to: $0) }
    }
}
