import Foundation

let semaphore = DispatchSemaphore(value: 0)
let queue = DispatchQueue(label: "Test", qos: .userInitiated, attributes: .concurrent)

let started = Date().timeIntervalSince1970

print("Hello, started at \(started)")

queue.async {
    let entered = Date().timeIntervalSince1970
    print("Entered async block at \(entered) (𝚫 \(entered - started))")
    semaphore.signal()
}

semaphore.wait()
