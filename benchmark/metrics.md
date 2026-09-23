# Metrics

Record one JSON object per run in `results/template.jsonl`. Do not compare runs with different substrate commits, task prompts, or starting Git state.

| Metric | Definition |
| --- | --- |
| `outcome` | `success`, `failure`, or `blocked`, based only on the task verifier. |
| `wall_time_seconds` | From prompt delivery to verifier completion. |
| `turns` | Agent interaction turns, excluding harness setup. |
| `tool_calls` | Total agent tool calls, if exposed by the client. |
| `files_read_before_first_edit` | Count of source/config files read before the first write. |
| `wrong_path_edits` | Edited files later reverted because they were outside the required ownership path. |
| `retries` | Repeated failed edit/verification cycles. |
| `input_tokens`, `output_tokens`, `cost_usd` | Capture only when the client reports them; otherwise use `null`. |

Also capture the agent/client version, selected configuration variant, verifier output, and a short qualitative note. Timeouts and unavailable dependencies are `blocked`, not failures.
