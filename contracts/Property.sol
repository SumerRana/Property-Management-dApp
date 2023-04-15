// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract main {
    // Declare enum for types of properties
    enum PropertyType {
        RESIDENTIAL,
        COMMERCIAL,
        INDUSTRIAL
    }

    // Declare struct for a property
    struct PropertyStruct {
        uint256 propertyID;
        string location;
        PropertyType propertyType;
        string size;
        string currentOwner;
        string currentOwnershipTransferDate;
    }

    // Declare enum for possible property errors
    enum PropertyErrors {
        Property_NOT_FOUND,
        Property_ALREADY_EXISTS
    }

    // Declare mapping to store properties by ID
    mapping(uint256 => PropertyStruct) propertyMapping;

    // Function to add a new property
    function addProperty(
        uint256 _propertyID,
        string memory _location,
        PropertyType _propertyType,
        string memory _size,
        string memory _currentOwner,
        string memory _currentOwnershipTransferDate
    ) public returns (string memory) {
        // Check if property with given ID already exists
        if (propertyMapping[_propertyID].propertyID == _propertyID) {
            return "Property already exists";
        } else {
            // If property doesn't exist, create new PropertyStruct and add to mapping
            propertyMapping[_propertyID] = PropertyStruct(
                _propertyID,
                _location,
                _propertyType,
                _size,
                _currentOwner,
                _currentOwnershipTransferDate
            );
            return "Property added suceesfully";
        }
    }

    // Function to transfer ownership of a property
    function transferProperty(
        uint256 _propertyID,
        string memory _newOwner,
        string memory _tranferDate
    ) public returns (string memory) {
        // Check if property with given ID exists
        if (propertyMapping[_propertyID].propertyID == _propertyID) {
            // If property exists, update currentOwner and currentOwnershipTransferDate
            PropertyStruct storage property = propertyMapping[_propertyID];
            property.currentOwner = _newOwner;
            property.currentOwnershipTransferDate = _tranferDate;
            return "Transfer updated successfully";
        } else {
            // If property doesn't exist, return error message
            return "Property not registred";
        }
    }

    // Function to get a property by ID
    function getPropertByID(uint256 _propertyID)
        public view
        returns (
            uint256 PropertyID,
            string memory location,
            string memory Property_Type,
            string memory size,
            string memory Owner,
            string memory PurchasedOn
        )
    {
        // Check if property with given ID exists
        if (propertyMapping[_propertyID].propertyID == _propertyID) {
            // If property exists, retrieve PropertyStruct and return relevant data
            PropertyStruct storage property = propertyMapping[_propertyID];
            return (
                property.propertyID,
                property.location,
                toString(property.propertyType),
                property.size,
                property.currentOwner,
                property.currentOwnershipTransferDate
            );
        }
        else {
            // If property doesn't exist, revert with error message
            revert("Property not registerd");
        }
    }

    // Function to convert PropertyType enum to string
    function toString(PropertyType _propertyType) private pure returns(string memory) {
        if (PropertyType.RESIDENTIAL == _propertyType) {
            return "RESIDENTIAL";
        } else if (PropertyType.COMMERCIAL == _propertyType) {
            return "COMMERCIAL";
        } else if (PropertyType.INDUSTRIAL == _property

        } else if (PropertyType.INDUSTRIAL == _propertyType) {
            return "INDUSTRIAL";
        } else {
            return "";
        }

    }
}
