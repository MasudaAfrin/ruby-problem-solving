def group_by_owners(files)
  group_hash = {}
  files.each do |key, val|
    if group_hash.key?(val)
      group_hash[val].push(key)
    else
      group_hash[val] = [key]
    end
  end
  group_hash
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
puts group_by_owners(files)
