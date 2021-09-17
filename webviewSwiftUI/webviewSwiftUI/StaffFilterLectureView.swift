//
//  StaffFilterLectureView.swift
//  webviewSwiftUI
//
//  Created by NextEducation on 17/09/21.
//

import SwiftUI

struct StaffFilterLectureView: View {
    @State private var date = Date()
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                Spacer()
                Text("Courses")
                    .font(.title)
                    .padding(.leading, 10)
                ScrollView(.vertical){
                    let columns = [GridItem(.flexible(minimum: 100, maximum: 100)),GridItem(.flexible(minimum: 100, maximum: 100)),
                                   GridItem(.flexible(minimum: 100, maximum: 100)),GridItem(.flexible(minimum: 100, maximum: 100))
                    ]
                    LazyVGrid(columns: columns, alignment: .center, spacing: 10) {
                        ForEach(1..<50) { _ in
                            CoursesView()
                        }
                        
                    }
                }
                
                
                VStack(alignment: .leading) {
                    Text("Lecture Date")
                        .font(.system(size: 16))
                        .foregroundColor(.green)
                    Spacer()
                    DatePicker("Select Date", selection: $date)
                    Spacer()
                    Button(action: {}) {
                        Text("Apply Filters")
                            .foregroundColor(.white)
                            
                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                        
                    }
                    
                    .background(Color.green)
                    .cornerRadius(25)
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .padding(.leading, 10)
                .padding(.trailing,10)
                
            }
            .padding()
           
        
            
            .navigationTitle("Filter Live Lecture")
            .navigationBarTitleDisplayMode(.inline)
       
    }
    }
}

struct StaffFilterLectureView_Previews: PreviewProvider {
    static var previews: some View {
        StaffFilterLectureView()
    }
}



