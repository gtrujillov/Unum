//
//  UnumWidgetLiveActivity.swift
//  UnumWidget
//
//  Created by Gonzalo Trujillo Vallejo on 10/6/25.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct UnumWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct UnumWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: UnumWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension UnumWidgetAttributes {
    fileprivate static var preview: UnumWidgetAttributes {
        UnumWidgetAttributes(name: "World")
    }
}

extension UnumWidgetAttributes.ContentState {
    fileprivate static var smiley: UnumWidgetAttributes.ContentState {
        UnumWidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: UnumWidgetAttributes.ContentState {
         UnumWidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: UnumWidgetAttributes.preview) {
   UnumWidgetLiveActivity()
} contentStates: {
    UnumWidgetAttributes.ContentState.smiley
    UnumWidgetAttributes.ContentState.starEyes
}
