import Foundation

// დავალება 1
enum Week {
    case ორშაბათი, სამშაბათი, ოთხშაბათი, ხუთშაბათ, პარასკევი, შაბათი, კვირა
}

func dayType(day: Week) {
    switch day {
    case .შაბათი, .კვირა:
        print("\(day) დასვენების დღეა.")
    default:
        print("\(day) სამუშაო დღეა.")
    }
}

//  დავალება 2
enum GialaSquad {
    case tsigroviManto, moshishvlebuliMkerdi, tuGapatio
    
    var monthlyCost: Double {
        switch self {
        case .tsigroviManto:
            return 100.0
        case .moshishvlebuliMkerdi:
            return 70.0
        case .tuGapatio:
            return 40.0
        }
    }
    
    func printCost() {
        print("თვიური გადასახადი \(self) არის \(self.monthlyCost)")
    }
}

// დავალება 3
enum Weather {
    case sunny(Double), cloudy(Double), rainy(Double), snowy(Double)
    
    func clothingRecommendation() {
        switch self {
        case .sunny(let temperature) where temperature > 20:
            print("თხლად ჩაიცვი")
        case .cloudy(let temperature) where temperature > 10:
            print("რამე შემოიცვი")
        case .rainy:
            print("ქოლგა არ დაგავიწდეს")
        case .snowy:
            print("თბილად ჩაიცვი")
        default:
            print("შეამოწმე ტემპერატურა")
        }
    }
}

// დავალება 4
struct Kanye {
    var album: String
    var releaseYear: Int
}

func newalbums(year: Int, kanyes: [Kanye]) {
    let filteredAlbums = kanyes.filter { $0.releaseYear > year }
    for album in filteredAlbums {
        print("\(album.album) გამოუშვეს \(year) წლის შემდეგ.")
    }
}

// დავალება 5
class LazyInitiaizer {
    lazy var cachedData: String = {
        return "lazy ინიციალიზებულია"
    }()
}

let fetcher = LazyInitiaizer()
print(fetcher.cachedData)

