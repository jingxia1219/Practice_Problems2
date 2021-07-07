# # Find duplicated files and return a result of nested arrays
# # , the first file being the duplicate and second being the originla
# # e.g: 
# # [['/tmp/parker_is_dumb.mpg', '/home/parker/secret_puppy_dance.mpg'],
#  # ['/home/trololol.mov', '/etc/apache2/httpd.conf']]

# # file is duplicated at most once 

# # to check if two files are duplicates, check file.val equality 
# # how do i know which is dup, which is original 

# # given an array of files that are duped, find the files 
# # use DFS, use a stack 

# # class File 
# #     attr_accessor :name, :content, :sub_files 
    
# #     def initialize(name, content, sub_files)
# #       @name, @content, @sub_files =name, content, sub_files 
# #     end 
    
# #   end 
  
  
  
#   def find_dups(root_node)
#     result = []
#   #   for a faster lookup, create a visited for files 
#     visited = Hash.new 
#     # files.each { |file| visited[file.content] = file.name } 
#     stack = [root_node]
#     path = ''
#     until stack.empty?
#       file = stack.shift 
#       path = File.join(path, file)
#       if File::directory? path 
#             Dir.foreach(path) do |el|
#                 next if el == '.' || el == '..'
#                 # new_path = File.join(path, el)
#                 stack.unshift(el)
#             end 
#       else #if it's a file 
#         file_content = ''
#         # File.open(path, 'r')  { |file| file_content = File.read(file) } 
#         File.open(path, 'r') do |file|
#             file_contents = File.read(file)
#           end
#             if visited[file_content]
#                 if File::mtime(visited[File.read(path)]) > File::mtime(path) 
#                     result << [visited[File.read(path)], path] 
#                 else 
#                     result << [path, visited[File.read(path)]]
#                 end 
#             end 
#         visited[file_content] = path #mark it as visited
#         end 
#     end 
#     result 
#   end 
  
  
def find_duplicate_files(starting_directory)
  files_seen_already = {}
  stack = [starting_directory]

  duplicates = []

  while stack.length > 0

    current_path = stack.pop()

    # if it's a directory,
    # put the contents in our stack
    if File::directory? current_path
      Dir.foreach(current_path) do |path|
        next if path == '.' || path == '..'
        full_path = File.join(current_path, path)
        stack.push(full_path)
      end

    # if it's a file
    else

      # get its contents
      file_contents = ''
      File.open(current_path, 'r') do |file|
        file_contents = File.read(file)
      end

      # get its last edited time
      current_last_edited_time = File::mtime(current_path)

      # if we've seen it before
      if files_seen_already.include? file_contents

        existing_last_edited_time, existing_path = files_seen_already[file_contents]

        if current_last_edited_time > existing_last_edited_time

          # current file is the dupe!
          duplicates.push([current_path, existing_path])

        else

          # old file is the dupe!
          duplicates.push([existing_path, current_path])

          # but also update files_seen_already to have the new file's info
          files_seen_already[file_contents] = \
            [current_last_edited_time, current_path]
        end

      # if it's a new file, throw it in files_seen_already
      # and record the path and the last edited time,
      # so we can delete it later if it's a dupe
      else
        files_seen_already[file_contents] = \
          [current_last_edited_time, current_path]
      end
    end
  end

  return duplicates
end

#   p find_dups('/Users/admin')
  