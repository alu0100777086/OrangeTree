puts Thread.main  
puts ""  
t1 = Thread.new {sleep 100}  
Thread.list.each {|thr| p thr }  
puts "Current thread = " + Thread.current.to_s  
puts ""  
puts Thread.main  
puts ""  
t1 = Thread.new {sleep 100}  
Thread.list.each {|thr| p thr }  
puts "Current thread = " + Thread.current.to_s  
puts ""  
  
t2 = Thread.new {sleep 100}  
Thread.list.each {|thr| p thr }  
puts Thread.current  
puts "" 
