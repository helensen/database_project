import mysql.connector as mysql

def connect(password_str):
    db = mysql.connect(
        host="localhost",
        user="root",
        passwd=password_str,
        database="beautysalon"
    )
    return db


# this  is a basid function will get employees by their positons
# we have Barber, Hair Stylist, and Massage Therapist as options
def get_employee_by_position(db):
    cursor = db.cursor()
    position = input("Enter Position: ")
    data = (position,)
    query = '''
            SELECT Name, Position
            FROM Employee
            WHERE Position = %s
            '''
    cursor.execute(query, data)
    results = cursor.fetchall()
    return results

# This function gets customers and the services they booked
def get_customer_services(db):
    cursor = db.cursor()
    query = '''
            SELECT c.Name AS CustomerName, s.Type AS ServiceType
            FROM Customer c
            JOIN Service s ON c.idService = s.idService
            '''
    cursor.execute(query)
    results = cursor.fetchall()
    return results

#This function returns Hairstyles that have price above the average price
def get_hairstyle_above_average_price(db):
    cursor = db.cursor()
    query = '''
            SELECT Style, Price
            FROM Hairstyle
            WHERE Price > (SELECT AVG(Price) FROM Hairstyle)
            '''
    cursor.execute(query)
    results = cursor.fetchall()
    return results


#This returns the number of hairstyles each employee does
def count_hairstyles_per_employee(db):
    cursor = db.cursor()
    query = '''
            SELECT idEmployee, COUNT(*) AS HairstyleCount
            FROM Hairstyle
            GROUP BY idEmployee
            '''
    cursor.execute(query)
    results = cursor.fetchall()
    return results

# Adds a new employee to the Employeee table

def add_employee(db):
    cursor = db.cursor()
    name = input("Enter Employee Name: ")
    position = input("Enter Position: ")
    query = '''
            INSERT INTO Employee (Name, Position)
            VALUES (%s, %s)
            '''
    cursor.execute(query, (name, position))
    db.commit()
    print(f"{name} was added successfully!")



# I tried to go above and beyond on this function
# deletes a customer from the customer_has_service table and checks if the customer ID is not in the table
def delete_service(db):
    cursor = db.cursor()
    customer_id = input("Enter customer ID: ")
    service_id = input("Enter service ID: ")
    query_check = '''
                  SELECT COUNT(*)
                  FROM Customer_has_Service
                  WHERE idCustomer = %s AND idService = %s
                  '''
    check_cursor = db.cursor()
    check_cursor.execute(query_check, (customer_id, service_id))
    count = check_cursor.fetchone()[0]
    if count == 0:
        print("Customer ID or Service ID does not exist in the customer_has_service table")
    else:
        query = '''
                DELETE FROM Customer_has_Service
                WHERE idCustomer = %s AND idService = %s
                '''
        cursor.execute(query, (customer_id, service_id))
        db.commit()
        print("Record deleted from Customer_has_Service successfully!")

#Main Function
def main():
    password_str = input("Enter MySQL password: ")
    connection = connect(password_str)
    while True:
        print("\nChoose an option:")
        print("1. Retrieve employees by position")
        print("2. Retrieve customer services")
        print("3. Retrieve services above average price")
        print("4. Count hairstyles per employee")
        print("5. Add an employee")
        print("6. Delete a service booked from Customer_has_Service")
        print("7. Exit")

        choice = input("Enter your choice: ")
        if choice == "1":
            employees = get_employee_by_position(connection)
            print("Employees by position:")
            for employee in employees:
                print(employee)
        elif choice == "2":
            customer_services = get_customer_services(connection)
            print("\nCustomer Services:")
            for customer_service in customer_services:
                print(customer_service)
        elif choice == "3":
            services_above_avg_price = get_hairstyle_above_average_price(connection)
            print("\nServices Above Average Price:")
            for service in services_above_avg_price:
                print(service)
        elif choice == "4":
            hairstyles_per_employee = count_hairstyles_per_employee(connection)
            print("\nHairstyles per Employee:")
            for hairstyle in hairstyles_per_employee:
                print(hairstyle)
        elif choice == "5":
            add_employee(connection)
        elif choice == "6":
            delete_service(connection)
        elif choice == "7":
            break
        else:
            print("Invalid choice. Please choose a valid option.")

    connection.close()


main()

