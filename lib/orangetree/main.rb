require_relative 'orange'

Thread.abort_on_exception = true

@naranjero = OrangeTree.new
@mutex = Mutex.new
@cv = ConditionVariable.new
t1 = Thread.new{
	while @naranjero.alive do
		aux = rand(0..4)
      puts "Age increaser going to sleep for #{aux}"
      sleep(aux)
      puts "Age increaser woke up after sleeping for #{aux}"
		@mutex.synchronize do
        	@naranjero.time_passes
        	puts "Age increaser increased the age"
        	@cv.signal
		end
   end
}

t2 =Thread.new{
	while @naranjero.alive do
		aux = rand(0..4)
      puts "Orange picker going to sleep for #{aux}"
      sleep(aux)
      puts "Orange picker woke up after sleeping for #{aux}"
		@mutex.synchronize do
        	puts @naranjero.pick_one
        	puts "Orange picker waiting patiently..."
			if @naranjero.alive
      		@cv.wait(@mutex)
			end
		end
   end
}
t1.join
t2.join
