//
//  SideBarView.swift
//  RemindersOS
//
//  Created by Jose David Bustos Huichaleo on 17-06-22.
//

import SwiftUI

struct SideBarView: View {
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    @State private var isPresented: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            Text("All Items Count 10")
            List(1...5,id: \.self){ index in
                Text("List \(index)")
            }
            Spacer()
            Button{
                //Action
                isPresented = true
            }label:{
                HStack{
                    Image(systemName: Constants.Icons.plusCircle)
                    Text("Add List")
                }
            }.buttonStyle(.plain)
                .padding()
        }.sheet(isPresented: $isPresented){
            
        }content: {
            AddNewListView(vm: AddNewListViewModel(context: context))
        }
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
