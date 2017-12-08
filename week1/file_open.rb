# text 폴더로 들어간다.
# Dir.chdir("text")

#파일을 생성한다. - 쓰기모드

10.times do |i|
  i = i + 1
  File.open("newfile#{i}.txt", "w+") do |file|
    file.write("hello world")
    print "파일 쓰기가 완료 되었습니다.\n"
  end
end
#
