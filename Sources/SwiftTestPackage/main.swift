import Foundation

let queue = DispatchQueue(label: "Test", qos: .userInitiated, attributes: .concurrent)
let group = DispatchGroup()

let started = Date().timeIntervalSince1970

print("Hello, started at \(started)")

queue.async(group: group, flags: .barrier) {
    let entered = Date().timeIntervalSince1970
    print("Entered async block 1 at \(entered) (𝚫 \(entered - started))")
}

queue.async(group: group, flags: .barrier) {
    let entered = Date().timeIntervalSince1970
    print("Entered async block 2 at \(entered) (𝚫 \(entered - started))")
}

group.wait()
