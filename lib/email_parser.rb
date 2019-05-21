class EmailParser
  
  def initialize(emails)
    @emails = emails
  end

# def my_parse(split_char, delete = "nil")
#     if split_char == "," && delete == "duplicates"
#       parse_4
#     elsif split_char == " " && delete == ","
#       parse_3
#     elsif split_char == " "
#       parse_2
#     elsif split_char == ","
#       parse_1
#     end
# end


  def parse
    @emails.split(/[,\s]+/).uniq
  end

  # def parse_1
  #     email_arr = @emails.split(",")
  #     email_arr.each do |e|
  #       e.lstrip!
  #     end
  # end

  # def parse_2
  #   email_arr = @emails.split(" ")
  #   email_arr.each do |e|
  #       e.lstrip!
  #   end
  # end

  # def parse_3
  #   email_arr = @emails.delete(",").split(" ")
  #   email_arr.each do |e|
  #       e.lstrip!
  #   end
  # end

  # def parse_4
  #   @emails.delete(",").split(" ").uniq
  # end

end