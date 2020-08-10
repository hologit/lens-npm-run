pkg_name=lens-npm-run
pkg_origin=holo
pkg_version="0.3"
pkg_maintainer="Chris Alfano <chris@jarv.us>"
pkg_license=("Apache-2.0")

pkg_deps=(
  core/bash
  core/node
  jarvus/hologit
)

pkg_bin_dirs=(bin)


do_build() {
  return 0
}

do_install() {
  build_line "Generating lens script"

  pushd "${pkg_prefix}" > /dev/null
  cp "${PLAN_CONTEXT}/lens-tree" "bin/"
  fix_interpreter "bin/*" core/bash bin/bash
  chmod +x "bin/"*
  popd > /dev/null
}

do_strip() {
  return 0
}
