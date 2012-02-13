v = {} # arrays of vertices, distance, previous, and unoptimized vertices
d = [] # distance
p = [] # prev
e = {} # edges
s = 0  # starting vertex
x = 80 # width/height
i = 0

# Set up edges, e keys are FROM, and value is an array of hashes with keys TO and WEIGHT
(x * x).times { |j| e[j] = [] }

# Parse input
input = File.new('0081.in', 'r')
input.each_line do |l|
  a = l.split(',')
  a.each do |p|
    v[i] = p.to_i
    hash = { to: i, weight: v[i] }
    e[i-1] << hash if i % x != 0
    e[i+1] << hash if i % x != x-1
    e[i-x] << hash if i >= x
    e[i+x] << hash if i/x < x - 1
    i += 1
  end
end

# Dijkystra's Algorithm
v.each do |j, val|
  d[j] = 1073741823
  p[j] = nil
end

q = v.clone # initialize set of unoptimized vertices, q, from v

def get_smallest_distance(q, d)
  smallest = 1073741823
  q.each do |j, val|
    smallest = j if d[j] < smallest
  end
  smallest
end

d[s] = v[s] # initialize distance with value on the starting node
while q.size > 0
  u = get_smallest_distance q, d
  break if d[u] == -1
  q.delete u
  e[u].each do |u_edge|
    alt = d[u] + u_edge[:weight]
    if alt < d[u_edge[:to]]
      d[u_edge[:to]] = alt
      p[u_edge[:to]] = u
    end
  end
end

# get shortest path to bottom right corner
p d[v.length-1]
