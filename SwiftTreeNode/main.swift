//
//  main.swift
//  SwiftTreeNode
//
//  Created by Angelos Staboulis on 18/7/23.
//

import Foundation

class SwiftTreeNode<Value>:Equatable{
    static func == (lhs: SwiftTreeNode<Value>, rhs: SwiftTreeNode<Value>) -> Bool {
        lhs.children == rhs.children && lhs.children == rhs.children
    }
    
    var value: Value
    private var children: [SwiftTreeNode<Value>] = []
    init(value:Value) {
        self.value = value
        children = []
    }
    func addNode(child:SwiftTreeNode<Value>){
        children.append(child)
    }
    
    func findNode(node: Value) -> SwiftTreeNode<Value>? {
        for child in children {
            let getNode = String(describing: node)
            let childNode = String(describing: child.value)
            if childNode.contains(getNode) {
                return child
            }
            
        }
        return nil
    }
    func printNodes(){
        for child in children {
            debugPrint(child.value)
        }
    }
    
}

var root = SwiftTreeNode(value: "John")
let nodeAngelos = SwiftTreeNode(value: "Angelos")
let nodeTheodoros = SwiftTreeNode(value: "Theodoros")
let nodeAngeliki = SwiftTreeNode(value: "Angeliki")
let nodeCrazy = SwiftTreeNode(value: "Crazy")
root.addNode(child: nodeAngelos)
root.addNode(child: nodeTheodoros)
root.addNode(child: nodeAngeliki)
root.addNode(child: nodeCrazy)
root.printNodes()
let checkValue = root.findNode(node:"Crazy")?.value
if checkValue?.count ?? 0 > 0 {
    debugPrint("Node found")
}else{
    debugPrint("Node not found")
}
