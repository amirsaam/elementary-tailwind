import Elementary

/// Emits the `<script>` tag needed to install Tailwind CSS from a CDN.
///
/// - Parameter version: The Tailwind CSS version to pin. Defaults to `4.3.3`.
///
/// **Generated HTML:**
/// ```html
/// <script src="https://cdn.tailwindcss.com/4.3.3"></script>
/// ```
///
/// **Example:**
/// ```swift
/// var head: some HTML {
///     meta(.charset(.utf8))
///     setupTailwind()
/// }
/// ```
public func setupTailwind(
    version: String = "4.3.3"
) -> some HTML {
    script(.src("https://cdn.tailwindcss.com/\(version)")) {}
}
