//
//  NewQuadratic.swift
//  Quadratic Project
//
//  Created by IIT PHYS 440 on 1/24/23.
//

import SwiftUI
import Foundation

class NewQuadratic: NSObject {
    var variableA = "0.0"
    var variableB = "0.0"
    var variableC = "0.0"
    var solutionstring :(String, Double, Double, Double, Double) = ("", 0.0, 0.0, 0.0, 0.0)
    var discriminant = 0.0
    var i = 0.0
    
    func calculateTypeofSolutions()  {
        var a = Double(variableA)!
        var b = Double(variableB)!
        var c = Double(variableC)!
 
        
        
        discriminant = ((b * b) - (4 * a * c))
        
        switch discriminant {
        case let x where x < 0:
            let sqrtDisc = sqrt(-discriminant)
            solutionstring.0 = "Two Complex Roots"
            solutionstring.1 = ((-2 * c) * b) / ((b * b) + (sqrtDisc * sqrtDisc))
            solutionstring.2 = (-2 * c * sqrtDisc) / ((b * b) + (sqrtDisc * sqrtDisc))
            solutionstring.3 = ((-2 * c) * b) / ((b * b) + (sqrtDisc * sqrtDisc))
            solutionstring.4 = (-2 * c * sqrtDisc) / ((b * b) + (sqrtDisc * sqrtDisc) )
            
            
        case let x where x == 0:
            solutionstring.0 = "One Real Root"
            solutionstring.1 = (-2 * c) / (b)
            solutionstring.2 = 0.0
            solutionstring.3 = (-2 * c) / (b)
            solutionstring.4 = 0.0
        case let x where x > 0:
            solutionstring.0 = "Two Real Roots"
            let sqrtDisc = sqrt(discriminant)
            solutionstring.1 = (-2 * c) / (b + sqrtDisc)
            solutionstring.2 = 0.0
            solutionstring.3 = (-2 * c) / (b - sqrtDisc)
            solutionstring.4 = 0.0
        default:
            return solutionstring.0 = "ERROR"
        }
        
    
    }
    }
