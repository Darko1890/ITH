require './mailbox_html'
require 'csv'

class EmailsCsvStore
  def initialize(filename)
    $df = CSV.read(filename)
  end


end

EmailsCsvStore.new("emails.csv")
$emails = []

hash = {}

$df.shift
$df.map do |array|
  hash = {}
  hash[:date] =  array[0]
  hash[:from] =  array[1]
  subject = array[2]
  $emails << Email.new(subject, hash)
end

$array = []
$emails.length.times do | i |
$array << $emails[i].subject
end

$fog = []
$emails.map do | f |
$fog << f.headers[:from]
$fog << f.headers[:date]
end

mailbox = Mailbox.new("Ruby Study Group",  $emails)
formater = MailboxHtmlFormater.new(mailbox)
puts formater.format

out_file = File.new("emails.html", "w")
out_file.puts formater.format
out_file.close
