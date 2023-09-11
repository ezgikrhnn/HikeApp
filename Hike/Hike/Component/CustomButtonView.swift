//
//  CustomButtonView.swift
//  Hike
//
//  Created by Ezgi Karahan on 7.09.2023.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                    colors: [
                     .white, .customGreenLight, .customGreenMedium],
                    startPoint: .top,
                    endPoint: .bottom)
                )
               
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .customGrayLight, .customGrayMedium], startPoint: .top,
                        endPoint: .bottom),
                    lineWidth: 4) //bu içiboş kenarları altı siyah, üstü griye çalan çizgili bir çemberdir.
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                )
        }
        .frame(width: 58, height:58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
