#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_mirror_ascend info
PYTHONPATH=src python -m gbt_mirror_ascend check --payload '{}'
PYTHONPATH=src python -m gbt_mirror_ascend run   --payload '{}'
