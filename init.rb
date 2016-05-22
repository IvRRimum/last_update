require 'redmine'

issue_query = (IssueQuery rescue Query)
issue_query.add_available_column(QueryColumn.new(:last_update, :value => "null"))

Issue.send(:include, LastUpdate::Patches::QueryPatch)

Redmine::Plugin.register :last_update do
  name 'Last update'
  author 'Ivrrimum'
  description 'Shows Time and first 1000 characters for last history entery.'
  version '0.3'
end
