//
//  routeLiveActivity.swift
//  route
//
//  Created by 이소리 on 2023/08/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct routeWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var value: Int
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
    
}

struct routeWidgetLiveActivity: Widget {
    @State private var progressValue: Double = 85.0 // 1~99
    let totalValue: Double = 100.0
    
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: routeWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("view")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("21:59 도착")
                        .font(.headline)
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("18분 남음")
                        .font(.headline)
                }
                DynamicIslandExpandedRegion(.bottom) {
                    VStack(spacing: 0) {
                        HStack(alignment: .top) {
                            Image(systemName: "tram")
                            
                            Spacer()
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("어린이대공원역 승차")
                                        .fontWeight(.bold)
                                    
                                    Text("석남(거북시장) 방면")
                                        .foregroundColor(Color.gray)
                                        .font(.system(size: 15))
                                    
                                    Spacer()
                                }
                                Text("빠른환승 1-1")
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 15))
                                
                                HStack {
                                    Text("2분")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.gray)
                                    
                                    Text("1개역 이동")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                }
                            }
                        }
                        ProgressView(value: progressValue, total: totalValue)
                            .progressViewStyle(humanProgressViewStyle(value: $progressValue, total: .constant(totalValue)))
                    }
                    .padding(1.0)
                }
            } compactLeading: {
                Image(systemName:"tram.fill")
            } compactTrailing: {
                Text("18분 남음")
            } minimal: {
                Text("Min")
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

struct humanProgressViewStyle: ProgressViewStyle {
    @Binding var value: Double
    @Binding var total: Double
    
    func makeBody(configuration: Configuration) -> some View {
        
        let offset = CGFloat(value) / 100
        return GeometryReader{ geometry in
            VStack(spacing: 0) {
                HStack{
                    Image(systemName: "figure.walk")
                        .font(.system(size: 15))
                        .frame(width: CGFloat((geometry.size.width) * offset + 6), alignment: .bottomTrailing) // 6 : 사람이 발을 딱 내딛는 위치
                    
                    Spacer()
                }
                ProgressView(configuration)
                    .accentColor(.red)
            }
        }
    }
}

struct routeWidgetLiveActivity_Previews: PreviewProvider {
    static let attributes = routeWidgetAttributes(name: "Me")
    static let contentState = routeWidgetAttributes.ContentState(value: 3)

    static var previews: some View {
        attributes
            .previewContext(contentState, viewKind: .dynamicIsland(.compact))
            .previewDisplayName("Island Compact")
        attributes
            .previewContext(contentState, viewKind: .dynamicIsland(.expanded))
            .previewDisplayName("Island Expanded")
        attributes
            .previewContext(contentState, viewKind: .dynamicIsland(.minimal))
            .previewDisplayName("Minimal")
        attributes
            .previewContext(contentState, viewKind: .content)
            .previewDisplayName("Notification")
    }
}
