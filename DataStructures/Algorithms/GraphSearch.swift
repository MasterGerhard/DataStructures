//
//  GraphSearch.swift
//  DataStructures
//
//  Created by Steven Gerhard on 10/23/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import Foundation

class GraphSearch {
    
    public func hasPathDFS(graph : Graph, sourceId : Int, destinationId : Int) -> Bool {
        let sourceNode = graph.getNode(nodeId: sourceId)
        let destinationNode = graph.getNode(nodeId: destinationId)
        return hasPathDFS(sourceNode: sourceNode, destinationNode: destinationNode, visitedNodes: [GraphNode]())
    }
    
    private func hasPathDFS(sourceNode : GraphNode, destinationNode : GraphNode, visitedNodes : [GraphNode]) -> Bool {
        if sourceNode == destinationNode {
            return true
        }
        if visitedNodes.contains(sourceNode) {
            return false
        }
        var visitedNodes = visitedNodes
        visitedNodes.append(sourceNode)
        
        for child in sourceNode.adjacent {
            if hasPathDFS(sourceNode:child, destinationNode:destinationNode, visitedNodes: visitedNodes) {
                return true
            }
        }
        return false
    }
    
    public func hasPathBFS(graph : Graph, sourceId : Int, destinationId : Int) -> Bool {
        let sourceNode = graph.getNode(nodeId: sourceId)
        let destinationNode = graph.getNode(nodeId: destinationId)
        return hasPathBFS(sourceNode: sourceNode, destinationNode: destinationNode)
    }
    
    private func hasPathBFS(sourceNode : GraphNode, destinationNode : GraphNode) -> Bool {
        var nextToVisit = [GraphNode]()
        var visited = [GraphNode]()
        nextToVisit.append(sourceNode)
        while !nextToVisit.isEmpty {
            let node = nextToVisit.removeFirst()
            if node == destinationNode {
                return true
            }
            if visited.contains(node) {
                continue
            }
            for child in node.adjacent {
                nextToVisit.append(child)
            }
            visited.append(node)
        }
        return false
    }
    
    
}
