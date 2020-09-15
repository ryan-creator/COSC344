public class Employee {

    private String firstName;
    private String lastName;
    public int salary;

    public Employee(String firstName, String lastName, int salary) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.salary = salary;
    }

    public String toString() {
        return (firstName + " " + lastName + " : " + salary); 
    }
}
