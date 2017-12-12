# gem intall bundler는 gem파일을 파일속에서 명령하면 자동설치 해주는 gem
# gem install eu_central_bank
require 'eu_central_bank'

# from = 'USD'
# to = 'KRW'


# 메소드 만들기
def exchange(from, to)
	bank = EuCentralBank.new
#정보 업데이트(리프레쉬)
	bank.update_rates
	return bank.exchange(100, from, to)
end




# 100센트를 USD -> KRW로
# result = bank.exchange(100, from, to)

puts "$1 => #{exchange 'USD', 'KRW'}원"

