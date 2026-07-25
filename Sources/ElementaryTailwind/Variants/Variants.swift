import Elementary

// MARK: - Convenience Extensions

public extension TWToken {
    /// Wraps this token in a `Hover` variant.
    var hover: Hover<Self> { Hover(base: self) }
    /// Wraps this token in a `Focus` variant.
    var focus: Focus<Self> { Focus(base: self) }
    /// Wraps this token in a `FocusWithin` variant.
    var focusWithin: FocusWithin<Self> { FocusWithin(base: self) }
    /// Wraps this token in a `FocusVisible` variant.
    var focusVisible: FocusVisible<Self> { FocusVisible(base: self) }
    /// Wraps this token in an `Active` variant.
    var active: Active<Self> { Active(base: self) }
    /// Wraps this token in a `Visited` variant.
    var visited: Visited<Self> { Visited(base: self) }
    /// Wraps this token in a `Disabled` variant.
    var disabled: Disabled<Self> { Disabled(base: self) }
    /// Wraps this token in an `Invalid` variant.
    var isInvalid: Invalid<Self> { Invalid(base: self) }
    /// Wraps this token in a `Valid` variant.
    var isValid: Valid<Self> { Valid(base: self) }
    /// Wraps this token in a `ReadOnly` variant.
    var readOnly: ReadOnly<Self> { ReadOnly(base: self) }
    /// Wraps this token in a `Checked` variant.
    var checked: Checked<Self> { Checked(base: self) }
    /// Wraps this token in an `Indeterminate` variant.
    var indeterminate: Indeterminate<Self> { Indeterminate(base: self) }
    /// Wraps this token in a `Placeholder` variant.
    var placeholder: Placeholder<Self> { Placeholder(base: self) }
    /// Wraps this token in a `First` variant.
    var first: First<Self> { First(base: self) }
    /// Wraps this token in a `Last` variant.
    var last: Last<Self> { Last(base: self) }
    /// Wraps this token in an `Odd` variant.
    var odd: Odd<Self> { Odd(base: self) }
    /// Wraps this token in an `Even` variant.
    var even: Even<Self> { Even(base: self) }
    /// Wraps this token in an `Empty` variant.
    var isEmpty: Empty<Self> { Empty(base: self) }
    /// Wraps this token in a `Dark` variant.
    var dark: Dark<Self> { Dark(base: self) }
    /// Wraps this token in a `Print` variant.
    var `print`: Print<Self> { Print(base: self) }
    /// Wraps this token in a `ContainerQuery` variant.
    var containerQuery: ContainerQuery<Self> { ContainerQuery(base: self) }
    /// Wraps this token in a named `ContainerQuery` variant.
    func containerQuery(named name: String) -> NamedContainerQuery<Self> {
        NamedContainerQuery(name: name, base: self)
    }
    /// Wraps this token in a `GroupHover` variant.
    var groupHover: GroupHover<Self> { GroupHover(base: self) }
    /// Wraps this token in a `GroupFocus` variant.
    var groupFocus: GroupFocus<Self> { GroupFocus(base: self) }
    /// Wraps this token in a `PeerHover` variant.
    var peerHover: PeerHover<Self> { PeerHover(base: self) }
    /// Wraps this token in a `PeerFocus` variant.
    var peerFocus: PeerFocus<Self> { PeerFocus(base: self) }
    /// Wraps this token in a `PeerChecked` variant.
    var peerChecked: PeerChecked<Self> { PeerChecked(base: self) }
    /// Wraps this token in a `PeerInvalid` variant.
    var peerInvalid: PeerInvalid<Self> { PeerInvalid(base: self) }
    /// Wraps this token in a `Selection` variant.
    var selection: Selection<Self> { Selection(base: self) }

    // Responsive
    /// Wraps this token in a `Responsive` variant for the `sm` breakpoint.
    var sm: Responsive<Self> { Responsive(breakpoint: .sm, base: self) }
    /// Wraps this token in a `Responsive` variant for the `md` breakpoint.
    var md: Responsive<Self> { Responsive(breakpoint: .md, base: self) }
    /// Wraps this token in a `Responsive` variant for the `lg` breakpoint.
    var lg: Responsive<Self> { Responsive(breakpoint: .lg, base: self) }
    /// Wraps this token in a `Responsive` variant for the `xl` breakpoint.
    var xl: Responsive<Self> { Responsive(breakpoint: .xl, base: self) }
    /// Wraps this token in a `Responsive` variant for the `2xl` breakpoint.
    var xxl: Responsive<Self> { Responsive(breakpoint: .xxl, base: self) }

    // Max-width responsive
    /// Wraps this token in a `MaxResponsive` variant for the `sm` breakpoint.
    var maxSm: MaxResponsive<Self> { MaxResponsive(breakpoint: .sm, base: self) }
    /// Wraps this token in a `MaxResponsive` variant for the `md` breakpoint.
    var maxMd: MaxResponsive<Self> { MaxResponsive(breakpoint: .md, base: self) }
    /// Wraps this token in a `MaxResponsive` variant for the `lg` breakpoint.
    var maxLg: MaxResponsive<Self> { MaxResponsive(breakpoint: .lg, base: self) }
    /// Wraps this token in a `MaxResponsive` variant for the `xl` breakpoint.
    var maxXl: MaxResponsive<Self> { MaxResponsive(breakpoint: .xl, base: self) }
    /// Wraps this token in a `MaxResponsive` variant for the `2xl` breakpoint.
    var maxXxl: MaxResponsive<Self> { MaxResponsive(breakpoint: .xxl, base: self) }
}
