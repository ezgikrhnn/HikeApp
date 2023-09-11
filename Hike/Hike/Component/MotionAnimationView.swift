//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Ezgi Karahan on 10.09.2023.
//

import SwiftUI

struct MotionAnimationView: View {
    
    
    //ÖZELLİKLER
    @State private var randomCircle : Int = Int.random(in: 6...12)
    
    //FONKSİYONLAR:
    
    var body: some View {
        ZStack{
            ForEach(0...randomCircle, id: \.self){ item in
                Circle()
                    .foregroundColor(.white)
            }
          
        }.frame(width: 256,height: 256)
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.teal.ignoresSafeArea()
            MotionAnimationView()
        }
        }
       
}
