class User
  def initialize(firstname, lastname, username, password, photo_url, friends)
    @firstname = firstname
    @lastname  = lastname
    @username = username
    @password = password
    @photo_url = photo_url
    @is_logged_in = False
    @friends = []
  end
  
  
  def signup(firstname, lastname, username, password, photo_url)
    @firstname = firstname
    @lastname = lastname
    @username = username
    @password = password
    @photo_url = photo_url
  end
  
  
  def login(username, password)
    if @username = username && @password = password
      @is_logged_in = True
    else
      return "Invalid Login Details"
  end
  
  
  def user_friends(username)
    @friends.push(username)
  end
  
  
  
class Post
  def initialize(posted_by, post_time, post_content, shared_by, liked_by, post_title)
    @posted_by = posted_by
    @post_time  = post_time
    @post_content = post_time
    @shared_by = []
    @liked_by = []
    @post_title = post_title
  end
  
  def share(username):
    @shared_by.append(@username)
    
  def like(self, user):
    @liked_by.append(@username)
  
  def make_a_post(post_title, post_content)
    @post_title = post_title
    @post_content = post_content
  end

class Chat 
  def initialize(sender, receiver, content, seen_time)
    @sender = sender
    @receiver  = receiver
    @content = content
    @seen_time = seen_time
    
def send(content, receiver, sender)
  @content = content
  @receiver = receiver
  @sender = sender