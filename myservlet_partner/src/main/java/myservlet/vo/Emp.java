package myservlet.vo;

public class Emp {
	public int employeeId;
	public double salary;
	public String lastName;
	
	public Emp(int employeeId, int salary, String lastName) {
		this.employeeId = employeeId;
		this.salary = salary;
		this.lastName = lastName;
	}
	public Emp() {
		
	}
	
	
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	@Override
	public String toString() {
		return "Emp [employeeId=" + employeeId + ", salary=" + salary + ", lastName=" + lastName + "]";
	}
	
	
	
}
