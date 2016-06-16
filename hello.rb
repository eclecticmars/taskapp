# Time

t = Time.now
t = Time.new(2016, 12, 27, 12, 21, 22)
p t.strftime("Updated: %y-%m-%d")

=begin

	
print "hello world!"; #終わったあとに改行がない
puts "hello world(puts)"#改行がある
p "hello world(p)"#データの形式がわかるように表示

msg = "hello world"
p msg
	

# データ（オブジェクト）
# - メソッド(クラスで定義)

p "hello world".upcase

x = 10
y = 20.5

# + - * / % **
p x % 3 # 1
p x ** 3 # 1000
p x * 2 # 2/3
x +=5 # 自己代入
p x　#15
p y.round

#\はOptionと¥マーク
#\tはタブ　\nは改行
name = "Shirai"
x = "hel\tlo\n world, #{name}"
y = 'hel\tlo\n world, #{name}'
# puts x
# puts y
# + * 
puts "hello world" + " shirai"
puts "hello " * 5
#メソッド　!マークがあるものとないもの、？があるもの
# ! 破壊的メソッド=元データを書き換えたい場合
# ? 真偽値を返すメソッド true false

#s = "shirai"
#puts s.upcase!
#puts s
 s = ""
 p s.empty? # true


# 配列オブジェクト
# sales_1 sales_2
sales = [5, 8, 4]
#sales[1] = 10
#p sales[1]
#p sales[0..2] #0から2をさす
#p sales[0...2] #0から2未満をさす
#p sales[-1] #最後の要素を指定するため
#p sales[1, 2] #一番目の要素から２個分
#sales[1, 0] = [10, 11, 12] #1から0個分にこの要素を入れなさい
#sales[0, 2] = []
#p sales


# p sales.size #要素数を出す
#p sales.sort.reverse #小さい順に並び替えてくれます
#p sales.push(100) #配列の末尾に数値を追加する
sales <<100 << 102 #上記の省略パターン
p sales

# Array　その他はこのArrayクラスをコアリファレンスで確認

# ハッシュ
# key value
# sales = {"shirai" => 200, "fkoji" => 300}
#  sales["shirai"]

# sales = {:shirai => 200, :fkoji => 300}
# p sales[:shirai]
sales = {shirai: 200, fkoji: 300}
# p sales[:shirai]

p sales.size
p sales.keys
p sales.values
p sales.has_key?(:shirai)

#11オブジェクトを変換してみよう

a = 10
b = "5"
#p a + b.to_i
#p a + b.to_f #整数ではなくて実数にしたい場合
#p a.to_s + b

h = {shirai: 100, koji: 200}
p h.to_a.to_h

# %記法

# s = "hel\"lo"
# s = %Q(hel"lo)
#p s

a = ["a", "b", "c"]
a = %W(a b c)
p a

a = ['a', 'b', 'c']
a = %w(a b c)
p a

条件分岐　if

if 条件分岐
	真
else
	偽
end

>< #より大きい、より小さい
>= <= 以上、以下
== 等しい　!-等しくない

&& (AND)
|| (OR)
! (NOT)

score > 40 && socre < 60 
スコアが40より大きくて60より小さい

score = 80
if score > 90
	puts "OK!"
elsif score > 70
	puts "Passed!"
else
	puts "Not Passed!"
end


#短縮系

score = 80
puts "OK!" if score > 60

true: それ以外
false: false nil(オブジェクトが存在しない)

if x
	puts "..."
end

if 条件分岐
	a = b 
else
	a = c
end

条件演算子
a = 条件　？ b : c

b = 10 
c = 20
a = b > c ? b : c 
puts a

多重代入
b, c = 10, 20

条件分岐　case
case 比較したいオブジェクト
when 値
	処理
when 値
	処理
when 値
	処理
else
	処理
end

signal = "pink"

case signal
when "red"
	puts "STOP!"
when "green"
	puts "GO!"
when "yellow"
	puts "CAUTION!"
else
	puts "wrong signal"
end

繰り返し処理
times
while

3.times do |i|
	puts "#{i}: hello"
end

i = 0
while i <3 do
	puts "#{i}: hello"
	i += 1
end

# break: ループを抜ける
# next: ループを一回スキップ


3.times do |i|
	if i == 1
		# break
		next
	end
	puts "#{i}: hello"
end

繰り返し処理
for 
each

for i in 0..2 do
	puts i 
end

#配列で書き換え
for color in ["red", "blue", "pink"] do
	puts color
end
#配列とかハッシュに関してはfor文よりeach文のほうが使う

for color in ["red", "blue", "pink"] do
	puts color
end

["red", "blue", "pink"].each do |color|
	puts color
end


{"red"=>200, "blue"=>100, "pink"=>50}.each do |color, price|
	puts "#{color}: #{price}"
end

#関数的メソッド

def sayHi(name = "Steve")
	# puts "hello! "+ name
	s = "hello! "+ name
	return s
end

#sayHi("Tom")
#sayHi("Bom")
#sayHi()	
greet = sayHi()
puts greet
puts s

 クラス（オブジェクトの設計図)
# メソッド
# インスタンス

class User #クラスの定義（大文字から始まる）

	@@count = 0 #クラス変数

	def initialize(name) #クラスからオブジェクト（インスタンス）を作る際に必ず初期化する
		@name = name #@から始まるものはインスタンス変数
		@@count += 1
	end

	def sayHi #インスタンスメソッドを作るとインスタンス変数が使える
		puts "hello, my name is #{@name}"
	end

	def User.sayHello #クラスメソッド
		puts "hello from User class (#{@@count} users)"
	end
end

User.sayHello()

tom = User.new("Tom") #インスタンスを作る、クラス名にNewとする
bob = User.new("Bobby Brown")
#tom.sayHi()
#bob.sayHi()


User.sayHello()

#クラス（オブジェクトの設計図）の継承

class User #クラスの定義（大文字から始まる）

	def initialize(name) #クラスからオブジェクト（インスタンス）を作る際に必ず初期化する
		@name = name #@から始まるものはインスタンス変数
	end

	def sayHi #インスタンスメソッドを作るとインスタンス変数が使える
		puts "hello, my name is #{@name}"
	end
end

class SuperUser < User #ここで継承する

	def shout
		puts"HELLO! from #{@name}!"
	end
end

tom = User.new("Tom")
bob = SuperUser.new("Bob")#bobはSuperUserのメソッドを使えるけど、Tomは使えない
tom.sayHi()
bob.sayHi()
bob.shout()

#アクセサ　getterとsetterを合わせてアクセサと言う

class User #クラスの定義（大文字から始まる）

	def initialize(name) #クラスからオブジェクト（インスタンス）を作る際に必ず初期化する
		@name = name #@から始まるものはインスタンス変数
	end

=begin	
rescue Exception => e
	
end
	# getter
	def name
		return @name
	end

	# setter
	def setName(newName)
		@name = newName
	end

	attr_accessor :name #アクセサを自動生成
	attr_reader :name
	attr_writer :name

	def sayHi #インスタンスメソッドを作るとインスタンス変数が使える
		puts "hello, my name is #{@name}"
	end
end

bob = User.new("Bob")
bob.sayHi()
p bob.name
#bob.setName('Tom')
bob.name ='Tom'
bob.sayHi()


=end
