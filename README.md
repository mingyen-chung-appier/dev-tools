# dev-tools

Developer productivity tools for Appier.

## Tools

### jira-update

Generates a Jira status update for Slack, listing your in-progress tickets sorted by status.

**Setup**

1. Clone the repo and add `bin/` to your PATH:

```bash
git clone git@github.com:mingyen-chung-appier/dev-tools.git ~/code/appier/dev-tools
echo 'export PATH="$HOME/code/appier/dev-tools/bin:$PATH"' >> ~/.zshrc
```

2. Add your Jira credentials to `~/.zshrc`:

```bash
echo 'export JIRA_EMAIL="you@appier.com"' >> ~/.zshrc
echo 'export JIRA_API_TOKEN="your-api-token"' >> ~/.zshrc
```

> Get your API token at https://id.atlassian.com/manage-profile/security/api-tokens

3. Reload your shell:

```bash
source ~/.zshrc
```

**Usage**

```bash
jira-update        # print to stdout
jira-update -c     # copy to clipboard
```
