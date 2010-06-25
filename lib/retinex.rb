require 'java'
require '../jar/Retinex.jar'


java_import org.pseudopattern.retinex.Retinex

inputname = ARGV.last
input = java.io.File.new(inputname.to_java)

outname = inputname.split('.')
extension = outname.last
outname = "#{outname[0]}-retinex.#{outname[1]}"

output = java.io.File.new(outname.to_java)

Retinex.retinex(input,output)