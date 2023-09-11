//
//  CustomBacgroundView.swift
//  Hike
//
//  Created by Ezgi Karahan on 6.09.2023.
//

import SwiftUI

struct CustomBacgroundView: View {
    var body: some View {
        ZStack {
            //Burada colorextension dosyamda asset color isimleriyle oluşturduğum kendi color extensionlarımı kullanacağım.
            
            //DERİNLİK VERDİM
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
            
            //AYDINLATMA VERDİM
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            
            
            //YÜZEY RENGİ
            LinearGradient(colors: [
                Color.customGreenLight,
                Color.customGreenMedium],
                           startPoint: .top,
                           endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

struct CustomBacgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBacgroundView()
            .padding()
    }
}
