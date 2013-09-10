require 'csv'

desc "Import data from csv file"
task :import => [:environment] do

  file = "db/Invites_test.csv"

  CSV.foreach(file, {:headers => true, :header_converters => :symbol}) do |row|
#    Invite.create [
#      :user_id => row[0],
#      :user_name => row[1],
#      :email => row[2],
#      :answer => row[3]
#    ]
    puts row.headers
  end

end
