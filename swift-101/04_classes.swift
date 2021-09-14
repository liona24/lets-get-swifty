enum Color {
    case Red
    case Blue
    case Green
}

struct Point {
    var x: Int = 0
    var y: Int = 0
}

class Rectangle {
    var top_left : Point = Point()
    var bot_right : Point = Point()
    var color : Color?

    init(top_left: Point, bot_right: Point, color: Color? = nil) {
        self.top_left = top_left
        self.bot_right = bot_right
        self.color = color
    }

    var width: Int {
        get {
            return bot_right.x - top_left.x
        }
    }
    var height: Int {
        get {
            return bot_right.y - top_left.y
        }
    }

    func draw() {
        var c = "+"

        if case let colorUnwrapped? = color {
            switch (colorUnwrapped) {
            case .Red:
                c = "R"
            case .Blue:
                c = "B"
            case .Green:
                c = "G"
            }
        }

        for _ in 0..<top_left.y {
            print()
        }

        for _ in top_left.y...bot_right.y {
            let line = [ repeatElement(" ", count: top_left.x), repeatElement(c, count:  width) ];
            print(line.joined().joined(separator: ""))
        }
    }
}

let tl = Point(x: 3, y: 2)
let br = Point(x: 7, y: 4)
Rectangle(top_left: tl, bot_right: br, color: .Blue).draw()
