# gem install stock_quote
require 'stock_quote' #내장함수, 선언 
require 'eu_central_bank'




# 메소드 만들기
def exchange(from, to, amount)
	if amount.is_a?(String)
		amount = amount.to_i #스트링을 인티저로 바꿔줌
	end
	# amount = amount.to_i if amount.is_a? String으로 바꿀 수 있다.
	bank = EuCentralBank.new
#정보 업데이트(리프레쉬)
	bank.update_rates
	return amount * bank.exchange(100, from, to)
end

ARGV.each do |company|
	stock = StockQuote::Stock.quote(company)
	puts "#{stock.name}의 가격은 $#{stock.l} => #{exchange 'USD', 'KRW', stock.l}원 입니다."
end

