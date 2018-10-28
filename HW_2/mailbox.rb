require './email'

class Mailbox
  def initialize(name, emails)
    @name = name
    @emails = emails
  end

  def result
    @emails.map(&:result)
  end

  attr_accessor :name, :emails
end

emails = [
  Email.new('Homework this week', {date: '24-10-2018', from: 'Ferdous'}),
  Email.new('Keep on coding! :)', {date: '24-10-2018', from: 'Dajana'}),
  Email.new('Re: Homework this week', {date: '24-10-2018', from: 'Ariane'})

]



mailbox = Mailbox.new("Ruby Study Group", emails)
 mailbox.result

$array = []
 emails.length.times do | i |
 $array << emails[i].subject
end

$fog = []
  emails.map do | f |
  $fog << f.headers[:from]
  $fog << f.headers[:date]
end
