#program that prints hash keys
h1 = {name: "Max Martin", job: "Music Producer", net: "250 Million"}
h1.each do |k,v| p "#{k}"
end

#Program that prints hash values
h1 = {name: "Max Martin", job: "Music Producer", net: 250}
h1.each do |k,v| p "#{v}"
end

#program that prints both keys and value
h1 = {name: "Max Martin", job: "Music Producer", net: 250}
h1.each do |k,v| p "#{k}: #{v}"
end
