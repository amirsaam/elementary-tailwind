import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct TransitionsTests {
    @Test func testTransitionProperty() throws {
        try HTMLAssertEqual(
            div(.transition(.all)) {},
            try String(contentsOf: fixtureURL("transitionProperty.all.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transition(.colors)) {},
            try String(contentsOf: fixtureURL("transitionProperty.colors.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transition(.none)) {},
            try String(contentsOf: fixtureURL("transitionProperty.none.html"), encoding: .utf8)
        )
    }

    @Test func testTransitionDuration() throws {
        try HTMLAssertEqual(
            div(.transitionDuration(.ms(150))) {},
            try String(contentsOf: fixtureURL("transitionDuration.ms-150.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transitionDuration(.ms(300))) {},
            try String(contentsOf: fixtureURL("transitionDuration.ms-300.html"), encoding: .utf8)
        )
    }

    @Test func testTransitionTimingFunction() throws {
        try HTMLAssertEqual(
            div(.transitionTimingFunction(.linear)) {},
            try String(
                contentsOf: fixtureURL("transitionTimingFunction.linear.html"),
                encoding: .utf8
            )
        )
        try HTMLAssertEqual(
            div(.transitionTimingFunction(.easeInOut)) {},
            try String(
                contentsOf: fixtureURL("transitionTimingFunction.easeInOut.html"),
                encoding: .utf8
            )
        )
    }
}
