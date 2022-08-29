//
//  SwiftUIView.swift
//  
//
//  Created by Gyeongtae Nam on 2022/05/31.
//

import SwiftUI
import Kingfisher

/**
 포토 줌 뷰입니다.
 
 ~~~
 Assets 에 포함되어야할 이미지 "close_white"
 ~~~
 
Example
~~~
 @State var index : Int = 0
 @State var urls = [
     "https://www.codingfactory.net/wp-content/uploads/abc.jpg",
     "http://gangnamstar.co.kr/files/attach/images/119/904/027/99b6e593de5df80fd08141a0db2c2166.jpg",
    "https://www.codingfactory.net/wp-content/uploads/abc.jpg"
 ]
 @State var scale:CGFloat = 1.0
~~~
 
 ~~~
 ZoomPhotoView(
     index: $index,
     urls : $urls,
     scale: $scale
 )
 ~~~

 */
/*
public struct ZoomPhotoView : View {

    
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    @Environment(\.presentationMode) private var presentationMode
    
    @Binding var index : Int
    @Binding var urls : [String]
    @Binding var scale : CGFloat
    
    public init(
        index: Binding<Int>,
        urls : Binding<[String]>,
        scale : Binding<CGFloat>
    ) {
        self._index = index
        self._urls = urls
        self._scale = scale
    }
    
    public var body : some View {
        ZStack {
            
            Color.black
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
                        .font(.system(size: 18, weight: .bold, design: .default))
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
                        if index >=   self.urls.count - 1 {
                            index = 0
                        }else {
                            index = index  + 1
                        }
                        
                        self.scale = 1
                    }
                    
                    if value.translation.width > 0 {
                        if index <=  0 {
                            index = self.urls.count - 1
                        }else {
                            index = index - 1
                        }
                        
                        self.scale = 1
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
    

    
    func closeAction() {
        self.presentationMode.wrappedValue.dismiss()
    }
}
*/
