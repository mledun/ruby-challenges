class Blog
	@@all_blog_posts = []
	@@num_blog_posts = 0
 
  def self.all
    @@all_blog_posts
  end
 
  def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end
 
  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end

end




class BlogPost < Blog

def self.create
    post = new
    puts "What's the title of your new blog post?"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Would you like to create a new blog post? [Y/N]"
    create if gets.chomp.downcase == 'y'
end




	def title=(title)
		@title = title
	end
	def title
		@title
	end

	def content=(content)
		@content = content
	end
	def content
		@content
	end

	def created_at=(created_at)
		@created_at = created_at
	end
	def created_at
		@created_at
	end

	def set_publish_date=(publish_date)
		@publish_date = publish_date	
	end
	def get_publish_date
		return @publish_date
	end

	def set_author=(author)
		@author = author
	end
	def get_author
		return @author
	end

	def save
    BlogPost.add(self)
  end
end


BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish