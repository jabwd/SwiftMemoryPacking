
func printInformation<T>(_ item: T) {
	print("\(type(of: item))")
	print("=> Size:          \(MemoryLayout<T>.size)")
	print("=> Alignment:     \(MemoryLayout<T>.alignment)")
	print("=> Stride:        \(MemoryLayout<T>.stride)")
	print("==================================================================")
}

class TestClass {
	let component: Int = 0
	let component2: Bool = false
	let component3: UInt64 = 0
	let component4: UInt16 = 0
	
	init() {
		
	}
}

struct EmptyStruct {}

struct BigStruct {
	let component1: UInt64 = 0
	let component4: UInt16 = 0
	let component2: UInt64 = 0
	let component6: Bool = false
	let component3: UInt32 = 0
	let component5: UInt8 = 0
}

struct OptimizedStruct {
	let component1: UInt64 = 0
	let component2: UInt64 = 0
	let component3: UInt32 = 0
	let component4: UInt16 = 0
	let component5: UInt8 = 0
	let component6: Bool = false
}

printInformation(TestClass())
printInformation(EmptyStruct())
printInformation(BigStruct())
printInformation(OptimizedStruct())
