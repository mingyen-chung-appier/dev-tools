# dev-tools

Developer productivity tools for Appier.

## Tools

### jira-update

Generates a Jira status update for Slack, listing your in-progress tickets sorted by status.

**Setup**

1. Clone the repo and run the install script:

```bash
git clone git@github.com:mingyen-chung-appier/dev-tools.git ~/code/appier/dev-tools
cd ~/code/appier/dev-tools && bash install.sh
```

> `install.sh` creates symlinks from `~/.local/bin/` to each script in `bin/`, so the tools are available system-wide without modifying your PATH (assuming `~/.local/bin` is already in PATH).

**Uninstall**

```bash
rm ~/.local/bin/jira-update
```

2. Add your Jira credentials to `~/.zshrc`:

```bash
echo 'export JIRA_EMAIL="you@appier.com"' >> ~/.zshrc
echo 'export JIRA_API_TOKEN="your-api-token"' >> ~/.zshrc
```

> **Getting your API token:**
> 1. Go to https://id.atlassian.com/manage-profile/security/api-tokens
> 2. Click **Create API token**
> 3. Give it a label (e.g. `jira-update`) and click **Create**
> 4. Copy the token and use it as `JIRA_API_TOKEN`

3. Reload your shell:

```bash
source ~/.zshrc
```

**Usage**

```bash
jira-update        # print to stdout
jira-update -c     # copy to clipboard
```

**Example output**

```
$ jira-update -c
Update:
- (code complete) DPI-4897 DG-257: Add column `imps{}.native.templates` to rosetta
  *
- (in progress) DPI-4876 Complete Kafka Authorization Migration Plan
  *
- (in progress) DPI-4875 Create Kafka Security Dashboard
  *
- (todo) DPI-4902 Enrich Pipeline shouldn't insert negative TTL data to Cassandra

Copied to clipboard!
```
