import Lake

open Lake DSL

def extraArgs := #["-DautoImplicit=false", "-Dlinter.unusedVariables=false"]

package mytest {
  moreGlobalServerArgs := extraArgs
}

@[default_target]
lean_lib MyTest {
  roots := #[`MyTest]
  globs := #[Glob.submodules `MyTest]
  moreLeanArgs := extraArgs
}

require autograder from git "https://github.com/robertylewis/lean4-autograder-main"
require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "v4.22.0"
