require "open-uri"

remote_url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
fname = 'hamlet.txt'
File.open(fname,'w'){|file| file.write(open(remote_url).read)}

File.open(fname, 'r') do |file|
  ham_lines = ''
  file.readlines.each_with_index do |line, idx|
    if line.match(/^  Ham/)
      ham_lines += line
    elsif ham_lines != '' && line.match(/^    /)
      ham_lines += line
    else
      if ham_lines != '' 
        puts ham_lines
        ham_lines = '' 
      end
    end
  end
end


# my_local_file = open(book + ".pdf", 'w')

# remote_data = open(remote_full_url).read
# my_local_file.write(remote_data)
# my_local_file.close

# # http://www.bahai.org/library/authoritative-texts/bahaullah/kitab-i-iqan/kitab-i-iqan.pdf

# contents = File.open('kitab-i-iqan.pdf', 'r'){|file| file.read}
# puts contents