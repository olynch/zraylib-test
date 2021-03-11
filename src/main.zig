const std = @import("std");
usingnamespace @cImport({
    @cInclude("raylib.h");
});

pub fn main() anyerror!void {
    const screenWidth = 800;
    const screenHeight = 450;

    InitWindow(screenWidth, screenHeight, "raylib [core] example - keyboard input");

    var ballPosition = Vector2 {
        .x = screenWidth / 2,
        .y = screenHeight/2
    };

    SetTargetFPS(60);               // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------

    // Main game loop
    while (!WindowShouldClose())    // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            if (IsKeyDown(KEY_L)) ballPosition.x += 2.0;
            if (IsKeyDown(KEY_H)) ballPosition.x -= 2.0;
            if (IsKeyDown(KEY_K)) ballPosition.y -= 2.0;
            if (IsKeyDown(KEY_J)) ballPosition.y += 2.0;

            if (IsMouseButtonDown(0)) {
                const touchpos = GetMousePosition();
                ballPosition.x = touchpos.x;
                ballPosition.y = touchpos.y;
            }
            //----------------------------------------------------------------------------------
            

            // Draw
            //----------------------------------------------------------------------------------
            BeginDrawing();

            ClearBackground(RAYWHITE);

            DrawText("move the ball with hjkl", 10, 10, 20, DARKGRAY);

            DrawCircleV(ballPosition, 50, MAROON);

            EndDrawing();
            //----------------------------------------------------------------------------------
    }

    // De-Initialization
    //--------------------------------------------------------------------------------------
    CloseWindow();        // Close window and OpenGL context
    //--------------------------------------------------------------------------------------

    return;
}
