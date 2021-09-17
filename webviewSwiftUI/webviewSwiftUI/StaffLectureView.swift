//
//  StaffLectureView.swift
//  webviewSwiftUI
//
//  Created by NextEducation on 17/09/21.
//

import SwiftUI


struct StaffLectureView: View {
    
    @State  var isFilterSelected: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading){
                    Text("Today")
                        .font(.system(size: 16))
                        .foregroundColor(.green)
                        .padding(.top, 16)
                    HStack {
                        VStack {
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: 8, height: 8, alignment: .center)
                            Rectangle()
                                .foregroundColor(.green)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        
                        
                    }
                }
                VStack(alignment:.trailing) {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink( destination: EmptyView())
                        {
                            HStack {
                                Image(systemName: "plus.circle.fill")
                            }
                            .padding()
                            .background(Color.init(UIColor(red: 0.13, green: 0.42, blue: 0.36, alpha: 1.00)))
                            .mask(Circle())
                        }
                    }
                }
                if isFilterSelected {
                    sheet(isPresented: $isFilterSelected, content: {
                        StaffLectureView()
                    })
                }
              
            }
            .navigationBarTitle("Live lecture", displayMode: .inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button(action: {
                        isFilterSelected.toggle()
                    }) {
                        Image("filter")
                    }
                }
                
            }
        }
        
    }
}

struct StaffLectureView_Previews: PreviewProvider {
    static var previews: some View {
        StaffLectureView()
    }
}
