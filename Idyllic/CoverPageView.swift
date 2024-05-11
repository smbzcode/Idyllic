//
//  CoverPageView.swift
//  Idyllic
//
//  Created by Max Zelikman on 5/11/24.
//

import SwiftUI

struct Home: View {
    var body: some View{
        CoverPage()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct CoverPage: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Idyllic").font(.system(size:45))
            fontWeight(.bold)
            Text("Find Tranquility").font(.system(size:45))
            fontWeight(.bold)
            Image("coverpic").resizable().aspectRatio(contentMode: .fit)
                .padding(.vertical, 10)
            HStack {
                Spacer()
                Button(action: {}) {
                    Image(systemName: "chevron.right").padding()
                }.foregroundColor(.white)
                    .frame(width: 64, height: 64)
                    .background(Color.black).clipShape(Circle())
                Spacer()
            }
            
        }.padding(.all, 30)
    }
}
