public class Romanos {
    internal let initialValue: Int
    public init(initialValue:Int) {
        self.initialValue = initialValue
    }
    
    fileprivate func evaluateZeroPlusThree( _ value: Int, _ result: inout String, _ initial: Int, _ sign: String) {
        if value >= initial && value < (initial + 4)  {
            let addOneTimes = value - initial
            result = result +  "\(value): \(sign)" + String(repeating: "I", count: addOneTimes)
        }
    }
    
    fileprivate func evaluatePreviousFiveMultiple(_ value: Int, _ result: inout String, _ checkValue:Int, _ sign: String, _ sufix: String) {
        if value == checkValue {
            result = result + "\(value): \(sufix)I\(sign)"
        }
    }
    
    fileprivate func completeValues(_ value: Int, _ result: inout String, _ initial: Int , _ sign: String, _ sufix: String = "") {
        if value == (initial - 1) {
            result = result + "\(value): \(sufix)I\(sign)"
        }
        if value >= initial && value < (initial + 4)  {
            let addOneTimes = value - initial
            if(value < initial) {
                result = result +  "\(value): \(sign)" + String(repeating: "I", count: addOneTimes)
            } else {
                result = result +  "\(value): \(sufix)\(sign)" + String(repeating: "I", count: addOneTimes)
            }
            
        }
    }
    
    public func printRomanos() -> String {
        var result: String = ""
        var value: Int = 1
        
        while value <= self.initialValue{
            if value < 4  {
                result = result +  "\(value): " + String(repeating: "I", count: value)
            }
            completeValues(value, &result, 5, "V")
            completeValues(value, &result, 10, "X")
            completeValues(value, &result, 15, "V", "X")
            if value < self.initialValue {
                let comma: String = ((self.initialValue > 1 && value < self.initialValue ) ? ", " : "")
                result = result + comma
            }
            
            
            value+=1
        }
        return result;
    }
}
