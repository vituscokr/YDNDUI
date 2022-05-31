//
//  SwiftUIView.swift
//  
//
//  Created by Gyeongtae Nam on 2022/05/31.
//

import SwiftUI
import Kingfisher
/*
public struct ZoomPhotoView : View {
//    @Environment(\.safeAreaInsets) private var safeAreaInsets
//    @Environment(\.presentationMode) private var presentationMode
//
//    @Binding var index : Int
//    @Binding var urls : [String]
//    @State var scale : CGFloat = 1.0  //1.0
    
    
//    public init(index: Binding<Int>,
//         urls : Binding<[String]>,
//         scale: CGFloat = 1.0
//    ) {
//        self._index = index
//        self._urls = urls
//        self.scale = scale
//
//    }
    
    public init() {
        
    }

    
    var body: some View {
        
        Text("hi")
        /*
        ZStack {
            
            Color.black
//            Color(hexString: "#000000")
            GeometryReader { geometry in
                if self.scale > 1 {
                    ScrollView ([.vertical, .horizontal], showsIndicators: false){
                        KFImage(URL(string: urls[index])!)
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(self.scale)
                            .frame(width: geometry.size.width * self.scale,
                                   alignment: .center)
                            .padding(.horizontal, (geometry.size.width * self.scale) - geometry.size.width)
                            
                            .padding(.vertical, (geometry.size.width * self.scale) - geometry.size.width)

                        
                    }
                    .background(Color.clear)
                }else {
                    VStack(spacing:0) {
                        Spacer()
                        KFImage(URL(string: urls[index])!)
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(self.scale)
                            .frame(width: geometry.size.width * self.scale,
                                   alignment: .center)
                            .padding(.horizontal, (geometry.size.width * self.scale) - geometry.size.width)
                            
                            .padding(.vertical, (geometry.size.width * self.scale) - geometry.size.width)
                        Spacer()
                    }


                }
//                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                //.scaleEffect(self.scale)

            }
            
            VStack (spacing:0) {
                ZStack {
                    HStack(spacing:0) {
                    Button(action:closeAction) {
                        EmptyView()
                    }.buttonStyle(LSSButtonStyle(change: { state in
                        Image("close_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width:24, height:24)
                    }))
                    .padding(.horizontal, 16)
                    .frame(height:48)
                        Spacer()
                    }
                    
                    Text("\(index + 1)/\(self.urls.count)")
                        .apply18Bold()
                        .foregroundColor(Color.white)
                }
                .frame(height:48)
                .padding(.top, safeAreaInsets.top)
                Spacer()
            }


        }
        .gesture(MagnificationGesture()
            .onChanged({ scale in

                if scale >= 1 {
                    self.scale = scale
                }else {
                    self.scale = 1
                }
            }))
        .gesture(
            DragGesture(minimumDistance: 10, coordinateSpace: .local)
                .onEnded({ value in
                    
                    guard urls.count > 1 else {
                        return
                    }
                    if value.translation.width < 0 {
                        leftAction()
                    }
                    
                    if value.translation.width > 0 {
                        rightAction()
                    }
//                    if value.translation.height < 0 {
//                        // up
//                    }
//
//                    if value.translation.height > 0 {
//                        // down
//                    }
                })
        
        )
        .onTapGesture (count:2)  {
            if self.scale == 1 {
                self.scale = 2.0
            }else {
                self.scale = 1
            }
        }

        .edgesIgnoringSafeArea(.all)
         */
    }
    
    
}

struct ZoomPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        ZoomPhotoView()
    }
}

/*
public struct ZoomPhotoView: View {

    @Environment(\.safeAreaInsets) private var safeAreaInsets
    @Environment(\.presentationMode) private var presentationMode
    
    @Binding var index : Int
    @Binding var urls : [String]
    var scale : CGFloat  //1.0
    
    
    public init(index: Binding<Int>,
         urls : Binding<[String]>,
         scale: CGFloat = 1.0
    ) {
        self._index = index
        self._urls = urls
        self.scale = scale

    }
    
     public var body: some View {
        ZStack {
            
            Color(hexString: "#000000")
            GeometryReader { geometry in
                if self.scale > 1 {
                    ScrollView ([.vertical, .horizontal], showsIndicators: false){
                        KFImage(URL(string: urls[index])!)
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(self.scale)
                            .frame(width: geometry.size.width * self.scale,
                                   alignment: .center)
                            .padding(.horizontal, (geometry.size.width * self.scale) - geometry.size.width)
                            
                            .padding(.vertical, (geometry.size.width * self.scale) - geometry.size.width)

                        
                    }
                    .background(Color.clear)
                }else {
                    VStack(spacing:0) {
                        Spacer()
                        KFImage(URL(string: urls[index])!)
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(self.scale)
                            .frame(width: geometry.size.width * self.scale,
                                   alignment: .center)
                            .padding(.horizontal, (geometry.size.width * self.scale) - geometry.size.width)
                            
                            .padding(.vertical, (geometry.size.width * self.scale) - geometry.size.width)
                        Spacer()
                    }


                }
//                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                //.scaleEffect(self.scale)

            }
            
            VStack (spacing:0) {
                ZStack {
                    HStack(spacing:0) {
                    Button(action:closeAction) {
                        EmptyView()
                    }.buttonStyle(LSSButtonStyle(change: { state in
                        Image("close_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width:24, height:24)
                    }))
                    .padding(.horizontal, 16)
                    .frame(height:48)
                        Spacer()
                    }
                    
                    Text("\(index + 1)/\(self.urls.count)")
                        .apply18Bold()
                        .foregroundColor(Color.white)
                }
                .frame(height:48)
                .padding(.top, safeAreaInsets.top)
                Spacer()
            }


        }
        .gesture(MagnificationGesture()
            .onChanged({ scale in

                if scale >= 1 {
                    self.scale = scale
                }else {
                    self.scale = 1
                }
            }))
        .gesture(
            DragGesture(minimumDistance: 10, coordinateSpace: .local)
                .onEnded({ value in
                    
                    guard urls.count > 1 else {
                        return
                    }
                    if value.translation.width < 0 {
                        leftAction()
                    }
                    
                    if value.translation.width > 0 {
                        rightAction()
                    }
//                    if value.translation.height < 0 {
//                        // up
//                    }
//
//                    if value.translation.height > 0 {
//                        // down
//                    }
                })
        
        )
        .onTapGesture (count:2)  {
            if self.scale == 1 {
                self.scale = 2.0
            }else {
                self.scale = 1
            }
        }

        .edgesIgnoringSafeArea(.all)
    }
}

*/
 */