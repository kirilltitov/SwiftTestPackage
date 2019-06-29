import Foundation

let formatter = DateFormatter()
formatter.dateStyle = .long
formatter.timeStyle = .short
formatter.locale = Locale(identifier: "ru_RU")

print(formatter.string(from: Date(timeIntervalSince1970: 1561846736.749614)))
