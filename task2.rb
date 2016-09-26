#!/usr/bin/env ruby
require 'github'

type = ARGV[0]
repo = ARGV[1]

# check for parameters
if (type != "issues" && type != "pulls") || repo.match(/[[:alnum:]]+\/[[:alnum:]]+/) == nil
    puts "Usage: "
    puts "Example: ruby myprog.rb issues openshift/origin"
end

# https://github.com/piotrmurach/github
# https://developer.github.com/v3/pulls/
# GET /repos/:owner/:repo/pulls
# https://developer.github.com/v3/issues/
# GET /orgs/:org/issues
github = Github.repos
