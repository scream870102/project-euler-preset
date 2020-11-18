# coding: utf-8
# Problem 1 「3と5の倍数」
def euler001
  res = 0
  for i in (1...1000)
    if i%3==0 || i%5==0
        res+=i
    end
  end
  res
end

euler001
