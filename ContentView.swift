//
//  ContentView.swift
//  Quadratic Project
//
//  Created by IIT PHYS 440 on 1/20/23.
//

import SwiftUI

struct ContentView: View {
    @State var variableA = ""
    @State var variableB = ""
    @State var variableC = ""
    @State var solutionclassictypestring = ""
    @State var firstclassicsolutionstring = ""
    @State var secondclassicsolutionstring = ""
    @State var solutiontypestring = ""
    @State var firstsolutionstring = ""
    @State var secondsolutionstring = ""
    @State var discriminantstring = ""
    @State var solvedDisc1 = ""
    @State var solvedDisc2 = ""
    @State var errormarginstring1 = ""
    @State var errormarginstring2 = ""
    @State var errormargin1 = 0.0
    @State var errormargin2 = 0.0
    @State var marginstring = ""


   
    var body: some View {
   
            VStack {
                HStack {
                    Text("a = ")
                    TextField("Enter a value for a", text: $variableA)
                        .padding()
            
                    Text("b = ")
                    TextField("Enter a value for b", text: $variableB)
                        .padding()
            
                    Text("c = ")
                    TextField("Enter a value for c", text: $variableC)
                        .padding()
                }
             
                Button(action: {
                    self.calculateQuadratic()
                    self.calculateNewQuadratic()
                }) {
                    Text ("Calculate Quadratic Solutions Using Both Methods")
                }
                
                Text(discriminantstring)
                    .padding()

                HStack{
                    VStack{
                        
                        Text(solutionclassictypestring)
                            .padding()
                        Text(firstclassicsolutionstring)
                            .padding()
                        Text(secondclassicsolutionstring)
                            .padding()
                        Text(solvedDisc1)
                            .padding()
                        Text(errormarginstring1)
                    }
                    VStack{

                        Text(solutiontypestring)
                            .padding()
                        Text(firstsolutionstring)
                            .padding()
                        Text(secondsolutionstring)
                            .padding()
                        Text(solvedDisc2)
                            .padding()
                        Text(errormarginstring2)
                            .padding()
                    }
                }
               Text(marginstring)
              
                
            }
        
                
    }
    /// <#Description#>
    func calculateQuadratic(){
        
        let myquadraticclassinstance = ClassicQuadratic()
        myquadraticclassinstance.variableA = variableA
        myquadraticclassinstance.variableB = variableB
        myquadraticclassinstance.variableC = variableC
        
        myquadraticclassinstance.calculateTypeofSolutions()
        
        
      //  let solutiontypestring = myquadraticclassinstance.calculateTypeofSolutions(myquadraticclassinstance.solutionstring.0)
      //  let finalsolutionstring = myquadraticclassinstance.calculateTypeofSolutions(solutionstring.1)
        
        self.discriminantstring = "The discriminant for this equation is: \(myquadraticclassinstance.discriminant)"
        self.solutionclassictypestring = "The solutions of the classic quadratic are composed of \( myquadraticclassinstance.solutionstring.0)"
        self.firstclassicsolutionstring = "The first classic solution is \( myquadraticclassinstance.solutionstring.1) + \(myquadraticclassinstance.solutionstring.2)i"
        self.secondclassicsolutionstring = "The second classic solution is \( myquadraticclassinstance.solutionstring.3) - \(abs(myquadraticclassinstance.solutionstring.4))i"
        self.solvedDisc1 = "The discriminant, when using the outputted solutions, can be found to be \(myquadraticclassinstance.solvedDisc)"
        self.errormarginstring1 = "The error value from rounding errors and subtractive cancellation is \(myquadraticclassinstance.errormargin)"
        errormargin1 = myquadraticclassinstance.errormargin
    }
    
    /// <#Description#>
    func calculateNewQuadratic(){
        
        let mynewquadraticclassinstance = NewQuadratic()
        mynewquadraticclassinstance.variableA = variableA
        mynewquadraticclassinstance.variableB = variableB
        mynewquadraticclassinstance.variableC = variableC
        
        mynewquadraticclassinstance.calculateTypeofSolutions()
        
        
      //  let solutiontypestring = myquadraticclassinstance.calculateTypeofSolutions(myquadraticclassinstance.solutionstring.0)
      //  let finalsolutionstring = myquadraticclassinstance.calculateTypeofSolutions(solutionstring.1)
    
        self.solutiontypestring = "The solutions of the new quadratic are composed of \( mynewquadraticclassinstance.solutionstring.0)"
        self.firstsolutionstring = "The first solution is \( mynewquadraticclassinstance.solutionstring.1) + \(mynewquadraticclassinstance.solutionstring.2)i"
        self.secondsolutionstring = "The second solution is \( mynewquadraticclassinstance.solutionstring.3) - \(abs(mynewquadraticclassinstance.solutionstring.4))i"
        self.solvedDisc2 = "The discriminant, when using the outputted solutions, can be found to be \(mynewquadraticclassinstance.solvedDisc)"
        self.errormarginstring2 = "The error value from rounding errors and subtractive cancellation is \(mynewquadraticclassinstance.errormargin)"
        
        errormargin2 = mynewquadraticclassinstance.errormargin
    
    }
    /*
        let precisionmargin = abs(errormargin1) - abs(errormargin2)
    if precisionmargin < 0 {
        marginstring = "The classic equation is more precise"
    }
    if precisionmargin > 0 {
        marginstring = "The new equation is more precise"
    }
    if precisionmargin == 0 {
        marginstring = "Both equations are equally precise for these specific values"
    }
    else {
        marginstring = "ERROR"
    }
     */
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
