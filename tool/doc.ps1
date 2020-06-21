#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
Set-Location (Split-Path $PSScriptRoot)

$version = (Get-Content haxelib.json | ConvertFrom-Json).version
haxe build_doc.hxml
haxelib run dox `
	--define description "Minify PHP source code by removing comments and whitespace, in Haxe, JavaScript and PHP." `
	--define logo "https://api.belin.io/php-minify.hx/favicon.ico" `
	--define source-path "https://git.belin.io/cedx/php-minify.hx/src/branch/main/src" `
	--define themeColor 0xffc105 `
	--define version $version `
	--define website "https://belin.io" `
	--input-path var `
	--output-path doc/api `
	--title "PHPMinify.hx" `
	--toplevel-package php_minify

Copy-Item doc/img/favicon.ico doc/api
mkdocs build --config-file=etc/mkdocs.yaml
