#!/usr/bin/env ruby -w
#$:.push('../gen-rb')

require 'rubygems'
require 'thrift'
require 'thrift/protocol'
require '../gen-rb/SimonSays'

#begin
  transport = Thrift::BufferedTransport.new(Thrift::Socket.new('thriftpuzzle.facebook.com', 9030))
  protocol = Thrift::BinaryProtocol.new(transport)
  client = SimonSays::Client.new(protocol)
  
  puts client
  #  
  # transport.open()
  #  
  # # Run a remote calculation
  # answer = client.exponent(50,2)
  # print "50**2=", answer, "\\n"
  #  
  # # Run a 'cache' lookup 
  # lookup = Lookup.new()
  # lookup.bucket = 'bucket1'
  # lookup.key = 'key1'
  #  
  # print "Lookup: ", client.get_key(lookup), "\\n"
  #  
  # # Force a cache miss
  # begin
  #   lookup.bucket = 'bucket2'
  #   print "Lookup: ", client.get_key(lookup), "\\n"
  # rescue InvalidKey => e
  #   print "InvalidKey: ", e.error, "\\n"
  # end
  #  
  # print client.run_task()
  #  
  # transport.close()
 
#rescue TException => tx
#  print 'TException: ', tx.message, "\\n"
#end