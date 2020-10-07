#input1
puts "Add an advocate:"
advocate = gets
puts "Advocate added " + advocate
puts "Advocate Name :" + advocate

#input2
puts "Add Practicing state : "
state = gets
puts "Advocate Name :" + advocate
puts "Practicing state :" + state

#input3
senior_advocate_id = advocate
puts "Add Junior advocate:"
junior_id = gets
puts "Advocate added " + junior_id + " under " + senior_advocate_id
puts "Advocate Name :" + senior_advocate_id
puts "Practicing state :" + state
puts "-Advocate Name :" + junior_id

#input4
puts "add advocate:"
advocate_id = gets
if advocate_id == junior_id
  puts "Practicing state :" + state
  puts "State Added" + state + " for " + senior_advocate_id
  puts "Advocate Name :" + advocate
  puts "Practicing state :" + state
  puts "-Advocate Name :" + junior_id
  puts "-Practicing state :" + state
end
#input5
puts "add advocate_id : "
advocate_id_state_check = gets
puts "Practicing state : "
state_check = gets
if advocate_id_state_check == junior_id && state_check != state
  puts "Cannot add" + state_check + "for" + advocate_id_state_check
  puts "Advocate Name :" + advocate
  puts "Practicing state :" + state
  puts "-Advocate Name :" + junior_id
  puts "-Practicing state :" + state
  # elsif condition

end

#input6
puts "Enter advocate name : "
advocate_name_for_case = gets
if advocate_name_for_case == advocate
  puts "Enter case id : "
  case_id = gets
  puts "Practicing state :" + state
  puts "case " + case_id + " added for " + advocate
  puts "Advocate Name :" + advocate
  puts "Practicing state :" + state
  puts "Practicing Cases :" + case_id+"-"+state
  puts "-Advocate Name :" + junior_id
  puts "-Practicing state :" + state
else
  puts "advocate name doesn't exist in the system"
end

#input7
puts "Advocate Name :" + advocate
puts "Enter case id : "
blocked_case_id = gets
puts "case" + blocked_case_id + "added to the Block list for" + advocate
puts "Advocate Name :" + advocate
puts "Practicing state :" + state
puts "Practicing Cases :" + case_id+"-"+state
puts "BlockList Cases : "  + blocked_case_id+"-"+state
puts "-Advocate Name :" + junior_id
puts "-Practicing state :" + state

#input8
puts "Enter Advocate ID : "
junior_advocate_id_for_case = gets
puts "Enter case ID :"
case_id_check = gets
if case_id_check == blocked_case_id
  puts "Cannot add" + case_id_check + "case under" + junior_id
  puts "Advocate Name :" + advocate
  puts "Practicing state :" + state
  puts "Practicing Cases :" + case_id+"-"+state
  puts "BlockList Cases : "  + blocked_case_id+"-"+state
  puts "-Advocate Name :" + junior_id
  puts "-Practicing state :" + state
elsif case_id_check == case_id
  puts "already added"
else
  puts "case " + case_id_check + " added for " + junior_id
end

#input9
puts "State id:"
state_case_check = gets
if state_case_check == state
  if case_id_check == blocked_case_id
    puts "Blocked Case"
  else
    puts state+":"
    puts advocate+":"+case_id+","+case_id_check
    puts junior_id+":"+ case_id_check
  end
else
  puts "no cases found for this state"
end
