public class Romanos {
    internal let initialValue: Int
    public init(initialValue:Int) {
        self.initialValue = initialValue
    }
    
    fileprivate func evaluateZeroPlusThree( _ value: Int, _ starter: Int, _ sign: String, _ result: inout String) {
        if value >= starter && value < (starter + 4)  {
            let addOneTimes = value - starter
            result = result +  "\(value): \(sign)" + String(repeating: "I", count: addOneTimes)
        }
    }
    
    fileprivate func evaluatePreviousFiveMultiple(_ value: Int, _ result: inout String, _ checkValue:Int, _ sign: String, _ sufix: String) {
        if value == checkValue {
            result = result + "\(value): \(sufix)I\(sign)"
        }
    }
    
    public func printRomanos() -> String {
        var result: String = ""
        var value: Int = 1
        
        while value <= self.initialValue{
            if value < 4  {
                result = result +  "\(value): " + String(repeating: "I", count: value)
            }
            evaluatePreviousFiveMultiple(value, &result, 4, "V", "")
            evaluateZeroPlusThree( value, 5, "V", &result)
            evaluatePreviousFiveMultiple(value, &result, 9, "X", "")
            evaluateZeroPlusThree( value, 10, "X", &result)
            evaluatePreviousFiveMultiple(value, &result, 14, "V", "X")
            evaluateZeroPlusThree( value, 15, "XV", &result)
            
            if value < self.initialValue {
                let comma: String = ((self.initialValue > 1 && value < self.initialValue ) ? ", " : "")
                result = result + comma
            }
            
            
            value+=1
        }
        return result;
    }
}
