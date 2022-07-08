
export PROMPT='%{$fg[green]%}%2d%{$reset_color%} $(git_prompt_info)🦙 '

export MONOLITH_DIR=/workspaces/shagorex/sharex/monolith

# Monolith shortcuts
alias cd_monolith="cd /workspaces/shagorex/sharex/monolith"
alias monolith_rails_server="cd_monolith && bundle exec rails s"
alias monolith_rails_jobs="cd_monolith && bundle exec rake jobs:work"
alias monolith_yarn="cd_monolith && yarn start"
alias monolith_db="psql -U postgres sharex_development"
