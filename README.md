# zraylib-test

This is just a test setup for using Nix+Zig+Raylib to write a video game. So far, it seems to work swimmingly, and hits the sweet spot for me of simplicity/power.

With direnv (or just `nix develop`), if you have nix flakes enabled, you should be dropped into a shell where you can run `zig build run` to run the game, where you can move a circle with "hjkl" and with your mouse.
