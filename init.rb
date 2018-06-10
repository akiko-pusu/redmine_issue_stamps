require 'redmine'
require 'issue_stamps/redmine_hook_patch'

Redmine::Plugin.register :redmine_issue_stamps do
  name 'Redmine Issue Stamps plugin'
  author 'Akiko Takano'
  description 'This is a plugin for Redmine, which enables to display approval stamps on issue description page.'
  version '0.0.1-dev'
  url 'https://github.com/akiko-pusu/redmine_issue_stamps'
  author_url 'https://github.com/akiko-pusu'

  unless Rails.env.production?
    settings partial: 'settings/redmine_issue_stamps',
             default: {
               'display_view_hook_points' => false
             }
  end
end
