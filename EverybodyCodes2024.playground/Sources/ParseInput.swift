import Foundation

//public func separateInputByLines(resource: String, type: String) -> [String] {
public func separateInputByLines(filename: String) -> [String] {
  let (resource, type) = separateFilename(filename: filename)
  let filePath = Bundle.main.path(forResource: resource, ofType: type)!
  do {
    let data = try String(contentsOfFile: filePath, encoding: .utf8)
    let arrayOfData = data.components(separatedBy: .newlines)
    return arrayOfData
  } catch let error {
    print("caught error processing input data file...")
      print(error)
      return []
  }
}

public func separateFilename(filename: String) -> (String, String) {
  let file = filename.components(separatedBy: ".")
  return(file[0], file[1])
}

public func separateLine(using: String, line: String) -> (String, String) {
  let splitLine = line.components(separatedBy: using)
  return (splitLine[0], splitLine[1])
}


