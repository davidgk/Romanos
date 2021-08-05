public class Romanos {
    internal let initialValue: Int
    public init(initialValue:Int) {
        self.initialValue = initialValue
    }
    
    public func printRomanos() -> String {
        var result: String = ""
        var value: Int = 1
        
        while value <= self.initialValue{
            if value < 4  {
                result = result +  "\(value): " + String(repeating: "I", count: value)
            }
            if value == 4 {
                result = result + "\(value): IV"
            }
            if value >= 5 && value < 9  {
                let addOneTimes = value - 5
                result = result +  "\(value): V" + String(repeating: "I", count: addOneTimes)
            }
            if value == 9 {
                result = result + "\(value): IX"
            }
            if value >= 10 && value < 14  {
                let addOneTimes = value - 10
                result = result +  "\(value): X" + String(repeating: "I", count: addOneTimes)
            }
            if value == 14 {
                result = result + "\(value): XIV"
            }
            
            if value < self.initialValue {
                let comma: String = ((self.initialValue > 1 && value < self.initialValue ) ? ", " : "")
                result = result + comma
            }
            
            value+=1
        }
        return result;
    }
}
