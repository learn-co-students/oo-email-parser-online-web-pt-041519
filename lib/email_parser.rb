# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  
  def initialize(emails_string)
    @emails = emails_string
  end
  
  def parse
    split = @emails.split(/[\s,]/)
    split.delete_if{|el| el.length == 0}.uniq
    
  end

    
end