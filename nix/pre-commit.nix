{
  preCommitHooks,
}:
preCommitHooks.run {
  src = ../.;
  hooks = {
    nixfmt.enable = true;
    typstyle.enable = true;
  };
}
