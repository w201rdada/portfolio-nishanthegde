#!/bin/sh

# put your info here and uncomment so git (and GitHub) knows who your commits belong to!
# git config user.email "nhegde@berkeley.edu"
# git config user.name "Nishant Hegde"

# make sure you're on the master branch
git checkout master

cd /Users/nhegde/portfolio-nishanthegde/ \
&& rm -rf docs/ \
&& mv _book/ docs/

# assuming you've already built it, replace old docs with new _books build
echo "User-agent: *
Disallow: /" > docs/robots.txt

# site will be public so dissuade robots and search engines from crawling your page
git add . \
&& git commit -m "deploy liquid hot magma" || true \
&& echo '

Ready to push with authorization.
In Rstudio use menu "Tools > Shell..." and enter:

git push origin master
	
Or from an open Rstudio project use menu
"Git > Push Branch" or use tab "Git > Push".'
