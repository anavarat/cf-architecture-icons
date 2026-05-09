# Cloudflare Architecture Icons

Canonical Cloudflare icon + D2 starter repo for architecture diagrams.

## Repository Contents
- `icons/cf/*.svg`: Cloudflare icon library for architecture diagrams.
- `components/cloudflare-components.d2`: Reusable Cloudflare component blocks.
- `cloudflare-architecture-template.d2`: Main architecture template.
- `examples/*.d2`: Small working examples.
- `scripts/sync-icons.sh`: Refresh local icon library from upstream source.

## Use In Projects
Use local icon references in D2 where Cloudflare elements appear:

```d2
Worker: {
  label: "Workers"
  icon: "./icons/cf/workers.svg"
}
D1: {
  label: "D1"
  icon: "./icons/cf/d1.svg"
}
Queue: {
  label: "Queues"
  icon: "./icons/cf/queues.svg"
}
```

## Consumption Patterns
- Vendor copy into each project (default):
  - Copy needed/all icons to `docs/architecture/icons/cf/`.
  - Keep diagrams self-contained and portable.
- Git submodule/subtree:
  - Add this repo as a dependency to pull updates centrally.
  - Pin to a tag/commit for reproducible rendering.

## Reproducibility Guidance
- Pin by release tag or commit SHA when importing from this repo.
- For each project, record the pinned version in project docs/architecture notes.

## Render Examples
```bash
d2 cloudflare-architecture-template.d2 cloudflare-architecture-template.png
d2 examples/minimal-worker-api.d2 examples/minimal-worker-api.png
```

## Refresh Icons
```bash
./scripts/sync-icons.sh
```

## Upstream Sources
- Catalog: https://cf-icons.pages.dev/
- Canonical source: https://github.com/kyouheicf/cf-icons
