#!/bin/bash
/home/builder/git_project/docker_rpmbuild_ruby/prepare
exec su builder -c "tail -F /dev/null"
