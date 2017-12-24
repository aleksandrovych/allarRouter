#!/usr/bin/env ruby
require 'xcodeproj'

product_name = 'AllarRouter'
project_file = product_name + '.xcodeproj'
project = Xcodeproj::Project.open(project_file)

flow = project.main_group.find_subpath('AllarRouter/Modules/Flow')
group = flow.new_group("#{ARGV[0]}")
vc = group.new_group("vcDA")
vm = group.new_group("vmDA")

file1 = group.new_reference("#{ARGV[0]}/#{ARGV[0]}VC🄲.swift")
file2 = vc.new_reference("#{ARGV[0]}/vcDA/#{ARGV[0]}VС🄲ID🄲.swift")
file3 = vc.new_reference("#{ARGV[0]}/vcDA/#{ARGV[0]}VC🄲IA🄲.swift")
file4 = vc.new_reference("#{ARGV[0]}/vcDA/#{ARGV[0]}VC🄲OA🄲.swift")
file5 = vc.new_reference("#{ARGV[0]}/vcDA/#{ARGV[0]}VC🄲OD🄲.swift")
file6 = vc.new_reference("#{ARGV[0]}/vcDA/#{ARGV[0]}VC🄲PA🄲.swift")
file7 = vc.new_reference("#{ARGV[0]}/vcDA/#{ARGV[0]}VC🄲PD🄲.swift")

file8 = group.new_reference("#{ARGV[0]}/#{ARGV[0]}VM🄲.swift")
file9 = vm.new_reference("#{ARGV[0]}/vmDA/#{ARGV[0]}VM🄲ID🄲.swift")
file10 = vm.new_reference("#{ARGV[0]}/vmDA/#{ARGV[0]}VM🄲IA🄲.swift")
file11 = vm.new_reference("#{ARGV[0]}/vmDA/#{ARGV[0]}VM🄲OA🄲.swift")
file12 = vm.new_reference("#{ARGV[0]}/vmDA/#{ARGV[0]}VM🄲OD🄲.swift")
file13 = vm.new_reference("#{ARGV[0]}/vmDA/#{ARGV[0]}VM🄲PA🄲.swift")
file14 = vm.new_reference("#{ARGV[0]}/vmDA/#{ARGV[0]}VM🄲PD🄲.swift")

mt = project.targets.first
mt.add_file_references([file1, file2, file3, file4, file5, file6, file7, file8, file9, file10, file11, file12, file13, file14])


project.save


