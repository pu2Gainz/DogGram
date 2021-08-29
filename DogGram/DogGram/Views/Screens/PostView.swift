//
//  PostView.swift
//  DogGram
//
//  Created by Mingkun Sun on 8/29/21.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
            
            // Mark: HEADER
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                Text(post.username)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(.all, 6)
            
            // MARK : IMAGE
            
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            // MARK: FOOTER
            
            HStack(alignment: .center, spacing: 20, content: {
                
                Image(systemName: "heart")
                    .font(.title3)
                
                Image(systemName: "bubble.middle.bottom")
                    .font(.title3)
                
                Image(systemName: "paperplane")
                    .font(.title3)
                
                Spacer();
                
            })
            .padding(.all, 6)
            
            if let caption = post.caption {
                HStack {
                    Text(caption)
                    Spacer(minLength: 0)
                }
                .padding(.all, 6)
            }
           
        })
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel( postID: "", userID: "", username: "Pu2Gainz", caption: "This is a test caption", dateCreate: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post)
            .previewLayout(.sizeThatFits)
    }
}
