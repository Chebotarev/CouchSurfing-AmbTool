require 'csv'

desc "Import data from csv file"
task :import => [:environment] do

  file = "db/Invites_082913_1_16.csv"

  CSV.foreach(file, :headers => true) do |row|
    Invite.create [
      :user_id => row[0],
      :user_name => row[1],
      :email => row[2],
      :answer => row[22]
    ]
  end

end
