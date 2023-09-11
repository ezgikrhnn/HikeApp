//
//  CustomListRowView.swift
//  Hike
//
//  Created by Ezgi Karahan on 10.09.2023.
//

import SwiftUI

struct CustomListRowView: View {
    
    //SATIRLAR İÇİN BAZI ÖZELLİKLER TANIMLIYORUM.
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color

    var body: some View {
        //SIRALI LİST ŞEKLİNDEKİLER
        LabeledContent{
            Text(rowContent)
        }label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {  //list şeklinde olmalarını veren şey burada LİST tanımlaması yapmamız
            CustomListRowView(rowLabel: "Designer",
                              rowIcon: "paintpalette",
                              rowContent: "John Doe",
                              rowTintColor: .pink)
            
            
        }
    }
}
