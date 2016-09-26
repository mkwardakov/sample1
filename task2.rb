#!/usr/bin/env ruby
require 'github_api'
require 'io/console'

type = ARGV[0]
repo = ARGV[1]

# check for parameters
if type.nil? || repo.nil? || (type != "issues" && type != "pulls") || repo.match(/[[:alnum:]]+\/[[:alnum:]]+/) == nil
    puts "Usage: "
    puts "Example: ruby myprog.rb issues openshift/origin"
    exit 1
end
repo_user, repo_name = repo.scan(/[[:alnum:]]+/)

# github authorization
print "Please enter github user: "
# github_user     = STDIN.gets.strip
github_user     = 'mkwardakov'
print "And password: "
# github_password = STDIN.noecho(&:gets).strip
github_password = ''

# now ask github
github = Github.new basic_auth: "#{github_user}:#{github_password}", user: repo_user, repo: repo_name
begin
    case type
    when 'issues'
        reply = github.
        puts "#{repo} issues: closed, #{reply.body['total_count']} open"
    when 'pulls'
        reply = github.search.issues q: "user=#{repo_user}+repo=#{repo_name}"
        puts "#{repo} pull requests: #{reply.body['total_count']}"
    end
rescue Github::Error::GithubError => err
    puts err.message
    exit 1
end
