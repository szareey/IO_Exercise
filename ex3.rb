Dir.glob("/Users/Sana/Downloads/**/*.*").sort_by{|fname| File.size(fname)}.each do |fname|
   puts "#{fname}  #{(File.size(fname)/1000).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse} MB"
end