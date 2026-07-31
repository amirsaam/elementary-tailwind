import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct TransformsTests {
    @Test func testScale() throws {
        try HTMLAssertEqual(
            div(.scale(.all(50))) {},
            try String(contentsOf: fixtureURL("scale.all-50.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.scale(.all(50), negative: true)) {},
            try String(contentsOf: fixtureURL("scale.negative-50.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.scale(.x(75))) {},
            try String(contentsOf: fixtureURL("scale.x-75.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.scale(.zero)) {},
            try String(contentsOf: fixtureURL("scale.zero.html"), encoding: .utf8)
        )
    }

    @Test func testRotate() throws {
        try HTMLAssertEqual(
            div(.rotate(.z(45))) {},
            try String(contentsOf: fixtureURL("rotate.z-45.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.rotate(.z(45), negative: true)) {},
            try String(contentsOf: fixtureURL("rotate.negative-45.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.rotate(.zero)) {},
            try String(contentsOf: fixtureURL("rotate.zero.html"), encoding: .utf8)
        )
    }

    @Test func testTranslate() throws {
        try HTMLAssertEqual(
            div(.translate(.x("4"))) {},
            try String(contentsOf: fixtureURL("translate.x-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.translate(.x("4"), negative: true)) {},
            try String(contentsOf: fixtureURL("translate.negative-x-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.translate(.zero)) {},
            try String(contentsOf: fixtureURL("translate.zero.html"), encoding: .utf8)
        )
    }

    @Test func testSkew() throws {
        try HTMLAssertEqual(
            div(.skew(.x(12))) {},
            try String(contentsOf: fixtureURL("skew.x-12.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.skew(.x(12), negative: true)) {},
            try String(contentsOf: fixtureURL("skew.negative-x-12.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.skew(.zero)) {},
            try String(contentsOf: fixtureURL("skew.zero.html"), encoding: .utf8)
        )
    }

    @Test func testTransform() throws {
        try HTMLAssertEqual(
            div(.transform(.none)) {},
            try String(contentsOf: fixtureURL("transform.none.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transform(.gpu)) {},
            try String(contentsOf: fixtureURL("transform.gpu.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transform(.cpu)) {},
            try String(contentsOf: fixtureURL("transform.cpu.html"), encoding: .utf8)
        )
    }

    @Test func testTransformOrigin() throws {
        try HTMLAssertEqual(
            div(.transformOrigin(.center)) {},
            try String(contentsOf: fixtureURL("transformOrigin.center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transformOrigin(.topRight)) {},
            try String(contentsOf: fixtureURL("transformOrigin.topRight.html"), encoding: .utf8)
        )
    }

    @Test func testPerspective() throws {
        try HTMLAssertEqual(
            div(.perspective(.value(256))) {},
            try String(contentsOf: fixtureURL("perspective.value-256.html"), encoding: .utf8)
        )
    }

    @Test func testBackfaceVisibility() throws {
        try HTMLAssertEqual(
            div(.backfaceVisibility(.hidden)) {},
            try String(contentsOf: fixtureURL("backfaceVisibility.hidden.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.backfaceVisibility(.visible)) {},
            try String(contentsOf: fixtureURL("backfaceVisibility.visible.html"), encoding: .utf8)
        )
    }

    @Test func testTransformStyle() throws {
        try HTMLAssertEqual(
            div(.transformStyle(.preserve3d)) {},
            try String(contentsOf: fixtureURL("transformStyle.preserve3d.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transformStyle(.flat)) {},
            try String(contentsOf: fixtureURL("transformStyle.flat.html"), encoding: .utf8)
        )
    }

    @Test func testZoom() throws {
        try HTMLAssertEqual(
            div(.zoom(.normal)) {},
            try String(contentsOf: fixtureURL("zoom.normal.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.zoom(.fifty)) {},
            try String(contentsOf: fixtureURL("zoom.fifty.html"), encoding: .utf8)
        )
    }

    @Test func testScaleArbitrary() throws {
        try HTMLAssertEqual(
            div(.scale(.arbitrary("1.7"))) {},
            try String(contentsOf: fixtureURL("scale.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testRotateArbitrary() throws {
        try HTMLAssertEqual(
            div(.rotate(.arbitrary("3.142rad"))) {},
            try String(contentsOf: fixtureURL("rotate.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testTranslateArbitrary() throws {
        try HTMLAssertEqual(
            div(.translate(.arbitrary("3.142rad"))) {},
            try String(contentsOf: fixtureURL("translate.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testSkewArbitrary() throws {
        try HTMLAssertEqual(
            div(.skew(.arbitrary("3.142rad"))) {},
            try String(contentsOf: fixtureURL("skew.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testTransformArbitrary() throws {
        try HTMLAssertEqual(
            div(.transform(.arbitrary("matrix(1,2,3,4,5,6)"))) {},
            try String(contentsOf: fixtureURL("transform.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testTransformOriginArbitrary() throws {
        try HTMLAssertEqual(
            div(.transformOrigin(.arbitrary("600px_400px"))) {},
            try String(contentsOf: fixtureURL("transformOrigin.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testPerspectiveArbitrary() throws {
        try HTMLAssertEqual(
            div(.perspective(.arbitrary("750px"))) {},
            try String(contentsOf: fixtureURL("perspective.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testPerspectiveOriginArbitrary() throws {
        try HTMLAssertEqual(
            div(.perspectiveOrigin(.arbitrary("200%_150%"))) {},
            try String(
                contentsOf: fixtureURL("perspectiveOrigin.arbitrary.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testZoomArbitrary() throws {
        try HTMLAssertEqual(
            div(.zoom(.arbitrary("1.1"))) {},
            try String(contentsOf: fixtureURL("zoom.arbitrary.html"), encoding: .utf8)
        )
    }
}
