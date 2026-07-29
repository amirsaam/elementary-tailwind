import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct FiltersTests {
    @Test func testBlur() throws {
        try HTMLAssertEqual(
            div(.blur(.none)) {},
            try String(contentsOf: fixtureURL("blur.none.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.blur(.md)) {},
            try String(contentsOf: fixtureURL("blur.md.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.blur(.lg)) {},
            try String(contentsOf: fixtureURL("blur.lg.html"), encoding: .utf8)
        )
    }

    @Test func testBrightness() throws {
        try HTMLAssertEqual(
            div(.brightness(.value(50))) {},
            try String(contentsOf: fixtureURL("brightness.value-50.html"), encoding: .utf8)
        )
    }

    @Test func testContrast() throws {
        try HTMLAssertEqual(
            div(.contrast(.value(50))) {},
            try String(contentsOf: fixtureURL("contrast.value-50.html"), encoding: .utf8)
        )
    }

    @Test func testDropShadow() throws {
        try HTMLAssertEqual(
            div(.dropShadow(.md)) {},
            try String(contentsOf: fixtureURL("dropShadow.md.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.dropShadow(.none)) {},
            try String(contentsOf: fixtureURL("dropShadow.none.html"), encoding: .utf8)
        )
    }

    @Test func testGrayscale() throws {
        try HTMLAssertEqual(
            div(.grayscale(.value(1))) {},
            try String(contentsOf: fixtureURL("grayscale.value-1.html"), encoding: .utf8)
        )
    }

    @Test func testHueRotate() throws {
        try HTMLAssertEqual(
            div(.hueRotate(.degrees(90))) {},
            try String(contentsOf: fixtureURL("hueRotate.degrees-90.html"), encoding: .utf8)
        )
    }

    @Test func testInvert() throws {
        try HTMLAssertEqual(
            div(.invert(.value(1))) {},
            try String(contentsOf: fixtureURL("invert.value-1.html"), encoding: .utf8)
        )
    }

    @Test func testSaturate() throws {
        try HTMLAssertEqual(
            div(.saturate(.value(50))) {},
            try String(contentsOf: fixtureURL("saturate.value-50.html"), encoding: .utf8)
        )
    }

    @Test func testSepia() throws {
        try HTMLAssertEqual(
            div(.sepia(.value(1))) {},
            try String(contentsOf: fixtureURL("sepia.value-1.html"), encoding: .utf8)
        )
    }

    @Test func testBackdropBlur() throws {
        try HTMLAssertEqual(
            div(.backdropBlur(.md)) {},
            try String(contentsOf: fixtureURL("backdropBlur.md.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.backdropBlur(.none)) {},
            try String(contentsOf: fixtureURL("backdropBlur.none.html"), encoding: .utf8)
        )
    }

    @Test func testBackdropBrightness() throws {
        try HTMLAssertEqual(
            div(.backdropBrightness(.value(50))) {},
            try String(
                contentsOf: fixtureURL("backdropBrightness.value-50.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testBackdropContrast() throws {
        try HTMLAssertEqual(
            div(.backdropContrast(.value(50))) {},
            try String(
                contentsOf: fixtureURL("backdropContrast.value-50.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testBackdropGrayscale() throws {
        try HTMLAssertEqual(
            div(.backdropGrayscale(.value(1))) {},
            try String(
                contentsOf: fixtureURL("backdropGrayscale.value-1.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testBackdropHueRotate() throws {
        try HTMLAssertEqual(
            div(.backdropHueRotate(.degrees(90))) {},
            try String(
                contentsOf: fixtureURL("backdropHueRotate.degrees-90.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testBackdropInvert() throws {
        try HTMLAssertEqual(
            div(.backdropInvert(.value(1))) {},
            try String(
                contentsOf: fixtureURL("backdropInvert.value-1.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testBackdropOpacity() throws {
        try HTMLAssertEqual(
            div(.backdropOpacity(.value(50))) {},
            try String(
                contentsOf: fixtureURL("backdropOpacity.value-50.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testBackdropSaturate() throws {
        try HTMLAssertEqual(
            div(.backdropSaturate(.value(50))) {},
            try String(contentsOf: fixtureURL("backdropSaturate.value-50.html"), encoding: .utf8)
        )
    }

    @Test func testBackdropSepia() throws {
        try HTMLAssertEqual(
            div(.backdropSepia(.value(1))) {},
            try String(contentsOf: fixtureURL("backdropSepia.value-1.html"), encoding: .utf8)
        )
    }
}
