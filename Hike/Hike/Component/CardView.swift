//
//  CardView.swift
//  Hike
//
//  Created by Ezgi Karahan on 6.09.2023.
//

import SwiftUI


struct CardView: View {
    
    ///exploreMore butonuna basıldığında rastgele resim getirsin diye kullanmak üzere 2 değişken tanımlıyorum.
    @State private var imageNumber : Int = 1
    @State private var randomNumber: Int = 1
    
    @State private var isShowingSheet: Bool = false //sağ küçük butona basıldığında sheet geçişi olsun diye bu değişkeni tanımladım.

    func randomImage(){
        print("----BUTONA BASILDI----")
        
        ///random sayı getiren ve bunu resim numarasına eşitleyen bir fonksiyon yazıyorum fakat burada random olduğu için iki kere üst üste aynı sayı da gelebilir bunu önlemek için repeat-while döngüsü yazıyorum.
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber ///üretme koşulumuz da budur.
        imageNumber = randomNumber ///Eğer randomNumber ve imageNumber farklı ise, imageNumber değişkenine randomNumber'ı atar. Bu, bir sonraki iterasyonda önceki sayıyı hatırlamak için kullanılır.
    }
    
    var body: some View {
        ZStack {
            CustomBacgroundView() ///burada custombackgroundView dosyamı çağırdım ve yeşil arkaplan geldi.
            
            
            VStack{
                
                VStack(alignment: .leading) { //METİN HIKING-BUTON İKİLİSİYLE ALT ALTA OLDUĞU İÇİN VSTACK
                    
                    HStack { //BUTON VE HİKİNG YAZISI YANYANA OLACAK HSTACK
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight,
                                        .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                        )
                        
                        Spacer() ///buton ve hiking arasına boşluk koydum.
                        
                        //SAĞ ÜST BUTON
                        Button(){
                            //action
                            print("butona basıldı")
                            isShowingSheet.toggle() ///toggle bool veriyi tersine çeviriyordu.
                        }label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){///eğer isShowSheet true ise SettingsView() adlı sayfa açılır.isPresented parametresi, sayfanın açık olup olmadığını belirler. SHeet --> bir sayfanın içinde başka sayfa açılmasını sağlar genellikle ekranın altından bir sayfa açılır, navigationLink ise genellikle navigationBar kullanılarak yapılır ve burada tamamen başka bir sayfa açılır
                            SettingsView()
                                .presentationDragIndicator(.visible) ///sheet açıldığında yukarıda ince çizgili bir sembol çıkmasını sağlıyor, bu sayede kullanıcı açılan sayfanın bir eklenti olduunu, aşağıya indirilebildiğini görebilir.
                                .presentationDetents([.medium, .large]) ///bu da açılan sheetin sayfanın yarısına kadar açılmasını sağlayacak, böylede hiking ekranı da görünecek.
                        }
                }
                    Text("fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }.padding(.horizontal,30) ///başlık ve alttaki yazıları vstack için yatayda boşluk veriyorum.
                
                
                //ANA İÇERİK
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")///imageNumber butona her basıldığında randomNumber funcına göre her değiştiğinde burada bana farklı bir resim gelecek
                        .resizable()
                    .scaledToFit()
                    .animation(.default, value: imageNumber) //resmeme geçişlerde animasyon ekliyorum.
                    
                }
                
                //EXPLOREMORE BUTONU
                Button{
                    print("butona basıldı")
                    randomImage()///yukarıda en başya tanımlı olani fonksiyonu çağırıyorum.
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [
                            .customGreenLight, .customGreenMedium],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        ).shadow(color: .black.opacity(0.25), radius: 0.25, x:1, y:2)
                    
                }
                //GradientButtonStyle dosyasının içindeki gradientButton structını burada çağırıyorum.
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
