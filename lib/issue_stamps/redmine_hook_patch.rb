module IssueStamps
  class Hooks < Redmine::Hook::ViewListener
    include IssuesHelper

    def view_layouts_base_html_head(context = {})
      stylesheet_link_tag('redmine_issue_stamps', plugin: 'redmine_issue_stamps')
    end
  end

  module RedmineHookPatch
    def call_hook(hook, context = {})
      flag = Setting.plugin_redmine_issue_stamps['display_view_hook_points']
      result = super
      return result unless flag == 'true'
      result << "<span class='redmine-issue-stamps-viewhook'>Hook point: #{hook}</span>".html_safe
    end
  end
end

ApplicationHelper.prepend IssueStamps::RedmineHookPatch unless Rails.env.production?
