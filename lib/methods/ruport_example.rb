require 'ruport'

table = Ruport::Data::Table.new :column_names => ["country", "wine"],
                                :data         => [['France', 'Bordeaux'],
                                                  [""],
                                                  []]
puts table.to_text