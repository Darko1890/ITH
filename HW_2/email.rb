class Email

  def initialize(subject, headers)
    @subject = subject
    @headers = headers
  end

  def result
  "Date: #{@headers[:date]}
From: #{@headers[:from]}
Subject:  #{@subject}
 "
  end

  def add(email)
    out_file = File.new("emails.csv", "w")
    out_file.puts(@email.result)
    out_file.close
    puts "done"
  end
attr_accessor :subject, :headers

end
@email = Email.new('Homework this week', { date: '24-10-2018', from: 'Vova' })
puts @email.result

out_file = File.new("emails2.csv", "w")
out_file.puts @email.result
out_file.close
puts "Newe record was added to email.scv file!"
