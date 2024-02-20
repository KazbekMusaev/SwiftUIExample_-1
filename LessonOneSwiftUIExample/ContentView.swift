//
//  ContentView.swift
//  LessonOneSwiftUIExample
//
//  Created by apple on 21.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Image(.header)
                    .resizable()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                HStack{
                    Text("Имя пользователя")
                        .font(Font.system(size: 24))
                        .bold()
                        .padding(.leading, 20)
                    Spacer()
                    Button {
                        print("12")
                    } label: {
                        Image(systemName: "phone.fill")
                    }
                    Button {
                        print("23")
                    } label: {
                        Image(systemName: "person")
                    }
                    .padding(.trailing, 20)
                }
                .foregroundStyle(.black)
                Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 14))
                    .padding(10)
                Button {
                    print("34")
                } label: {
                    Text("Подробнее")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                        .bold()
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                }

            }
            .background(.link)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding()

    }
}

#Preview {
    ContentView()
}
