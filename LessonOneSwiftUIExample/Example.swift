//
//  Example.swift
//  LessonOneSwiftUIExample
//
//  Created by apple on 21.02.2024.
//

import SwiftUI
import Pow

struct PriceSlide: View {
  @State
  var isPriceRevealed = false

  var body: some View {
    ZStack {
      LinearGradient(
        colors: [.white, Color(red: 0.45, green: 0.45, blue: 0.52)],
        startPoint: .top,
        endPoint: .bottom
      )

    if isPriceRevealed {
        ContentView()
          .transition(
             .identity
             .animation(.linear(duration: 1).delay(2))
             .combined(
               with: .movingParts.anvil
             )
          )
      } else {
          Text("Нажмите на экран")
            .transition(
              .asymmetric(
                insertion: .identity,
                removal: .opacity.animation(.easeOut(duration: 0.2)))
            )
      }
    }
    .font(.largeTitle.bold())
    .foregroundColor(.black)
    .ignoresSafeArea(.all)
//    .contentShape(Rectangle())
    .onTapGesture {
      withAnimation {
        isPriceRevealed.toggle()
      }
    }
  }
}

#Preview {
    PriceSlide()
}
