//
//  CustomCircleView.swift
//  Hike
//
//  Created by Ezgi Karahan on 10.09.2023.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradient : Bool = false
    
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors:[
                        .customIndigoMedium,
                        .customSalmonLight],
                    startPoint:isAnimateGradient ? .topLeading: .bottomLeading, ///isAnimateGradient adlı bir durum değişkeni kontrol edilir. Eğer bu durum true ise, başlangıç noktası .topLeading olur. Eğer false ise, başlangıç noktası .bottomLeading olur.
                    endPoint:isAnimateGradient ? .bottomTrailing: .topTrailing
                )
            )
            .onAppear{
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses:true)){ ///withAnimation bir animasyon bloğunu başlatır, bu blok içindeki değişiklikler animasyonlu şekilde gerçekleşecektir.
                    isAnimateGradient.toggle()///toggle değişkeni tersine cevirir. yukarıda isAnimated varsayılan olarak falsetu, true yapar.
                }
            }
            .frame(width: 256, height: 256)
        
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
