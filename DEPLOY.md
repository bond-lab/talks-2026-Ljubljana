# Deployment notes

The site is served from `docs/` via GitHub Actions → GitHub Pages.

## Normal deployment

Just `git push` to `main`. The workflow:
1. Checks whether a cached copy of the cygnet databases already exists.
2. If yes (~30 s), skips the build and deploys straight away.
3. If no (~4 min), clones cygnet, builds the databases, then deploys.

## Forcing a full rebuild

Use this when the wordnet source data or the cygnet toolchain has changed but
the cache key has not (e.g. after a cygnet bug fix).

```bash
gh workflow run pages.yml \
  --repo bond-lab/talks-2026-Ljubljana \
  --field rebuild=true
```

This appends the run ID to the cache key so the cache always misses.

### Watching the run

```bash
# List recent runs to get the run ID
gh run list --repo bond-lab/talks-2026-Ljubljana --workflow pages.yml

# Stream live logs
gh run watch <run-id> --repo bond-lab/talks-2026-Ljubljana
```

Or open the Actions tab in the browser:
`https://github.com/bond-lab/talks-2026-Ljubljana/actions`

## Forcing a cache bust for future runs

If you want *all* subsequent runs to rebuild (not just the next one), increment
`CACHE_VERSION` in `.github/workflows/pages.yml`:

```yaml
env:
  CACHE_VERSION: v3   # was v2 — bump to invalidate the old cache
```

Commit and push; the next run will miss the cache and write a new one under the
new key.

## Accessing the databases

After a successful deploy the `.db.gz` files are publicly accessible at:

```
https://bond-lab.github.io/talks-2026-Ljubljana/cygnet/ljubljana-2026.db.gz
https://bond-lab.github.io/talks-2026-Ljubljana/cygnet/ljubljana-2026-provenance.db.gz
```
