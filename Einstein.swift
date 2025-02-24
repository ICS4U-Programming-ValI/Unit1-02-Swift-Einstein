//
//  Einstein.swift
//
//  Created by Val I on 2025-02-21.
//  Version 1.0
//  Copyright (c) 2025 Val I. All rights reserved.
//
//  This program calculates E=mc^2
//  given mass.

import Foundation

// Speed of light in meters per second
let SPEED_OF_LIGHT: Double = 2.998e8

// Define an error for invalid mass
enum InputError: Error {
    case invalidNumber
}

// Prompt the user for mass
print("Enter the mass of the object in kilograms: ")
let mass = readLine()!
do {
    // Read mass and ensure it is non-nil and non-empty
    guard let mass = Double(mass) else {
        throw InputError.invalidNumber
    }
    
    // Ensure the mass is not negative
    if mass < 0 {
        print("Mass cannot be negative.")
    } else {
        // Calculate the energy
        let energy = mass * pow(SPEED_OF_LIGHT, 2)
        // Output the energy in scientific notation
        print(String(format: "The energy released is %.3e J.", energy))
    }
} catch InputError.invalidNumber {
    print("Please enter a valid number for the mass.")
}
