//
//  WorkoutsView.swift
//  DailyWorkout
//
//  Created by Joseph DeWeese on 4/9/24.
//

import SwiftUI



struct WorkoutsView: View {
    @Binding var showMenu: Bool
    
    func headerBGOpacity(_ proxy: GeometryProxy) -> CGFloat {
        let minY = proxy.frame(in: .scrollView).minY + safeArea().top
        return minY > 0 ? 0 : (-minY / 15)
    }
    func headerScale(_ size: CGSize, proxy: GeometryProxy) -> CGFloat {
        let minY = proxy.frame(in: .scrollView).minY
        let screenHeight = size.height
        
        let progress = minY / screenHeight
        let scale = (min(max(progress, 0), 1)) * 0.4
        
        return 1 + scale
        
    }

    /// For Animation
    @Namespace private var animation
    var body: some View {
        
        GeometryReader {
            /// For Animation Purpose
            let size = $0.size
            NavigationStack {
                ScrollView {
                    LazyVStack{
                        
                        Section {
                            
                            
                        } header: {
                            HStack{
                                ZStack{
                                    
                                    Button{
                                        withAnimation{showMenu.toggle()}
                                    } label: {
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 10.0)
                                                .fill(.white)
                                                .frame(width: 57, height: 47)
                                                .shadow(color: .primary, radius: 1, x: 1, y: 1)
                                            Image(systemName: "person.crop.rectangle")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 60, height: 32)
                                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                        }
                                    }
                                        .transition(.move(edge: .leading))
                                }
                                Spacer()
                                VStack {
                                    Text("Welcome!")
                                        .fontDesign(.serif)
                                        .font(.title2.bold())
                                        .padding(.leading)
                                    
                                    Text("...your Physical Balance Sheet.")
                                        .font(.caption.bold())
                                        .fontDesign(.serif)
                                        .foregroundStyle(.secondary)
                                }
                                
                                Spacer(minLength: 0)
                                NavigationLink {
                                    AddWorkout()
                                } label: {
                                    Image(systemName: "plus")
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.white)
                                        .frame(width: 50, height: 47)
                                        .background(.blue2, in: .rect(cornerRadius: 12))
                                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                                }
                            }.padding(.horizontal)
                        }
                    }
                    .background {
                        VStack(spacing: 0) {
                            Rectangle()
                                .fill(.colorBackground)
                        }
                        .visualEffect { content, geometryProxy in
                            content
                                .opacity(headerBGOpacity(geometryProxy))
                        }
                    }
                }
            }
        }
    }
}
                        
#Preview {
    ContentView()
}
