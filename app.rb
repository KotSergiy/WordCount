f = File.open 'text.txt', 'r'
text = f.read.split(/\s|\n|\.|\,|\(|\)|\:/)
f.close

@hh={}

text.each do |word|
  if !word.empty?
    word.downcase!
    @hh[word]=@hh[word].to_i + 1
  end
end

arr=@hh.sort{|a,b| b[1] <=> a[1]}
@hh=arr.to_h

@hh.each do |key,val|
  puts "#{key}: #{val}"
end
