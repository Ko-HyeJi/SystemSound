//
//  ContentView.swift
//  SystemSound
//
//  Created by 고혜지 on 3/4/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
  @State var categorySet = Set<String>()
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(SystemSoundCategory.allCases) { category in
          NavigationLink(category.rawValue) {
            ExtractedView(category: category)
          }
        }
      }
      .navigationTitle("System Sound")
    }
  }
}

struct ExtractedView: View {
  let category: SystemSoundCategory
  let UIWidth = UIScreen.main.bounds.width
  
  var body: some View {
    ScrollView {
      let subCategories = category.subCategories
      ForEach(subCategories, id: \.self) { subCategory in
        Text(subCategory.rawValue)
          .frame(width: UIWidth, alignment: .leading)
//          .background(.orange)
          .padding(.top)
        let sounds = systemSounds.filter { $0.category == subCategory }
        ForEach(sounds, id: \.id) { sound in
          HStack {
            Spacer()
            Text("\(sound.id.description)")
              .frame(width: UIWidth * 0.15)
//              .background(.green)
            Spacer()
            Text(sound.fileName)
              .frame(width: UIWidth * 0.60, alignment: .leading)
//              .background(.green)
            Spacer()
            Button {
              AudioServicesPlaySystemSound(SystemSoundID(sound.id))
            } label: {
              Image(systemName: "play.fill")
            }
            .frame(width: UIWidth * 0.1)
//            .background(.green)
            Spacer()
          }
        }
        .navigationTitle(category.rawValue)
      }
    }
  }
}

#Preview {
  ContentView()
//  ExtractedView(category: .other)
}
