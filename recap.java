// Vehicle.java (Abstraction)
public abstract class Vehicle {
    private String brand;

    public Vehicle(String brand) {
        this.brand = brand;
    }

    public abstract void start(); // Abstract method

    public String getBrand() {
        return brand;
    }
}

// Car.java (Inheritance)
public class Car extends Vehicle {
    private int numberOfDoors;

    public Car(String brand, int numberOfDoors) {
        super(brand);
        this.numberOfDoors = numberOfDoors;
    }

    @Override
    public void start() {
        System.out.println("Car is starting.");
    }

    public int getNumberOfDoors() {
        return numberOfDoors;
    }
}

// Motorcycle.java (Inheritance)
public class Motorcycle extends Vehicle {
    private boolean hasSideCar;

    public Motorcycle(String brand, boolean hasSideCar) {
        super(brand);
        this.hasSideCar = hasSideCar;
    }

    @Override
    public void start() {
        System.out.println("Motorcycle is starting.");
    }

    public boolean hasSideCar() {
        return hasSideCar;
    }
}

// Garage.java (Polymorphism)
public class Garage {
    public void startVehicle(Vehicle vehicle) {
        System.out.println("Starting vehicle in the garage.");
        vehicle.start();
    }
}

// Main.java
public class Main {
    public static void main(String[] args) {
        Car myCar = new Car("Toyota", 4);
        Motorcycle myMotorcycle = new Motorcycle("Harley-Davidson", false);

        Garage myGarage = new Garage();

        // Polymorphism
        myGarage.startVehicle(myCar);
        myGarage.startVehicle(myMotorcycle);

        // Encapsulation
        System.out.println("Car Brand: " + myCar.getBrand());
        System.out.println("Motorcycle Brand: " + myMotorcycle.getBrand());
    }
}
