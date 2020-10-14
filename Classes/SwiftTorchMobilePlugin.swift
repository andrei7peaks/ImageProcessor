import UIKit


public class ImageProcessor {
	
	enum ModuleError: Error {
		case invalidPathArgument
	}
	
	var modelPath: String?
		
	func initOpenCV(_ args: Any?) throws -> Any {
		return true
	}
	
	func setModelPath(_ args: Any?) throws -> Any{
		guard let path = args as? String else {
			throw ModuleError.invalidPathArgument
		}
		modelPath = path
		return true
	}
	
	func predictset(_ args: Any?) throws -> Any {
		return "[0.984]"
	}
	
}
