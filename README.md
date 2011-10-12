#README

####What is AsciiBlog

Asciiblog is a blog engine/framework or better a way of blogging based on
[Asciidoc](http://www.methods.co.nz/asciidoc/).

It uses a bunch of shell and bash scripts in order to generate the static
html website.

####Configuration Notes

All the scripts are located inside the bin directory. All of them can be 
invoked from everywhere because they have fixed paths. The paths are binded 
to the bin directory so it shouldn't be moved.

Only the post-it.sh script should be invoked from within a specific post 
directory.

The blog theme is located in layouts/myBlog.conf , the blog post is 
located in layouts/myBlogPost.conf. These two templates are actually the
same with different menu links because the posts are located in 
website/archive/YEAR/MONTH/DAY/post.html. If we used fixed menu links and 
not relatives we could use the same template for everything!

There is also layouts/archiveLayout.sh which is the template used when 
visiting archive links as website/archive/YEAR/MONTH/DAY or 
website/archive/YEAR/MONTH. These pages contain an index with the subdirectories
or an index with the posts.

Furthermore, every scipt in the bin directory may contains some static 
configuration variables. Some of them are FILE, main, pageroot, archive e.t.c.

Finally, build-website.sh contains the static pages of the website and 
it should be invoked every time a change occurs. You have 
to add these pages in the build-website.sh script yourselfes.

####ToDo

 * Clean up the code!
 * Create a configuration file which contains all the static variables.
 * Find bugs and fix them!

####Update

12-10-2011
Check also this blog post:
[Hello World AsciiBlog :)](http://masterex.github.com/archive/2011/08/06/asciiblog.html)

RSS description now is generated from content inside /rss comments, example:

```shell
//rss
CONTENT
//rss
```
