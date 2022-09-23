//
//  ContentView.swift
//  tabBar
//
//  Created by utku enes alagöz on 21.09.2022.
//

import SwiftUI
import SlidingTabView
import iPhoneNumberField
import Contacts

struct ContentView: View {
    let skyBlue = Color(red: 0.4627, green: 0.5392, blue: 0.7)
    let skyBluu = Color(red: 2.7627, green: 0.9392, blue: 0.4)
    @State private var tabIndex = 0
    @State private var email = "utkuenesalagoz@icloud.com"
    @State private var telefon = "0(000)-000 00 00"
    @State private var adress = "Malatya/Battalgazi Tandoğan mahallesi"
    @State private var isim = "Utku Enes"
    @State private var soyİsim = "Alagöz"
    
    
    
 
    
    var body: some View {
        
       
        ZStack {
            
            
                
            SlidingTabView(selection: $tabIndex, tabs: ["Kişi","Bilgiler","Settings"],animation: .easeInOut,activeAccentColor: .black,selectionBarColor: .black)
                .background(skyBlue)
                
                    
                   
                        
                        
                    }
                    
                    if tabIndex == 0 {
                        
                        
                      
                        Label("Utku Enes Alagöz", image:"person")
                            .labelStyle(VerticalLabelStyle())
                            .frame(width: 410,height: 400)
                            .font(.system(size: 30))
                            .background(Color("g"))
                        
                            
                        
                        
                            
                    }else if tabIndex == 1{
                       
                        Form {
                            Section(header: Text("Bilgiler")) {
                                Text("İsim: \(isim)")
                                Text("Soyisim: \(soyİsim)")
                                Text("Telefon Numarası: \(telefon)")
                                Text("Email Adresi: \(email)")
                                Text("Adres: \(adress)")
                                Image("person")
                            }
                           
                        }
                        
                        
                        
                    }else if tabIndex == 2 {
                       
                        Form {
                            Section(header: Text("Düzenleme Sayfası")) {
                                TextField("İsim: ",text: $isim)
                                TextField("Soyisim: ",text: $soyİsim)
                                iPhoneNumberField("Telefon numarası: ",text: $telefon)
                                    .maximumDigits(10)
                                TextField("Email Adresi: ",text: $email)
                                TextField("Adres: ",text: $adress)
                                
                            }
                            
                        }
                        
                        
                        
                            
                        
                    }
            
           
                Spacer()
            
            }
       
}
   
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct YellowBackgroundLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .padding()
            .background(Color("g"))
    }
}
struct VerticalLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.title
            Spacer()
            configuration.icon
        }
    }
}
// Bu kısımlar text ve label denemeleri.
/* ikinci sayfa
 Text("Utku Enes Alagöz")
     .font(.title)
     .frame(width: 410, height: 50)
     .background(Color("g"))
     .cornerRadius(15.0)
 Text("Email Adresi:   \(email)")
     .font(.system(size: 20))
     .frame(width: 410, height: 50)
     .background(Color("g"))
     .cornerRadius(15.0)

 Text("Telefon Numarası:   \(telefon)")
     .font(.system(size: 20))
     .frame(width: 410, height: 50)
     .background(Color("g"))
     .cornerRadius(15.0)
 Text("Adres Bilgisi: \(adress)")
     .font(.system(size: 20))
     .frame(width: 410, height: 50)
     .background(Color("g"))
     .cornerRadius(15.0)
 */
/*Text("Telefon Numarası: ") üçüncü sayfa
    .font(.title)
    .frame(width: 410, height: 25)
   
    .cornerRadius(15.0)
iPhoneNumberField(telefon, text: $telefon)

    
    .maximumDigits(10)
    .background(Color("g"))
    .cornerRadius(15.0)
    .font(.system(size: 20))
    
Text("Email Adresi:")
    .font(.title)
    .frame(width: 410, height: 25)
    
    .cornerRadius(15.0)
TextField("\(email)", text: $email)
    .font(.system(size: 20))
    .background(Color("g"))
    .cornerRadius(15.0)
    
    
Text("Adres:")
    .font(.title)
    .frame(width: 410, height: 25)
    
    .cornerRadius(15.0)
TextField("\(adress)",text: $adress)

    .background(Color("g"))
    .font(.system(size: 20))
    .textCase(.uppercase)
    .cornerRadius(15.0)
    .frame(width: 410, height: 30)
 */

    /*üçüncü sayfa
Label {
    Text("Telefon numarası:")
    iPhoneNumberField(telefon,text: $telefon)
        .maximumDigits(10)
   
    
} icon: {
    Capsule().frame(width: 22, height: 22)

}

Label {
    Text("Email Adresi:")
    TextField("\(email)",text: $email)
} icon: {
    Capsule().frame(width: 22, height: 22)

}

Label {
    Text("Adres:")
    TextField("\(adress)",text: $adress)
} icon: {
    Capsule().frame(width: 22, height: 22)

}
     */

/*Text("Utku Enes Alagöz")   ilk sayfa
    .font(.title)
    
    .frame(width: 410, height: 50)
    .background(Color("g"))
    .cornerRadius(15.0)
    
Image("xxx")
    .resizable()
    .frame(width: 410, height: 700)
    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    */

/*İkinci sayfa
Label("İsim: Utku Enes \n\nSoyisim: Alagöz  \n\nTelefon Numarası: \(telefon)\n\nAdres: \(adress)\n\nEmail Adresi: \(email)", systemImage: "book.fill")
    .labelStyle(YellowBackgroundLabelStyle())
*/
