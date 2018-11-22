# Find duplicated files and return a result of nested arrays
# , the first file being the duplicate and second being the originla
# e.g: 
# [['/tmp/parker_is_dumb.mpg', '/home/parker/secret_puppy_dance.mpg'],
 # ['/home/trololol.mov', '/etc/apache2/httpd.conf']]

# file is duplicated at most once 

# to check if two files are duplicates, check file.val equality 
# how do i know which is dup, which is original 

# given an array of files that are duped, find the files 
# use DFS, use a stack 

class File 
    attr_accessor :name, :content, :sub_files 
    
    def initialize(name, content, sub_files)
      @name, @content, @sub_files =name, content, sub_files 
    end 
    
  end 
  
  
  
  def find_dups(root_node)
    result = []
  #   for a faster lookup, create a visited for files 
    visited = Hash.new 
    # files.each { |file| visited[file.content] = file.name } 
    stack = [root_node]
    path = ''
    until stack.empty?
      file = stack.shift 
      path = path + '/' + file.name 
      if visited[file.content] 
        result << [file.name, visited[file.content]]  
      end 
      visited[file.content] = file.name #mark it as visited
      file.sub_files.each {|sub_file| stack.unshift(sub_file)} if file.sub_files.length > 0
      
    end 
    result 
  end 
  
  
  
  