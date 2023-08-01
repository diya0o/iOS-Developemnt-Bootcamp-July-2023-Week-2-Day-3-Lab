//
//  ContentView.swift
//  Week 2 Lab 3
//
//  Created by Diya Alowdah on 01/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State var passdata:String = "data pass"
    @State var changecolor :Bool = true
    @State var textfield:String = ""
    
    @ObservedObject var son = Father()
    
    
    var body: some View {
        NavigationStack {
           
            VStack{
            
                List {
                        Toggle(isOn: $changecolor) {
                            Text("Change Color")
                                
                        }
                   
                    NavigationLink(destination: SecondView(data: $passdata, field: $textfield), label:{Text("To SecondView")})
                    
                    
                    
                    SecondView(data: $passdata, field: $textfield)
                        
                    

                    
                   Button(action: {
                       son.cunter
                       += 1
                       
                       
                   }, label: {Text("cunter is : \(son.cunter)")})
                    
                    
                    
                    }
  
                
            }
            .navigationTitle("Main View")

            if changecolor == true{
                Color.gray
                    .cornerRadius(90)
            }else{
                
                Color.white
            }

            


               }

        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
