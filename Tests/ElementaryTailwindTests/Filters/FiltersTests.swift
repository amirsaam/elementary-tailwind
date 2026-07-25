import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct FiltersTests {
    @Test func testBlur() throws {
        try HTMLAssertEqual(div(.blur(.none)) {}, try String(contentsOf: fixtureURL("blur.none.html"), encoding: .utf8))
        try HTMLAssertEqual(div(.blur(.md)) {}, try String(contentsOf: fixtureURL("blur.md.html"), encoding: .utf8))
        try HTMLAssertEqual(div(.blur(.lg)) {}, try String(contentsOf: fixtureURL("blur.lg.html"), encoding: .utf8))
    }

    @Test func testBrightness() throws {
        try HTMLAssertEqual(
            div(.brightness(.value(50))) {}, try String(contentsOf: fixtureURL("brightness.value-50.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.brightness(.percent(150))) {}, try String(contentsOf: fixtureURL("brightness.percent-150.html"), encoding: .utf8))
    }

    @Test func testContrast() throws {
        try HTMLAssertEqual(div(.contrast(.value(50))) {}, try String(contentsOf: fixtureURL("contrast.value-50.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.contrast(.percent(200))) {}, try String(contentsOf: fixtureURL("contrast.percent-200.html"), encoding: .utf8))
    }

    @Test func testDropShadow() throws {
        try HTMLAssertEqual(div(.dropShadow(.md)) {}, try String(contentsOf: fixtureURL("dropShadow.md.html"), encoding: .utf8))
        try HTMLAssertEqual(div(.dropShadow(.none)) {}, try String(contentsOf: fixtureURL("dropShadow.none.html"), encoding: .utf8))
    }

    @Test func testGrayscale() throws {
        try HTMLAssertEqual(div(.grayscale(.value(1))) {}, try String(contentsOf: fixtureURL("grayscale.value-1.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.grayscale(.percent(50))) {}, try String(contentsOf: fixtureURL("grayscale.percent-50.html"), encoding: .utf8))
    }

    @Test func testHueRotate() throws {
        try HTMLAssertEqual(
            div(.hueRotate(.degrees(90))) {}, try String(contentsOf: fixtureURL("hueRotate.degrees-90.html"), encoding: .utf8))
    }

    @Test func testInvert() throws {
        try HTMLAssertEqual(div(.invert(.value(1))) {}, try String(contentsOf: fixtureURL("invert.value-1.html"), encoding: .utf8))
        try HTMLAssertEqual(div(.invert(.percent(75))) {}, try String(contentsOf: fixtureURL("invert.percent-75.html"), encoding: .utf8))
    }

    @Test func testSaturate() throws {
        try HTMLAssertEqual(div(.saturate(.value(50))) {}, try String(contentsOf: fixtureURL("saturate.value-50.html"), encoding: .utf8))
    }

    @Test func testSepia() throws {
        try HTMLAssertEqual(div(.sepia(.value(1))) {}, try String(contentsOf: fixtureURL("sepia.value-1.html"), encoding: .utf8))
    }

    @Test func testBackdropBlur() throws {
        try HTMLAssertEqual(div(.backdropBlur(.md)) {}, try String(contentsOf: fixtureURL("backdropBlur.md.html"), encoding: .utf8))
        try HTMLAssertEqual(div(.backdropBlur(.none)) {}, try String(contentsOf: fixtureURL("backdropBlur.none.html"), encoding: .utf8))
    }
}
