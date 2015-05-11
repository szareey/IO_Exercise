require "open-uri"

remote_base_url = "http://www.bahai.org/library/authoritative-texts/bahaullah"
book = 'kitab-i-iqan'
remote_full_url = remote_base_url + '/' + book + '/'+ book +'.pdf'

remote_data = open(remote_full_url).read

my_local_file = open(book + ".pdf", 'w')

my_local_file.write(remote_data)
my_local_file.close

# http://www.bahai.org/library/authoritative-texts/bahaullah/kitab-i-iqan/kitab-i-iqan.pdf

contents = File.open('kitab-i-iqan.pdf', 'r'){|file| file.read}
puts contents