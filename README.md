# Property-Management-dApp
A decentralized Property Management System to add transparency, immutability and democracy to property ownership data

The project is a smart contract written in Solidity, a programming language designed specifically for developing deceThe contract is a simple implementation of a property registry system using the Ethereum blockchain and Solidity smart contract programming language. The contract allows for the registration of properties with their unique identifier (propertyID), location, type (residential, commercial, or industrial), size, and owner information. The contract also allows for the transfer of ownership of properties and retrieval of property information.

The contract consists of a number of key components. First, there is the PropertyType enum, which defines the three types of properties that can be registered - residential, commercial, and industrial. The enum allows for easy validation of the type of property being registered, as well as easy conversion from the enum value to a string for display purposes.

Next, there is the PropertyStruct struct, which defines the properties that are registered in the contract. The struct contains fields for the propertyID, location, propertyType, size, currentOwner, and currentOwnershipTransferDate. These fields are used to uniquely identify a property and keep track of its ownership history.

The contract also includes an enum called PropertyErrors, which defines two possible error states that can occur when interacting with the contract. Property_NOT_FOUND is returned when an attempt is made to retrieve information about a property that does not exist, and Property_ALREADY_EXISTS is returned when an attempt is made to register a property with an ID that is already in use.

The core functionality of the contract is provided by the addProperty, transferProperty, and getPropertByID functions. The addProperty function takes in the various fields of a property and registers it in the contract. It first checks if the property with the given ID already exists in the mapping of properties, and returns an error message if it does. If the property does not already exist, it is added to the mapping and a success message is returned.

The transferProperty function allows for the transfer of ownership of a property. It takes in the ID of the property, the new owner's name, and the date of the transfer, and updates the currentOwner and currentOwnershipTransferDate fields of the corresponding PropertyStruct in the mapping. If the property does not exist in the mapping, an error message is returned.

The getPropertByID function allows for the retrieval of information about a property based on its ID. It takes in the ID of the property and returns its location, type, size, current owner, and ownership transfer date. If the property does not exist in the mapping, an error message is returned.

To convert the PropertyType enum value to a string, the contract includes a private function called toString. This function takes in a PropertyType value and returns a string representation of that value. It uses a series of if/else statements to match the PropertyType value to the corresponding string representation.

Overall, the contract provides a simple and easy-to-use property registry system. It could be extended to include additional functionality, such as the ability to search for properties based on location or size, or the ability to transfer ownership to multiple parties. However, it is important to note that this contract is a basic example and should not be used in production without significant testing and validation.
