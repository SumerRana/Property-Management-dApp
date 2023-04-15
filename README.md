# Property-Management-dApp
A decentralized Property Management System to add transparency, immutability and democracy to property ownership data

The project is a smart contract written in Solidity, a programming language designed specifically for developing decentralized applications on the Ethereum blockchain. The contract defines a real estate system where properties can be added, transferred, and accessed by their ID.

The contract contains several key components:

Enumerated Property Type: The contract defines an enum for PropertyType that allows a property to be categorized as RESIDENTIAL, COMMERCIAL, or INDUSTRIAL.

PropertyStruct: The contract also defines a struct called PropertyStruct which contains the following properties: propertyID, location, propertyType, size, currentOwner, and currentOwnershipTransferDate. These properties are used to store the details of each property added to the system.

PropertyErrors: The contract defines an enum for PropertyErrors which contains two values: Property_NOT_FOUND and Property_ALREADY_EXISTS. These values are used to signal when a property is not found or already exists.

PropertyMapping: The contract uses a mapping called propertyMapping to map each property ID to its corresponding PropertyStruct.

addProperty(): This function allows a property to be added to the system by taking in the propertyID, location, propertyType, size, currentOwner, and currentOwnershipTransferDate as parameters. The function first checks if the property already exists in the system by checking if its propertyID exists in the propertyMapping. If it does not exist, it creates a new PropertyStruct and adds it to the propertyMapping. If it does exist, it returns an error message stating that the property already exists.

transferProperty(): This function allows the currentOwner and currentOwnershipTransferDate of a property to be updated by taking in the propertyID, newOwner, and transferDate as parameters. The function first checks if the property exists in the system by checking if its propertyID exists in the propertyMapping. If it does exist, it updates the currentOwner and currentOwnershipTransferDate of the PropertyStruct associated with the propertyID. If it does not exist, it returns an error message stating that the property is not registered.

getPropertyByID(): This function allows a property to be accessed by its propertyID. It takes in the propertyID as a parameter and returns the PropertyStruct associated with that propertyID. If the property does not exist, it returns an error message stating that the property is not registered.

Overall, this smart contract provides a simple but effective way to manage properties in a decentralized manner on the Ethereum blockchain. It demonstrates the power and versatility of blockchain technology in solving real-world problems, such as managing property ownership.
