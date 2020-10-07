#input
n = 3
m = 5
d = 4
class Jug
def gcd(a, b)
  return a if b==0
  return gcd(b, a%b)
end


def Pour(toJugCap, fromJugCap, d)
  fromJug = fromJugCap
  toJug  = 0
  step = 1

  while fromJug  != d && toJug != d

    temp = min(fromJug, toJugCap-toJug)
    toJug = toJug + temp
    fromJug = fromJug - temp
    step =  step + 1

    if fromJug == d || toJug == d
      break
    end

    if fromJug == 0
      fromJug = fromJugCap
      step =  step + 1
    end

    if toJug == toJugCap
      toJug = 0
      step =  step + 1
    end
  end
  return step
end


def minSteps(n, m, d)
  if m > n
    temp = m
    m = n
    n = temp
  end
  return -1 if d%(gcd(n,m)) != 0
  return min(Pour(n,m,d), Pour(m,n,d))
end
end
#output
puts "minimum number of operations performed:"+ minSteps(n, m, d)
