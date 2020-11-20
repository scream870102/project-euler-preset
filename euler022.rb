# Names scores
# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

#     For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
    
#     What is the total of all the name scores in the file?

def getValue c
    sum = 0
    c.each_byte{|c|sum+=c-64}
    sum
end

def euler022
    sum = 0
    content = File.read("p022_names.txt").split(",").each{|s|s.delete_prefix!("\"").delete_suffix!("\"")}
    (0...content.sort!.length).each {|i|sum+=getValue(content[i])*(i+1)}
    sum
end


puts euler022
