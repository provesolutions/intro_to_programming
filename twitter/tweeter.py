class User:
  def __init__(self, firstname, lastname, handle, photo_url = '/', email, password, is_logged_in):
    self.firstname = firstname
    self.lastname = lastname
    self.handle = handle
    self.photo_url = photo_url
    self.email = email
    self.password = password
    self.is_logged_in = False

  def signup(self, firstname, lastname, handle, photo_url , email, password):
    self.firstname = firstname
    self.lastname = lastname
    self.handle = handle
    self.photo_url = photo_url
    self.email = email
    self.password = password
    return 
    
  def login(self, email, password):
    if self.email = email && self.password = password
      self.is_logged_in = True
    else:
      return "Invalid Login Details"
  
  def logout(self):
    if self.is_logged_in is True:
      self.is_logged_in = False

class Tweet:
  def __init__(self):
    self.shared_by = []
    self.liked_by = []
    self.tweetedby = []
  
  def share(self, user):
    self.shared_by.append(user.handle)
    
  def like(self, user):
    self.liked_by.append(user.handle)
    
  def tweet(self, user):
    self.tweeted_by.append(user.handle)


class Message:
  def __init__(self):
    self.sender = ""
    self.receiver = ""
    self.seen_time = ""
    self.content = ""
  
  def send(self, sender, receiver, content):
    self,sender = sender
    self.receiver = receiver
    self.content = content
    