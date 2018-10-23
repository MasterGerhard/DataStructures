//
//  Graph.swift
//  DataStructures
//
//  Created by Steven Gerhard on 10/23/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation

public class Graph {
    
    private var nodeMap : [Int : GraphNode]
    
    public init() {
        nodeMap = [Int : GraphNode]()
    }
    
    public func addNode(node : GraphNode) {
        nodeMap[node.id] = node
    }
    
    public func getNode(nodeId : Int) -> GraphNode {
        return nodeMap[nodeId]!
    }
    
    public func addEdge(sourceId : Int, destinationId : Int) {
        nodeMap[sourceId]!.addAdjacentNodes(adjacentNodesToAdd: [nodeMap[destinationId]!])
    }
}

public class GraphNode : Equatable {
    
    var id : Int
    var adjacent : [GraphNode]
    
    public init(id : Int) {
        self.id = id
        self.adjacent = [GraphNode]()
    }
    
    public func addAdjacentNodes(adjacentNodesToAdd : [GraphNode]) {
        self.adjacent = self.adjacent + adjacentNodesToAdd
    }
    
    public static func ==(lhs: GraphNode, rhs: GraphNode) -> Bool {
        return lhs.id == rhs.id
    }
    
}
