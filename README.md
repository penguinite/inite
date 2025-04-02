# inite

inite (portmanteau of INI and lite, pronounced like ignite) is a ridiculously small INI parser.

## How is this different from iniplus?

[iniplus](https://github.com/penguinite/iniplus) is meant to be a more stable and complete INI library, it handles not just parsing but also writing and type-validation.

Compared to iniplus, inite has the following stuff removed:
1. No "array" or "table" types
2. No types at all actually. Every value is returned as a string.
3. No write support
4. No sections
5. Actually this isn't even INI... it's more like cgit configuration

## Why make this?

I wanted to make an INI parser small and simple enough to be compiled by [Nimony](https://github.com/nim-lang/nimony)

This is definitely not the most beautiful or efficient library, but I wrote this assuming an environment in which there were as little language features as possible.