# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails 
  
  def initialize(data)
    @emails = data
  end
  
  def parse
    email_array = []
    delimiters = [', ', " "]
    email_array = @emails.split(Regexp.union(delimiters))
    email_array.flatten.uniq 
  end #parse method
end #Class 