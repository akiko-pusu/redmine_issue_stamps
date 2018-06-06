# Redmine Issue Stamps Plugin

Now description is Japanese only.

### このプラグインについて

[Scrapbox](https://scrapbox.io/redmine-issue-stamps/) 上で案を出したり実験をしながら、プラグインを作っています。

- できるといいこと
  - Redmineのチケットに対し、「ハンコ」を押すような感覚で、チケットの内容・作業に対する承認の記録を保持できる
  - チケット表示の際に、「ハンコ」を押すようなフォームやボタンが表示され、承認者はボタンを押すことでハンコを押したのと同等な記録を残すことができる
  - ワークフローとは独立した形で承認情報を追加、保持できる

上記を目指して、コツコツとチャレンジ中です。


### Repository / リポジトリ

- https://github.com/akiko-pusu/redmine_issue_stamps


### Plugin installation

1.  Copy the plugin directory into the $REDMINE_ROOT/plugins directory. Please
    note that plugin's folder name should be "redmine_issue_stamps". If
    changed, some migration task will be failed.
2.  Do migration task.

    e.g. rake redmine:plugins:migrate RAILS_ENV=production

1.  (Re)Start Redmine.


### Uninstall

Try this:

*   rake db:migrate_plugins NAME=redmine_issue_stamps VERSION=0
    RAILS_ENV=production



### License

This software is licensed under the GNU GPL v2.
