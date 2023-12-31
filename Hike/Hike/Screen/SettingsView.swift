//
//  SettingsView.swift
//  Hike
//
//  Created by Ezgi Karahan on 10.09.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            Section { ///section tasarımda görünen beyaz alan, veri setlerini bölümlemede kullanılır.
                HStack{
                    Spacer() ///en başa ve sona spacer koyuyorum ki görüntü tam ortalansın.
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' Choice").fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }.foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)).padding(.top, 8)
                
                VStack(spacing: 8) {
                Text("Where can you find \nperfect tracks?")
                    .font(.title2)
                    .fontWeight(.heavy)

                    Text("The hike which look gorgeous in photos but is even better once you are actually there. The hike that you hope tp dp again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }.multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                    .frame(maxWidth: .infinity)///görünümün yatay yönde maksimum genişlik sınırlaması olmaz. Bu, görünümün ekranda tüm genişliği kaplaması anlamına gelir.
            }.listRowSeparator(.hidden) ///list içindeki ince satır cizgilerini kaldırdı.
            
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright ® all rights reserved.")
                }.padding(.vertical, 8)
            ){
              
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS,iPadOS", rowTintColor: .red)

                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Ezgi Karahan", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Ezgi Karahan", rowTintColor: .pink)
                
            
            }
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
