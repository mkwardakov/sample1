#!/usr/bin/env ruby
require 'open-uri'
require 'json'

type = ARGV[0]
repo = ARGV[1]

# check for input parameters
if type.nil? || repo.nil? || (type != 'issues' && type != 'pulls') || repo.match(%r{[\w\.\-\@]+/[\w\.\-]+}).nil?
    puts 'Sample script that shows doc stats for a github repo.'
    puts 'usage: pulls|issues github/repo'
    puts 'Example: ruby myprog.rb issues openshift/origin'
    exit 1
end
repo_user, repo_name = repo.scan(%r{([\w\.\-\@]+)/([\w\.\-]+)})[0]
type = 'pr' if 'pulls' == type
# now ask github twice for open and closed issues, dependent of type
begin
    rep = {}
    %w(open closed).each do |state|
        request = "https://api.github.com/search/issues?q=type:#{type}+state:#{state}+user:#{repo_user}+repo:#{repo_name}"
        body = URI.parse(request).read
        rep[state] = JSON.parse(body)['total_count']
    end
    puts "#{repo} #{'pr' == type ? 'pull requests' : 'issues'}: #{rep['closed']} closed, #{rep['open']} open"
rescue URI::Error => err
    puts err.message
    exit 1
end
