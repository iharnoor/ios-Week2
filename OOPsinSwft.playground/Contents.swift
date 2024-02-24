import Foundation

class Story1 {

    static func printEmployeeSalary(_ employee: Employee) {
        switch employee.employeeType {
        case "Contractor":
            print("Contractor Salary: $100,000")
        case "Full Time":
            print("Full Time Salary: $150,000")
        case "Intern":
            print("Intern Salary: $50,000")
        default:
            break
        }
    }

    static func printHelloWorld() {
        for i in 1...5 {
            print("Hello World \(i)")
        }
    }

    static func calculate(_ input1: Int, _ input2: Int) -> Int {
        return input1 + input2
    }

    static func calculate2(_ a: Int, _ b: Int) {
        print(a + b)
    }
}

class Employee {
    var employeeName: String
    var employeeType: String
    var employeeId: Int

    init(employeeName: String, employeeType: String, employeeId: Int) {
        self.employeeName = employeeName
        self.employeeType = employeeType
        self.employeeId = employeeId
    }

    var description: String {
        return "Employee Name: \(employeeName)\nEmployee First Character: \(employeeType)\nEmployee ID: \(employeeId)"
    }
}

class Contractor: Employee {
    let salary = "$100,000"

    override var description: String {
        return super.description + "\nSalary = \(salary)"
    }
}

class Intern: Employee {
    let salary = "$50,000"

    override var description: String {
        return super.description + "\nSalary = \(salary)"
    }
}

class FullTime: Employee {
    let salary = "$150,000"

    override var description: String {
        return super.description + "\nSalary = \(salary)"
    }
}
