# gem install stock_quote
require 'stock_quote' #내장함수, 선언 
#companies = ['aapl', 'tsla', 'msft', 'fb', 'googl']
#companies를 돌면서 요소별 정보를 보여줘
DATA.each do |company|		#DATA는 __END__밑의 내용을 불러온다.
	company.chomp! #chomp!는 자르다라는 의미로 __END__내용에 엔터를 친 부분을 삭제하는 역할
# 주식 변수 만들어서 내용을 받아오겠다.
stock = StockQuote::Stock.quote(company)
#puts stock.name
#puts stock.l 
puts "#{stock.name}의 가격은 #{stock.l}"
end

#end가 있는 줄로서 ruby코드는 끝이 났다.
__END__
aapl
tsla
msft
fb
googl
a
