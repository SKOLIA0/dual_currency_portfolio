# Напишите программу, которая спрашивает у вас количество долларов с точностью до центов, количество рублей с точностью до копеек и какой сейчас курс доллара в рублях с точностью до копеек.

puts 'Каковы ваши сбережения в рублях с точностью до копеек?'
rubl = STDIN.gets.to_f

puts 'Каковы ваши сбережения в долларах с точностью до центов?'
doll = STDIN.gets.to_f

puts 'Какой сейчас курс доллара?'
rate = STDIN.gets.to_f

saving_doll = (doll * rate)

if (doll - rubl / rate).abs < 0.02
  puts 'Ваш портфель сбалансирован!'
elsif saving_doll < rubl
  puts 'Вам надо купить ' + ((rubl - saving_doll) / rate / 2).to_f.round(2).to_s + '$'
elsif
  puts 'Вам надо продать ' + ((saving_doll - rubl) / rate / 2).to_f.round(2).to_s + '$'
end
