# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 
  attr_accessor :emails

  def initialize(emails) 
    @emails = emails
  end

  # Separate email addresses based on "," and " "
  def parse
    emails_arr = @emails.split(/[,\s]/).compact
    
    # Remove empty and duplicate array elements
    emails_arr.delete_if { |element| element.empty? }.uniq
  end
  
end 