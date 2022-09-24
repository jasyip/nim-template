when defined(release):
  switch("define", "danger")
else:
  switch("debugger", "native")
