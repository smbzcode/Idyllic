//
//  ContentView.swift
//  Idyllic
//
//  Created by Max Zelikman on 5/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            Header()
                .padding(.horizontal, 25)
                .padding(.vertical, 35)
            
            Text("Get Started")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("greetingColor"))
                .padding(.leading, 30)
            
            
            SuggestedRoutine()
                .padding(.horizontal, 30)
                .padding(.vertical, 7)
            
            Text("Goal Setting")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("greetingColor"))
                .padding(.leading, 30)
            
            GoalSetting()
                .padding(.horizontal, 30)
                .padding(.vertical, 7)
            
            Text("Track Your Progress")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("greetingColor"))
                .padding(.leading, 30)
            
            Progress()
                .padding(.horizontal, 30)
                .padding(.vertical, 7)
            
            Spacer()
        }
        
        .background(Color("bkColor")).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hello,")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("greetingColor"))
                Text("User")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("greetingColor"))
            }
            Spacer()
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(100)
        }
    }
}

struct SuggestedRoutine: View {
    var body: some View {
        HStack {
            Image(systemName: "clock")
                .font(.title)
                .foregroundColor(Color("text1Color"))
                .padding(.leading)
            Text("Suggested Breathing Exercise")
                .foregroundColor(Color("text1Color"))
            Spacer()
            Text("Start")
                .foregroundColor(Color("text1Color"))
                .fontWeight(.semibold)
                .padding(.trailing)
        }
        .frame(height: 100)
        .background(Color("boxColor"))
        .cornerRadius(20)
    }
}


struct GoalSetting: View {
    var body: some View {
        HStack {
            Image(systemName: "list.dash.header.rectangle")
                .font(.title)
                .foregroundColor(Color("greetingColor"))
                .padding(.leading)
            Text("Your Goals")
                .foregroundColor(Color("text1Color"))
            Spacer()
            Text("Edit")
                .foregroundColor(Color("text1Color"))
                .fontWeight(.semibold)
                .padding(.trailing)
        }
        .frame(height: 100)
        .background(Color("boxColor"))
        .cornerRadius(20)
    }
}

struct Progress: View {
    var body: some View {
        HStack {
            Image(systemName: "menucard")
                .font(.title)
                .foregroundColor(Color("greetingColor"))
                .padding(.leading)
            Text("Write It Down")
                .foregroundColor(Color("text1Color"))
            Spacer()
            Text("Edit")
                .foregroundColor(Color("text1Color"))
                .fontWeight(.semibold)
                .padding(.trailing)
        }
        .frame(height: 100)
        .background(Color("boxColor"))
        .cornerRadius(20)
    }
}
