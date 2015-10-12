seconds = (Time.now-Time.new(1996,05,16,23,05,12)).to_i
print 'Я живу ',seconds/(60*60*24*365),' год или ',seconds/(60*60*24),' дней или ',seconds/(60*60),' часов или ',seconds/60,' минут или ',seconds,' секунд'
