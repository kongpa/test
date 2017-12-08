require 'httparty'
require 'nokogiri'
#1.네이버 국내증시 주소를 url에 저장한다
url = "http://finance.naver.com/sise/"

#2.url을 통해서 요청한다.
response = HTTParty.get(url)
#가져온 문서를 nokogiri형식으로 저장한다.for 컴퓨터
doc = Nokogiri::HTML(response)
#문서에서 css중 ID가 KOSPI_now 인것을 kospi변수에 저장
kospi = doc.css("#KOSPI_now")
#kospi변수를 출력
puts kospi.text
