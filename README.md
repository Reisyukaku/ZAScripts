# ZA Scripts

The editable Haxe reconstruction lives in `source/`.

Run `make all` to build all four Lua and bytecode chunks in `build/` using the
bundled Haxe 4.3.1 compiler and Lua 5.4.3 bytecode compiler.

Engine calls use the native extern declarations in
`tools/haxe-4.3.1/std/cppbindings/`. `Vec2`, `Vec3`, and `Vec4` describe native
multiple returns; `Vector2Values`, `Vector3Values`, and `Vector4Values` describe
stored, one-based Lua tables.

`HashAbi` verifies recovered names against their recorded hashes. Static members
use `S` hashes and instance members use `F` hashes; unresolved names retain their
hash spellings. `@:abiSlot` preserves numeric instance fields. Abstract class
identities use their generated implementation class names.

The project-owned Lua finalizer in `tools/gfl_build/build_post_process.py`
handles object field copying, vector encoding, numeric slots, and Lua output
adjustments. The build does not require an external engine wrapper library.

Compilation verifies types, annotated name hashes, and Lua syntax. Gameplay
behavior still requires testing in the game.
