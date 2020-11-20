# You are given the following information, but you may prefer to do some research for yourself.

#   1 Jan 1900 was a Monday.
#   Thirty days has September,
#   April, June and November.
#   All the rest have thirty-one,
#   Saving February alone,
#   Which has twenty-eight, rain or shine.
#   And on leap years, twenty-nine.
#   A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
#   How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

def isLeapYear y
  (y%4==0 && y%100!=0)||(y%400==0) ? true : false
end

def daysAfter1900 y,m,d
  days = 0
  (1900..y-1).each {|year| isLeapYear(year)==true ? days+=366 : days+=365 }

  (1..m-1).each do |month|
    case month
    when 2
      isLeapYear(y)==false ? days+=28 : days+=29
    when 4,6,9,11
      days+=30
    else
      days+=31
    end
  end
  days+=d-1
end



def euler019
  count = 0
  (1901..2000).each do |year|
    (1..12).each do |month|
      days=daysAfter1900 year,month,1
      count +=1 if (days+=1)%7==0
    end
  end
  count
end



puts euler019
