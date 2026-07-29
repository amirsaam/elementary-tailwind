# ElementaryTailwind: Type-safe Tailwind CSS in Swift

Type-safe [Tailwind CSS](https://tailwindcss.com/) utilities for [Elementary](https://github.com/elementary-swift/elementary) — write Tailwind classes as typed Swift methods, not raw strings.

## Compatibility

| ElementaryTailwind | Elementary | TailwindCSS |
| ------------------ | ---------- | ----------- |
| 0.2.xxx            | 0.8.0      | 4.3.3       |


> [!CAUTION]
> DO NOT USE 0.1.xxx TAGS
> There was some mismatches in that versions 

```swift
import Elementary
import ElementaryTailwind

struct ProductPage: HTMLDocument {
    var title: String { "Featured product" }

    var body: some HTML {
        main(.class("max-w-2xl mx-auto p-8")) {
            div(
                .display(.flex), .flexDirection(.column), .gap(4),
                .backgroundColor(.white), .borderWidth(.size(1)),
                .borderColor(.gray.shade(200)), .borderRadius(.lg), .p(8)
            ) {
                h1(.fontSize(.xxxl), .fontWeight(.bold), .textColor(.gray.shade(900))) {
                    "Featured product"
                }
                p(.fontSize(.base), .textColor(.gray.shade(500))) {
                    "A short description of the product."
                }
                button(
                    .backgroundColor(.blue), .textColor(.white),
                    .padding(.x(4), .y(2)), .borderRadius(.md),
                    .fontWeight(.medium), .fontSize(.sm)
                ) {
                    "Add to cart"
                }
            }
        }
    }
}
```

**Generated HTML:**

```html
<main class="max-w-2xl mx-auto p-8">
  <div class="flex flex-col gap-4 bg-white border border-gray-200 rounded-lg p-8">
    <h1 class="text-3xl font-bold text-gray-900">Featured product</h1>
    <p class="text-base text-gray-500">A short description of the product.</p>
    <button class="bg-blue-500 text-white px-4 py-2 rounded-md font-medium text-sm">Add to cart</button>
  </div>
</main>
```

## Use it

Add `elementary-tailwind` to your `Package.swift` dependencies:

```swift
// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "MyApp",
    dependencies: [
        .package(url: "https://github.com/amirsaam/elementary-tailwind.git", from: "0.1.100"),
    ],
    targets: [
        .target(
            name: "App",
            dependencies: [
                .product(name: "ElementaryTailwind", package: "elementary-tailwind"),
            ]
        ),
    ]
)
```

`ElementaryTailwind` depends on `Elementary`. Swift Package Manager resolves this transitively — no need to declare it as a direct dependency.

This package requires Swift 6.1 with `StrictConcurrency=complete` and targets macOS v14, iOS v15, tvOS v17, watchOS v10.

## Quick tour

```swift
import Elementary
import ElementaryTailwind

var head: some HTML {
    meta(.charset(.utf8))
    setupTailwind()  // emits <script src="https://cdn.tailwindcss.com/4.3.3" defer>
}
```

```swift
// every Tailwind utility is a typed static method on MarkupAttribute
div(.display(.flex), .items(.center), .gap(4), .p(8)) {
    p(.textColor(.blue), .fontSize(.lg)) { "Hello" }
}
```

```swift
// variants — hover, focus, responsive, dark mode, container queries
button(.backgroundColor(.blue, variants: [.hover])) { "Hover me" }
div(.display(.grid, variants: [.md, .lg])) { ... }
div(.backgroundColor(.gray.shade(900), variants: [.dark])) { ... }
div(.display(.flex, variants: [.namedContainerQuery("sidebar")])) { ... }
```

```swift
// colors — full Tailwind color palette with shade and opacity support
p(.textColor(.red)) { "Red" }
p(.textColor(.red.shade(500))) { "Red 500" }
p(.textColor(.blue, opacity: 70)) { "Blue 70%" }
div(.backgroundColor(.gray.shade(900), variants: [.dark])) { ... }
```

```swift
// spacing — fractional values, directional, arbitrary
div(.margin(.top(4)), .padding(.x(1.5))) { ... }
div(.margin(.left(.arbitrary("20px")))) { ... }
```

```swift
// gradients — direction + color stops with optional opacity
div(.gradientToDirection(.br), .gradientFromColor(.blue), .gradientToColor(.purple)) { ... }
div(.gradientToDirection(.r), .gradientFromColor(.red, opacity: 50)) { ... }
```

```swift
// filters
div(.blur(.md), .brightness(125), .grayscale(50)) { ... }
div(.backdropBlur(.lg), .backdropBrightness(75)) { ... }
```

```swift
// transforms — scale, rotate, translate, skew, perspective, 3D
div(.scale(.all(110)), .rotate(.z(45))) { ... }
div(.transform(.gpu), .perspective(.value(500)), .rotate(.x(15))) { ... }
```

```swift
// border-radius — uniform or directional
div(.borderRadius(.lg)) { ... }
div(.borderRadius(.topLeft(.lg), .topRight(.lg))) { ... }
```

```swift
// arbitrary values — typed tokens or raw .class()
div(.margin(.left(.arbitrary("20px")))) { ... }
div(.class("grid-cols-[1fr_2fr_1fr]")) { ... }
div(.class("bg-(--my-color)")) { ... }
```

```swift
// mix typed and raw — .class() with variant support
div(.display(.flex), .class("custom-class")) { ... }
div(.class("shadow-outline", variants: [.focus])) { ... }
```

## Utilities

All 190+ token types across 16 Tailwind CSS categories:

| Category | Methods | Examples |
|---|---|---|
| **Layout** | `.display`, `.position`, `.inset`, `.insetTop`, `.insetRight`, `.insetBottom`, `.insetLeft`, `.insetX`, `.insetY`, `.zIndex`, `.overflow`, `.overflowX`, `.overflowY`, `.overscrollBehavior`, `.overscrollBehaviorX`, `.overscrollBehaviorY`, `.visibility`, `.float`, `.clear`, `.isolation`, `.columns`, `.breakAfter`, `.breakBefore`, `.breakInside`, `.boxSizing`, `.boxDecorationBreak`, `.objectFit`, `.objectPosition`, `.aspect` | `.display(.flex)`, `.position(.absolute)`, `.zIndex(.number(10))` |
| **Flexbox & Grid** | `.flexDirection`, `.flexWrap`, `.flex`, `.flexGrow`, `.flexShrink`, `.flexBasis`, `.items`, `.justify`, `.placeContent`, `.placeItems`, `.placeSelf`, `.alignContent`, `.alignSelf`, `.justifyItems`, `.justifySelf`, `.order`, `.gap`, `.gapX`, `.gapY`, `.gridTemplate*`, `.gridColumn`, `.gridRow`, `.gridAuto*` | `.flexDirection(.column)`, `.items(.center)`, `.gap(4)` |
| **Spacing** | `.padding`, `.paddingX`, `.paddingY`, `.paddingTop`, `.paddingRight`, `.paddingBottom`, `.paddingLeft`, `.margin`, `.marginX`, `.marginY`, `.marginTop`, `.marginRight`, `.marginBottom`, `.marginLeft`, `.gap`, `.spaceX`, `.spaceY` | `.p(8)`, `.padding(.x(4), .y(2))`, `.mt(4)`, `.mx(.auto)` |
| **Sizing** | `.width`, `.minWidth`, `.maxWidth`, `.height`, `.minHeight`, `.maxHeight`, `.aspect` | `.width(.full)`, `.height(.screen)`, `.maxWidth(.xl)` |
| **Typography** | `.fontFamily`, `.fontSize`, `.fontWeight`, `.fontStyle`, `.fontSmoothing`, `.fontStretch`, `.fontVariantNumeric`, `.fontFeatureSettings`, `.letterSpacing`, `.lineClamp`, `.lineHeight`, `.textAlign`, `.textColor`, `.textDecoration`, `.textDecorationColor`, `.textDecorationStyle`, `.textDecorationThickness`, `.underlineOffset`, `.textTransform`, `.textOverflow`, `.textWrap`, `.textIndent`, `.verticalAlign`, `.whitespace`, `.wordBreak`, `.hyphens`, `.tabSize`, `.listStyle`, `.listStylePosition`, `.listStyleImage`, `.content` | `.fontSize(.lg)`, `.textColor(.blue)`, `.fontWeight(.bold)` |
| **Backgrounds** | `.backgroundColor`, `.backgroundAttachment`, `.backgroundClip`, `.backgroundImage`, `.backgroundOrigin`, `.backgroundPosition`, `.backgroundRepeat`, `.backgroundSize`, `.backgroundBlendMode` | `.backgroundColor(.blue)`, `.backgroundSize(.cover)` |
| **Gradients** | `.gradientToDirection`, `.gradientFromColor`, `.gradientViaColor`, `.gradientToColor` | `.gradientFromColor(.blue, opacity: 50)` |
| **Borders** | `.borderWidth`, `.borderColor`, `.borderStyle`, `.borderRadius`, `.outlineWidth`, `.outlineColor`, `.outlineStyle`, `.outlineOffset`, `.ringWidth`, `.ringColor`, `.ringOffsetWidth`, `.ringOffsetColor`, `.boxShadow`, `.boxShadowColor` | `.borderRadius(.lg)`, `.borderRadius(.topLeft(.md))` |
| **Effects** | `.opacity`, `.textShadow`, `.mixBlendMode`, `.backgroundBlendMode` | `.opacity(50)`, `.textShadow(.lg)` |
| **Masks** | `.maskClip`, `.maskComposite`, `.maskImage`, `.maskMode`, `.maskOrigin`, `.maskPosition`, `.maskRepeat`, `.maskSize`, `.maskType` | `.maskClip(.border)`, `.maskSize(.cover)` |
| **Filters** | `.blur`, `.brightness`, `.contrast`, `.dropShadow`, `.grayscale`, `.hueRotate`, `.invert`, `.saturate`, `.sepia`, `.backdropBlur`, `.backdropBrightness`, `.backdropContrast`, `.backdropGrayscale`, `.backdropHueRotate`, `.backdropInvert`, `.backdropOpacity`, `.backdropSaturate`, `.backdropSepia` | `.blur(.md)`, `.backdropBrightness(75)` |
| **Tables** | `.borderCollapse`, `.borderSpacing`, `.tableLayout`, `.captionSide` | `.borderCollapse(.collapse)` |
| **Transitions** | `.transition`, `.transitionBehavior`, `.transitionDuration`, `.transitionTimingFunction`, `.transitionDelay` | `.transition(.colors)`, `.transitionDuration(.ms(150))` |
| **Animation** | `.animation` | `.animation(.spin)`, `.animation(.pulse)` |
| **Transforms** | `.transform`, `.scale`, `.rotate`, `.translate`, `.skew`, `.transformOrigin`, `.perspective`, `.perspectiveOrigin`, `.backfaceVisibility`, `.transformStyle`, `.zoom` | `.transform(.gpu)`, `.rotate(.z(45))` |
| **Interactivity** | `.cursor`, `.pointerEvents`, `.resize`, `.userSelect`, `.scrollBehavior`, `.scrollSnap*`, `.scrollMargin`, `.scrollPadding`, `.scrollbarWidth`, `.scrollbarColor`, `.scrollbarGutter`, `.touchAction`, `.accentColor`, `.appearance`, `.caretColor`, `.colorScheme`, `.fieldSizing`, `.willChange` | `.cursor(.pointer)`, `.scrollSnapAlign(.start)` |
| **SVG** | `.fill`, `.stroke`, `.strokeWidth` | `.fill(.blue)`, `.strokeWidth(.value(2))` |
| **Accessibility** | `.screenReader`, `.forcedColorAdjust` | `.screenReader(.only)` |

## Variants

Every utility method accepts an optional `variants:` parameter:

```swift
// pseudo-classes
div(.backgroundColor(.blue, variants: [.hover])) { ... }
div(.ringWidth(.size(2), variants: [.focus])) { ... }

// responsive
div(.display(.flex, variants: [.md])) { ... }
div(.display(.grid, variants: [.lg])) { ... }

// dark mode
div(.backgroundColor(.gray.shade(900), variants: [.dark])) { ... }

// container queries
div(.display(.grid, variants: [.containerQuery])) { ... }
div(.display(.grid, variants: [.namedContainerQuery("sidebar")])) { ... }

// combined
div(.display(.flex, variants: [.hover, .md])) { ... }
```

**Available variants:**

| Category | Variants |
|---|---|
| Pseudo-classes | `.hover`, `.focus`, `.focusWithin`, `.focusVisible`, `.active`, `.visited`, `.disabled`, `.invalid`, `.valid`, `.readOnly`, `.checked`, `.indeterminate`, `.required`, `.empty` |
| Pseudo-elements | `.first`, `.last`, `.odd`, `.even`, `.placeholder`, `.before`, `.after`, `.file`, `.marker`, `.selection` |
| Responsive | `.sm`, `.md`, `.lg`, `.xl`, `.xxl` |
| Max-width responsive | `.maxSm`, `.maxMd`, `.maxLg`, `.maxXl`, `.maxXxl` |
| Media | `.dark`, `.print`, `.containerQuery`, `.namedContainerQuery(String)` |
| Group | `.groupHover`, `.groupFocus`, `.groupChecked`, `.groupDisabled`, `.groupInvalid`, `.groupValid`, `.groupOpen`, `.groupAutofill`, `.groupRequired`, `.groupVisited`, `.groupPlaceholder`, `.groupTarget` |
| Peer | `.peerHover`, `.peerFocus`, `.peerChecked`, `.peerInvalid`, `.peerValid`, `.peerOpen`, `.peerAutofill`, `.peerRequired`, `.peerVisited`, `.peerPlaceholder`, `.peerTarget` |
| Custom | `.arbitrary(String)` |

## Setup

The `setupTailwind()` helper generates the `<script>` tag needed to install Tailwind CSS from a CDN:

```swift
var head: some HTML {
    meta(.charset(.utf8))
    setupTailwind()            // defaults to v4.3.3
    setupTailwind(version: "4.3.3")  // pin a specific version
}
```

**Generated HTML:**

```html
<script src="https://cdn.tailwindcss.com/4.3.3" defer></script>
```

If you need to host Tailwind CSS yourself or use a different CDN, write the `<script>` tag directly:

```swift
var head: some HTML {
    meta(.charset(.utf8))
    script(.src("/tailwind.min.js"), .defer) {}
}
```

## Custom values

For Tailwind utilities not covered by typed tokens, use the raw `.class()` modifier:

```swift
// arbitrary value
div(.class("grid-cols-[1fr_2fr_1fr]")) { ... }

// CSS variable
div(.class("bg-(--my-color)")) { ... }

// mix typed and raw
div(.display(.flex), .class("custom-class")) { ... }
```

## Documentation

The full API is documented in source — every public type and function has doc comments. For architecture details, see [`AGENTS.md`](./AGENTS.md).

The full test suite (169 snapshot tests across 17 suites) lives in [`Tests/ElementaryTailwindTests/`](./Tests/ElementaryTailwindTests/).

## Future directions

- All Tailwind CSS v4 utility categories are implemented (190+ token types, 100% docs coverage).
- Arbitrary value syntax (`[<value>]`) and CSS variable syntax (`(<property>)`) are available via raw `.class()` — type-safe wrappers possible for common patterns.

PRs welcome.

## License

[MIT](./LICENSE)
