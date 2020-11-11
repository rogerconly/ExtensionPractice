//
//  ViewControllerView.swift
//  ExtensionPractice
//
//  Created by Roger Yuen on 2020/11/11.
//

import SwiftUI

struct ViewControllerView: UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        typealias UIViewControllerType = ViewController

    }
    func makeUIViewController(context: Context) -> some UIViewController {
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as! ViewController
    }
    
}

struct ViewControllerView_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerView()
    }
}
