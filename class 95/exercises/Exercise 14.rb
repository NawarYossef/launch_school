  #I did not know the answer.
  #I watched the walk through and practiced rewriting the code a couple of times. 

  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
  contacts = {"Joe Smith" => {}}
  fields = [:email, :address, :phone]

  contacts.each do |name, hash|
    fields.each do |field|
      hash[field] = contact_data.shift
   end
  end