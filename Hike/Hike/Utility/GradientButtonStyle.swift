//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Ezgi Karahan on 9.09.2023.
//


import SwiftUI  //bunu import ettim

//burada cardViewde çağırmak için butonumun geri kalanını yazıyorum.
struct GradientButton: ButtonStyle{
    
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,20)
            .background(
                ///butona basıldığında linear gradient kullanarak ufak da olsa bir renk değişimi olsun istiyorum.
                /// ? --> doğruysa içini çalıştır, : --> yanlışsa (iki noktadan sonrasını) çalıştır.
                configuration.isPressed ?
                LinearGradient(colors: [.customGrayMedium,.customGrayLight], startPoint: .top, endPoint: .bottom) ///aşağıdaki linear gradientin tam tersini yazdım. Doğruysa yani buton basılıysa bunu çalıştır ve buton görünümü değişsin
                :
            LinearGradient(colors: [.customGrayLight, .customGrayMedium],
                           startPoint: .top,
                           endPoint: .bottom)
            ).cornerRadius(40)
    }
}
