# hash, hashes, hashmap, dictionary in ruby
# hashes is like object in other language
biodata = {
	"firman": "23 years old",
	"riski": "19 years old",
	"aira": "13 years old"
}

biodata.each do |name, age|
	puts "#{name} is #{age}"
end