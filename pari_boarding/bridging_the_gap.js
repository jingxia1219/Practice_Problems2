// Write a function that takes in a graph and prints out the edges that
// are bridges.A bridge is an edge whose deletion will
// cause the graph to become disconnected 

function Node(val = nil, edge_before_node = [], edge_after_node = []) {
    this.val = val;
    this.edge_before_node = edge_before_node;
    this.edge_before_node = edge_after_node;
}


let node1 = new Node();
let node2 = new Node();
let node3 = new Node();
let nodes = [node1,node2,node3];

function Edge(from_node = [], to_node = [] ) {
    this.from_node = from_node;
    this.to_node = to_node; 

    this.connect = function (from_node, to_node) {
        this.from_node.push(from_node);
        this.to_node.push(to_node); 
        from_node.edge_after_node = this;
        to_node.edge_before_node = this;
    }

}

let edge1 = new Edge();
let edge2 = new Edge();
let edges = [edge1, edge2];

edge1.connect(node1,node2);
edge2.connect(node1,node3);

function Graph(nodes =[], edges =[]) {
    this.nodes = nodes;
    this.edges = edges;
}

graph = new Graph(nodes)

function findBridges(graph) {
    let edges = graph.edges;
    let length = edges.length;
    let result = [];
    for (let i = 0; i < length; i++) {
        let edge = edges[i];
        let next_edge = false;
        for ( let j = 0; j < edge.from_node.length; j++) {
            let from_node = edge.from_node;
            if ( from_node.edge_after_node.length + from_node.edge_before_node.length <= 1) {
                result.push(edge);
                next_edge = true;
                continue; 
            }
            if (next_edge) {
                continue;
            }
        }
        for (let j = 0; j< edge.to_node.length; j ++) {
            let to_node = edge.to_node;
            if (to_node.edge_after_node.length + to_node.edge_before_node <= 1) {
                result.push(edge);
                next_edge = true;
                continue;
            }

            if (next_edge) {
                continue;
            }
        }
    }
    return result;
}
