# https://adventofcode.com/2023/day/1

input = File.read("/Users/eric.ziemba/Desktop/input.txt").split("\n")
#input = ["two1nine", "eightwothree", 
#        "abcone2threexyz", "xtwone3four",
#        "4nineeightseven2", "zoneight234", "7pqrstsixteen"]


def sum_calibrate(calibration)
    calibration.sum
end

substitutions = { "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9" }


def calibrate(lines)
    calibration = []
    for line in lines do
       a = line.match(/(\d|one|two|three|four|five|six|seven|eight|nine)/)
       b = line.scan(/(\d|one|two|three|four|five|six|seven|eight|nine)/).last
       a = a ? a[0].to_s : 0
       a = a.gsub("one", "1").gsub("two", "2").gsub("three", "3").gsub("four", "4").gsub("five", "5").gsub("six", "6").gsub("seven", "7").gsub("eight", "8").gsub("nine", "9")
       b = b ? b[0].to_s : 0
       b = b.gsub("one", "1").gsub("two", "2").gsub("three", "3").gsub("four", "4").gsub("five", "5").gsub("six", "6").gsub("seven", "7").gsub("eight", "8").gsub("nine", "9")
       c = a.to_s + b.to_s
       calibration << c.to_i
    end
    calibration
end

#print(calibrate(input))
print(sum_calibrate(calibrate(input)))


