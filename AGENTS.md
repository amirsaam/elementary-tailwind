# AGENTS.md

AI contribution guidelines for `elementary-tailwind`.

## Project

`elementary-tailwind` provides type-safe Tailwind CSS utility classes for [Elementary](https://github.com/elementary-swift/elementary). It extends the `.class()` modifier to accept typed `TWToken` values instead of raw strings, giving you IDE autocomplete, type safety, and self-documenting APIs.

Single product:
- `ElementaryTailwind` — core protocol (`TWToken`), token types for all Tailwind utility categories, variant system (hover, focus, responsive, dark mode, etc.)

### Compatibility

| ElementaryTailwind | Elementary | TailwindCSS |
| ------------------ | ---------- | ----------- |
| 0.2.xxx            | 0.8.0      | 4.3.3       |

## Dependency chain

`elementary-tailwind → elementary`

SPM resolves transitively. Do not declare `elementary` as a direct dependency in consumer `Package.swift` files.

## Commands

```bash
swift test                                         # all tests
swift test --filter LayoutTests                    # single test class
swift test --parallel                              # parallel execution
swift build --build-tests                          # CI build
swift package clean                                # stale .build fix
```

### Swift format

Config: `.swift-format` — line length 100, 4-space indent, trailing commas in collections.

```bash
swift-format lint --strict --recursive Sources/ Tests/   # local lint (strict + recursive)
swift-format format --recursive Sources/ Tests/          # auto-fix
```

CI runs `swift format lint -prs .` (different flags — CI uses `swift format`, local uses `swift-format`).

Lint must pass before committing.

## Architecture

### Source (`Sources/ElementaryTailwind/`)

16 category directories, each with:
- `<Category>.swift` — modifier methods (static methods on `MarkupAttribute`)
- `<Category>+Token.swift` — token enums/structs (`TWToken` conforming, `Sendable`, `Equatable`)

Core files at root:
- `TWToken.swift` — `TWToken` protocol + `.class()` overload accepting tokens + `twFormat()` for numeric formatting + `HTMLTag._twPhantom` phantom tag + `twValue()` helper for extracting class strings
- `TWVariant.swift` — `TWVariant` enum (pseudo-classes, responsive, dark, container queries, group/peer, arbitrary selector)
- `TWVariant+MarkerToken.swift` — `TWTGroupMarker`/`TWTPeerMarker` tokens + `.group()`/`.peer()` marker classes (bare and named, e.g. `group`, `group/item`)
- `TWColor.swift` — shared color type (`TWColor` struct with `.red`, `.blue`, `.white`, `.black`, `.transparent`, `.gray.shade(500)` pattern)
- `TailwindCSS.swift` — `setupTailwind()` CDN helper

### String extraction

Use `twValue()` to capture modifier output as a concrete `String` outside an HTML builder. Uses the `HTMLTag._twPhantom` phantom tag to pin the generic `MarkupAttribute<Tag>` parameter.

```swift
let classes = twValue(
    .translate(.y("10"), negative: true),
    .margin(.size(4)),
    .text(.lg, variants: [.sm])
)
// → "-translate-y-10 m-4 sm:text-lg"
```

### Tests (`Tests/`)

- `ElementaryTailwindTests/` — mirrors `Sources/ElementaryTailwind/` category-by-category
- `TestUtilities/` — shared helpers (`HTMLAssertEqual`, `fixtureURL`)

## Snapshot test pattern

Tests use `HTMLAssertEqual` + fixture `.html` files:

```swift
try HTMLAssertEqual(
    div(.animation(.spin)) {},
    try String(contentsOf: fixtureURL("animation.spin.html"), encoding: .utf8)
)
```

Fixtures live in `SnapshotFixtures/` inside each test category directory. Each fixture must:
- Be a single-line HTML string (no trailing newline)
- Contain valid HTML structure (CI validates tag matching)
- Be registered in `Package.swift` `exclude` array under the test target

Arbitrary-value fixtures follow `camelCase.arbitrary.html` (e.g. `borderSpacing.arbitrary.html`, `gridTemplateColumns.arbitrary.html`, `scale.arbitrary.html`), paired with a `test<Category>Arbitrary()` test method.

When adding a new fixture category, add the `exclude` entry to `Package.swift`.

## File naming

Extensions use `<Type>+<Name>.swift`. The `+` means "this file extends the prefix type":
- `Layout+GridTemplateToken.swift` extends the Layout category with grid template tokens
- `Layout+PlacementToken.swift` extends the Layout category with placement (justify-items, place-*) tokens
- `Effects+MaskToken.swift` extends the Effects category with mask tokens
- `Transforms+3DToken.swift` extends the Transforms category with perspective, backface, zoom tokens
- `Interactivity+ScrollToken.swift` extends the Interactivity category with scroll behavior, snap, margin/padding, and scrollbar tokens
- `Interactivity+ColorToken.swift` extends the Interactivity category with accent, caret, and color-scheme tokens
- `Typography+WordBreakToken.swift` extends the Typography category with word-break tokens
- `Typography+ContentToken.swift` extends the Typography category with content pseudo-element tokens
- `Typography+DecorationToken.swift` extends the Typography category with text-decoration-thickness and underline-offset tokens

Modifier methods co-locate in `<Category>.swift` (e.g., `.display()`, `.items()`, `.gap()` all live in `Layout.swift`).

## Key pattern

Every modifier follows the same structure:

```swift
extension MarkupAttribute {
    /// Sets the CSS `<property>` property.
    public static func <method>(
        _ value: TWT<Type>,
        negative: Bool = false,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants, to: negative ? "-\(value.rawValue)" : value.rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
```

Spacing/sizing/transform methods that support negative values (margin, inset, z-index, order, translate, rotate, scale, skew, scroll-margin, scroll-padding) include a `negative: Bool = false` parameter. When `true`, a `-` prefix is prepended to the generated class (e.g., `.margin(.size(4), negative: true)` → `-m-4`).

Color-based methods accept `TWColor` and optional `opacity: Int?` param, wrapping in a `TWT*Color` struct internally.

Numeric spacing/sizing tokens use `Double` with `twFormat()` — whole numbers emit without decimal (`4.0` → `"4"`), fractions emit as-is (`1.5` → `"1.5"`).

Every utility that Tailwind documents as supporting custom values gets an `.arbitrary(String)` case (e.g. `m-[20px]`, `scale-[1.7]`, `grid-cols-[200px_minmax(900px,1fr)_100px]`). It emits `<prefix>-[value]`:

```swift
case arbitrary(String)

case .arbitrary(let v): "scale-[\(v)]"
```

`String`-based raw enums with `.arbitrary` use a computed `rawValue` and drop `CaseIterable` (verified no tests depend on `allCases`/`init(rawValue:)`).

Colors use a `TWColor.arbitrary(_ value: String)` factory → `TWColor("[\(value)]", nil)`, so every color modifier (bg-, text-, border-, fill-, etc.) emits the arbitrary class.

## Conventions

- `public` for all public API surface.
- `///` doc comments required on all public API (one-line summary + description).
- **No inline comments** unless documenting non-obvious behavior.
- Use typed enums for variant values — do not hardcode raw strings.
- `if let` blocks must be multi-line (formatter enforces this).
- Follow latest APIs from elementary — check upstream docs before implementing
- Use `@ContentBuilder` (not deprecated `@HTMLBuilder`)
- Use `HTMLAttribute<Tag>` (not the old unparameterized `HTMLAttribute`)
- Each token type must be `Sendable` and `Equatable`

## Commit conventions

Conventional commits: `feat(scope):`, `fix(scope):`, `refactor(scope):`, `test(scope):`, `docs(scope):`, `chore(scope):`.

## Commit cycle

When implementing or refactoring a token category, follow this 3-step cycle:

1. `feat(scope):` or `refactor(scope):` — implement or refactor the token category
2. `test(scope):` — add or update tests
3. `docs(scope):` — update AGENTS.md, README, or doc comments if needed

Use `fix(scope):` for bug fixes and `chore(scope):` for maintenance tasks (dependencies, CI, tooling).

## Versioning

**Epoch SemVer** ([antfu.me/posts/epoch-semver](https://antfu.me/posts/epoch-semver)) with `100×` multiplier: `Epoch.Major.(Minor×100 + Patch)`.

- `Major` bump → breaking change
- `Minor×100 + Patch` encodes minor (×100) + patch (0–99)
- Tag format: `chore: tag 0.X.YYY` (empty commit + tag)

## Build Quirks

- **Swift 6.1** with `StrictConcurrency=complete` enabled — concurrency violations are real errors.
- `ExistentialAny` upcoming feature is also enabled globally.
- macOS only (CI uses `macos-latest`); no Linux support tested.
- If you see `multiple producers` errors, run `swift package clean` — stale `.build` cache from a folder move.

## Do not

- Do not start implementing, refactoring, or changing code without first reading the relevant docs in the upstream packages (elementary, Tailwind CSS).
- Do not commit without user review and approval.
- Do not use deprecated APIs from elementary.
- Do not auto-commit or push — always wait for explicit user confirmation.
- Do not create new methods on `HTMLElement` — extend `MarkupAttribute` and `TWToken` only.

## CI/CD

- `.github/workflows/ci.yaml` — `swift build --build-tests` + `swift test` on `macos-latest`
- `.github/workflows/format.yaml` — `swift format lint -prs .` on `**.swift` changes
- `.github/workflows/validate-snapshots.yaml` — validates HTML fixture structure (tag matching) on `.html` fixture changes

## Dependencies

- `elementary` ≥ 0.8.0 (underlying HTML rendering library)
- No other external dependencies

## Upstream docs

- [Tailwind CSS](https://tailwindcss.com/) — the CSS framework this package wraps
- [elementary](https://github.com/elementary-swift/elementary) — the Swift HTML rendering framework
