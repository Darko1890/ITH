numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1]
]
lines = []
arr_string = []

numbers.map! do |membe|
  membe.map do |member|
    string = ''
    member.times { string << '*' }
    arr_string << string
  end
  lines << arr_string
  arr_string = []
end
lines.map! { |d| d.join(' ') }
lines.each { |line| puts line }
