    import XCTest
    @testable import Romanos
    
    final class RomanosTests: XCTestCase {
        private var results:Array<String> = []
        override func setUp() {
            results.append("1: I")
            results.append(results[0] + ", 2: II")
            results.append(results[1] + ", 3: III")
            results.append(results[2] + ", 4: IV")
            results.append(results[3] + ", 5: V")
            results.append(results[4] + ", 6: VI")
            results.append(results[5] + ", 7: VII")
            results.append(results[6] + ", 8: VIII")
            results.append(results[7] + ", 9: IX")
            results.append(results[8] + ", 10: X")
            results.append(results[9] + ", 11: XI")
            results.append(results[10] + ", 12: XII")
            results.append(results[11] + ", 13: XIII")
            results.append(results[12] + ", 14: XIV")
            results.append(results[13] + ", 15: XV")
            results.append(results[14] + ", 16: XVI")
            results.append(results[15] + ", 17: XVII")
            results.append(results[16] + ", 18: XVIII")
        }
        
        fileprivate func evaluatefor(value: Int) {
            let result: String = Romanos(initialValue: value).printRomanos()
            print(result)
            XCTAssertEqual(result, results[value - 1])
        }
        
        func test01() {
            let value = 1
            XCTAssertEqual(Romanos(initialValue: value).printRomanos(), results[value - 1])
        }
        func test02() {
            let value = 2
            XCTAssertEqual(Romanos(initialValue: value).printRomanos(), results[value - 1])
        }
        func test03() {
            let value = 3
            XCTAssertEqual(Romanos(initialValue: value).printRomanos(), results[value - 1])
        }
        func test04() {
            let value = 4
            XCTAssertEqual(Romanos(initialValue: value).printRomanos(), results[value - 1])
        }
        func test05() {
            
            let value = 5
            XCTAssertEqual(Romanos(initialValue: value).printRomanos(), results[value - 1])
        }
        func test06() {
            let value = 6
            XCTAssertEqual(Romanos(initialValue: value).printRomanos(), results[value - 1])
        }
        func test07() {
            let value = 7
            XCTAssertEqual(Romanos(initialValue: value).printRomanos(), results[value - 1])
        }
        func test08() {
            let value = 8
            XCTAssertEqual(Romanos(initialValue: value).printRomanos(), results[value - 1])
        }
        func test09() {
            let value = 9
            evaluatefor(value: value)
        }
        func test10() {
            let value = 10; evaluatefor(value: value)
        }
        func test11() { let value = 11; evaluatefor(value: value) }
        func test12() { let value = 12; evaluatefor(value: value) }
        func test13() { let value = 13; evaluatefor(value: value) }
        func test14() { let value = 14; evaluatefor(value: value) }
        func test15() { let value = 15; evaluatefor(value: value) }
        func test16() { let value = 16; evaluatefor(value: value) }
        func test17() { let value = 17; evaluatefor(value: value) }
        func test18() { let value = 18; evaluatefor(value: value) }
        
    }
