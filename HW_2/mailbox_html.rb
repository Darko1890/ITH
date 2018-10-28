require './email'
require './mailbox'
require "erb"

class MailboxHtmlFormater

  attr_accessor :name, :emails, :from, :mailbox, :format, :formater


  def initialize(mailbox)
    @mailbox = mailbox
  end

  def format
    ERB.new($template).result(binding)
  end

end



$template = %{
<html>
  <head>
    <style>
      table {
        border-collapse: collapse;
      }
      td, th {
        border: 1px solid black;
        padding: lem;
      }
    </style>
  </head>
  <body>
    <h1><%= @mailbox.name %></h1>
    <table>
      <thead>
        <tr>
          <th>Date</th>
          <th>From</th>
          <th>Subject</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><%= $fog[1] %></td>
          <td><%= $fog[0] %></td>
          <td><%= $array[0] %></td>
        </tr>
        <tr>
          <td><%= $fog[3] %></td>
          <td><%= $fog[2] %></td>
          <td><%= $array[1] %></td>
        </tr>
        <tr>
          <td><%= $fog[5] %></td>
          <td><%= $fog[4] %></td>
          <td><%= $array[2] %></td>
        </tr>
        <tr>
          <td><%= $fog[7] %></td>
          <td><%= $fog[6] %></td>
          <td><%= $array[3] %></td>
        </tr>
      </tbody>
    </tbody>
  </html>
}.gsub(/^  /, '')

mailbox = Mailbox.new("Ruby Study Group",  $emails)
formater = MailboxHtmlFormater.new(mailbox)

puts formater.format

out_file = File.new("emails.html", "w")
out_file.puts formater.format
out_file.close
# puts  mailbox.result
