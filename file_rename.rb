#파일명 수정
#폴더 내의 파일을 확인하고 파일명을 수정한다.

#entries
files = Dir.entries(Dir.pwd).reject {|i| i[0] == '.'}
files.each do |name|
  File.rename(name, name.gsub("new", "new_"))
end
