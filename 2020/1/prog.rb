input = File.readlines("input")
len = input.length

i = 0
a = 0
b = 0
c = 0
found_part1 = false

for x in i...len do
    for y in (i+1)...len do
        a = input[x].to_i
        b = input[y].to_i
        sum = a + b
        found_part1 = (sum == 2020)

        puts "Part 1: #{a} + #{b} = #{sum} ... #{found_part1} ... so #{a} * #{b} = #{a * b}" if found_part1

        for z in (i+2)...len do
            c = input[z].to_i
            sum = a + b + c
            found_part2 = (sum == 2020)

            puts "Part 2: #{a} + #{b} + #{c} = #{sum} ... #{found_part2} ... so #{a} * #{b} * #{c} = #{a * b * c}" if found_part2
            break if found_part2
        end

        break if found_part1
    end
    break if found_part1 && found_part2
end
