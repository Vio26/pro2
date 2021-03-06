//
//  ContentView.swift
//  Project2
//
//  Created by user on 04.06.2021.
//

import SwiftUI


struct SignInView: View {
    
    @State var email = ""
    @State var password = ""
    @ObservedObject var user = User()
    @Binding var page: Int
    
    var body: some View {
        
        ZStack{// главный стек в нем будут храниться другие стеки
            
            VStack{// вертикальный стек для текста
                
                Image("qqq")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding(.vertical,40)

                //выравнивание текста емаил и пароль по левому краю
                VStack(alignment: .leading) {
            
                    Text("EMAIL")
                        .font(
                        .custom("Areal", size: 15))//изменение шрифта и его размер
                        .foregroundColor(.black)
                        .padding(.trailing, 5)
                
//                HStack{
//                    Image(systemName: "envelope")
//                        .padding(.leading)
                    
                        TextField("name@email.com", text: $email)//делаем рамочку для ввода текста
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal,5)
                 /////////////////////////////////////////////////////////////////////////////////////
                    
                    VStack(alignment: .leading){
                Text("PASSWORD")
                        .font(
                        .custom("Areal", size: 15))//изменение шрифта и его размер
                        .foregroundColor(.black)
                        .padding(.trailing, 35)
                   

                VStack{
                TextField("********", text: $password)//делаем рамочку для ввода текста
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal,5)
                 
                        ////////////////////////////////////////////////////////////////////////////

                   
                    Button(action: {
                        user.login(email: email, password: password)
                            page = 2
                        
                    //pass=passs
                        
                    },label: {
                    Text("SIGN IP")
                        .foregroundColor(.white)
                        .frame(width: 380, height: 50, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(30)
                })
                    .padding(.vertical,50)
                }
                    Button(action: {
                       // log=log
                    }, label: {
                    Text("Login")
                    .foregroundColor(.blue)
                })
                    .padding(.horizontal,150)
            }
                        
        }
                    
                }
            }
        }
    

 struct ContentView_Previews: PreviewProvider {
                    static var previews: some View {
                        SignInView(page: .constant(1))
            }
    
 }
                    
               
}
