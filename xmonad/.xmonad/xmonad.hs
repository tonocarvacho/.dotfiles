--

--
-- A template showing all available configuration hooks,
-- and how to override the defaults in your own xmonad.hs conf file.
--
-- Normally, you'd only override those defaults you care about.
--

import XMonad
import Data.Monoid
import System.Exit
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders
import XMonad.Util.ClickableWorkspaces
import XMonad.Hooks.InsertPosition (insertPosition, Focus(Newer), Position(End))
import XMonad.Actions.SpawnOn
import XMonad.Actions.CycleWS

--import XMonad.Layout.Gaps
import qualified XMonad.StackSet as W
import qualified Data.Map        as M
import XMonad.Util.EZConfig
    -- Hooks
import Graphics.X11.ExtraTypes.XF86
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
--import XMonad.Hooks.StatusBar
--import XMonad.Hooks.StatusBar.PP

import Colors.Dracula
-- The preferred terminal program, which is used in a binding below and by
-- certain contrib modules.
--
myTerminal      = "kitty"

-- Whether focus follows the mouse pointer.
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

-- Whether clicking on a window to focus also passes the click to the window
myClickJustFocuses :: Bool
myClickJustFocuses = False

-- Width of the window border in pixels.
--

myBorderWidth   = 1

-- modMask lets you specify which modkey you want to use. The default
-- is mod1Mask ("left alt").  You may also consider using mod3Mask
-- ("right alt"), which does not conflict with emacs keybindings. The
-- "windows key" is usually mod4Mask.
--
myModMask       = mod4Mask

-- The default number of workspaces (virtual screens) and their names.
-- By default we use numeric strings, but any string may be used as a
-- workspace name. The number of workspaces is determined by the length
-- of this list.
--
-- A tagging example:
--
--myWorkspaces = ["web", "irc", "code" ] ++ map show [4..9]
--
--myWorkspaces    = ["\61897","","\63434",奈,"\62026","\62601","\61848","ﳲ","\63215","\61747"]
--myWorkspaces    = ["\61897","","\63434",奈,"\62026","\62601","\61848","ﳲ","\63215","\61747"]
--myWorkspaces    = ["\61729","uu","aoeu","keep","term","slack","meet","mail","calendar"]
--myWorkspaces    = [" [1]"," [2] ","[3]"," [4] ","[5]"," [6] ","[7]"," [8] ","[9]"]
myWorkspaces    = ["\62600", "\62026", "\62601","\62060","\61848", "\63215","\61747", "\60011", "\63434"]
-- Border colors for unfocused and focused windows, respectively.
--
--myNormalBorderColor  = "#020408"
--myFocusedBorderColor = "#282a36"

myNormalBorderColor  = "#6272a4"
myFocusedBorderColor = "#ff79c6"
------------------------------------------------------------------------
-- Key bindings. Add, modify or remove key bindings here.
--
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $

    -- launch a terminal
    [ ((modm, xK_Return), spawn "kitty")

    -- launch dmenu
    , ((modm, xK_n), spawn "dmenu_run")

    -- launch google-chrome

    -- launch kitty
    -- , ((modm, xK_t), spawn "kitty")

    -- launch terminal in directory & apps
    , ((modm .|. mod1Mask, xK_i), spawn "brave")
    , ((modm .|. mod1Mask, xK_u), spawn "kitty -e ~/.local/bin/tmux-sessionizer ~/.dotfiles")
    , ((modm .|. mod1Mask, xK_p), spawn "brave --app='https://app.slack.com/client/'")
    , ((modm .|. mod1Mask, xK_o), spawn "spotify")
    , ((modm .|. mod1Mask, xK_y), spawn "brave --app='https://web.whatsapp.com/'")
    --, ((modm .|. mod1Mask, xK_t), spawn "brave --app='https://mail.google.com/mail/u/1/#inbox'")
    , ((modm .|. mod1Mask, xK_t), spawn "brave --app='https://calendar.google.com/calendar/u/0/r/week'")
    , ((modm .|. mod1Mask, xK_r), spawn "brave --app='https://photopea.com/'")
    , ((modm .|. mod1Mask, xK_Return), spawn "kitty -e ~/.local/bin/tmux-sessionizer ~/")
    --, ((modm .|. mod1Mask, xK_i), spawn "kitty -e ~/.local/bin/tmux-sessionizer ~/work/easypay-angular-fe")
    --, ((modm .|. mod1Mask, xK_p), spawn "kitty -e ~/.local/bin/tmux-sessionizer ~/work/easypay-spring-bl/")
    --, ((modm .|. mod1Mask, xK_o), spawn "kitty -e ~/.local/bin/tmux-sessionizer ~/work/esypay-spring-dal")
    --, ((modm .|. mod1Mask, xK_r), spawn "brave --app='https://open.spotify.com/'")
    --, ((modm, xK_9), spawn "brave --app='https://keep.google.com'")
    , ((modm, xK_f), spawn "kitty -e vifm ~")
    , ((modm, xK_s), spawn "~/.config/scrot/.screenshot.sh")
    , ((modm, xK_a), spawn "feh --bg-fill --randomize ~/.config/wallpaper/* ")

    -- close focused window
     , ((modm, xK_q), kill)

    -- Rotate through the available layout algorithms
     , ((modm, xK_c ), sendMessage NextLayout)

    --  Reset the layouts on the current workspace to default
    -- , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)

    -- Resize viewed windows to the correct size
    -- , ((modm, xK_n), refresh)
    , ((modm, xK_j), toggleWS)
    -- Move focus to the next window
    , ((modm, xK_l), windows W.focusDown)

    -- Move focus to the next window
    , ((modm, xK_h), windows W.focusUp)

    -- Move focus to the master window
    , ((modm, xK_m), windows W.focusMaster)

    -- Swap the focused window and the master window
    , ((modm, xK_comma), windows W.swapMaster)

    -- Swap the focused window with the next window
    --, ((modm .|. shiftMask, xK_braceleft), windows W.swapDown)

    -- Swap the focused window with the previous window
    --, ((modm .|. shiftMask, xK_braceright), windows W.swapUp)

    -- Shrink the master area
    , ((modm, xK_v), sendMessage Shrink)

    -- Expand the master area
    , ((modm, xK_b), sendMessage Expand)

    -- Push window back into tiling
    , ((modm .|. shiftMask, xK_t), withFocused $ windows . W.sink)

    -- Increment the number of windows in the master area
    --, ((modm, xK_v), sendMessage (IncMasterN 1))

    -- Deincrement the number of windows in the master area
    --, ((modm, xK_c), sendMessage (IncMasterN (-1)))

    -- Toggle the status bar gap
    -- Use this binding with avoidStruts from Hooks.ManageDocks.
    -- See also the statusBar function from Hooks.DynamicLog.
    --
    -- , ((modm, xK_b), sendMessage ToggleStruts)

    -- Quit xmonad
    , ((modm .|. shiftMask, xK_z), io (exitWith ExitSuccess))

    -- Restart xmonad
    , ((modm, xK_z), spawn "xmonad --recompile; xmonad --restart")

    -- Run xmessage with a summary of the default keybindings (useful for beginners)
    , ((modm .|. shiftMask, xK_slash ), spawn ("echo \"" ++ help ++ "\" | xmessage -file -"))
    ]
    ++

    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_w, xK_e, xK_r, xK_t, xK_y, xK_u, xK_i, xK_o, xK_p ]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++

    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_percent, xK_ampersand, xK_apostrophe] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]


------------------------------------------------------------------------
-- Mouse bindings: default actions bound to mouse events
--
myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $

    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))

    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))

    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]

------------------------------------------------------------------------
-- Layouts:

-- You can specify and transform your layouts by modifying these values.
-- If you change layout bindings be sure to use 'mod-shift-space' after
-- restarting (with 'mod-q') to reset your layout state to the new
-- defaults, as xmonad preserves your old layout settings by default.
--
-- The available layouts.  Note that each layout is separated by |||,
-- which denotes layout choice.
--
-- myLayout = tiled ||| Mirror tiled ||| Full
--myLayout = smartBorders (gaps [(U,20), (R,20), (D,20), (L,20)] $ tiled ||| Full)
myLayout = smartBorders (tiled ||| Full)
  where
     -- default tiling algorithm partitions the screen into two panes
     tiled   = Tall nmaster delta ratio

     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 1/2

     -- Percent of screen to increment by when resizing panes
     delta   = 3/100

------------------------------------------------------------------------
-- Window rules:

-- Execute arbitrary actions and WindowSet manipulations when managing
-- a new window. You can use this to, for example, always float a
-- particular program, or have a client always appear on a particular
-- workspace.
--
-- To find the property name associated with a program, use
-- > xprop | grep WM_CLASS
-- and click on the client you're interested in.
--
-- To match on the WM_NAME, you can use 'title' in the same way that
-- 'className' and 'resource' are used below.
--
myManageHook = composeAll
    [ className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
    , insertPosition End Newer -- open new windows at the end
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore ]

------------------------------------------------------------------------
-- Event handling

-- * EwmhDesktops users should change this to ewmhDesktopsEventHook
--
-- Defines a custom handler function for X Events. The function should
-- return (All True) if the default handler is to be run afterwards. To
-- combine event hooks use mappend or mconcat from Data.Monoid.
--
myEventHook = mempty

------------------------------------------------------------------------
-- Status bars and logging

-- Perform an arbitrary action on each internal state change or X event.
-- See the 'XMonad.Hooks.DynamicLog' extension for examples.
--
myLogHook = return ()

------------------------------------------------------------------------
-- Startup hook

-- Perform an arbitrary action each time xmonad starts or is restarted
-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize
-- per-workspace layout choices.
--
-- By default, do nothing.

myStartupHook :: X ()
myStartupHook = do
   --spawn "kitty -e tmux"
 --  spawnOn " \62600 " "brave"
   --spawnOn "\63434" "brave --app='https://open.spotify.com/'"
   spawn "feh --bg-fill --randomize ~/.config/wallpaper/* "

------------------------------------------------------------------------
-- Command to launch the bar.
myBar = "xmobar"

-- Custom PP, configure it as you like. It determines what is being written to the bar.
myPP =  xmobarPP { 
 ppCurrent = 
        xmobarColor color03 "" 
        --xmobarColor color06 "" . wrap ("<box type=Bottom width=1 mb=1 color=" ++ color06 ++ ">") "</box>"
                      --("<box type=Bottom width=1 mb=1 color=" ++ color06 ++ ">") "</box>"
          -- Visible but not current workspace
        , ppVisible = xmobarColor color03 "" 
          -- Hidden workspace
        , ppHidden = xmobarColor color06 "" 
          -- Hidden workspaces (no windows)
        , ppHiddenNoWindows = xmobarColor color08 ""  
          -- Title of active window
        , ppTitle = xmobarColor color16 "" . shorten 60
        --, ppTitle = xmobarColor color16 ""
          -- Separator character
        , ppSep =  "<fc=" ++ color09 ++ "> <fn=1>|</fn> </fc>"

        , ppOrder = \(ws:_:_:_) -> [ws]
 }

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_d)

------------------------------------------------------------------------
-- Now run xmonad with all the defaults we set up.

-- Run xmonad with the settings you specify. No need to modify this.
--
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myDefaults
--main = xmonad defaults

-- A structure containing your configuration settings, overriding
-- fields in the default config. Any you don't override, will
-- use the defaults defined in xmonad/XMonad/Config.hs
--
-- No need to modify this.
--
defaults = def {
      -- simple stuff
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        clickJustFocuses   = myClickJustFocuses,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,

      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,

      -- hooks, layouts
        layoutHook         = spacingRaw True (Border 0 0 0 0) True (Border 0 0 0 0) True $ myLayout,
        manageHook         = manageSpawn <+> myManageHook,
        handleEventHook    = myEventHook,
        logHook            = myLogHook,
        startupHook        = myStartupHook
    }

myDefaults = defaults
             `additionalKeysP`
             [ 
               ("<XF86AudioPlay>", spawn "playerctl --player spotify play-pause"),
               ("<XF86AudioNext>", spawn "playerctl next"),
               ("<XF86AudioPrev>", spawn "playerctl previous"),
               ("<XF86AudioRaiseVolume>", spawn "pactl set-sink-volume @DEFAULT_SINK@ +2%"),
               ("<XF86AudioLowerVolume>", spawn "pactl set-sink-volume @DEFAULT_SINK@ -2%")
               --("<XF86AudioRaiseVolume>", spawn "playerctl --player spotify volume .02+"),
               --("<XF86AudioLowerVolume>", spawn "playerctl --player spotify volume .02-")
             ]

-- | Finally, a copy of the default bindings in simple textual tabular format.
help :: String
help = unlines ["The default modifier key is 'alt'. Default keybindings:",
    "",
    "-- launching and killing programs",
    "mod-Shift-Enter  Launch xterminal",
    "mod-p            Launch dmenu",
    "mod-Shift-p      Launch gmrun",
    "mod-Shift-c      Close/kill the focused window",
    "mod-Space        Rotate through the available layout algorithms",
    "mod-Shift-Space  Reset the layouts on the current workSpace to default",
    "mod-n            Resize/refresh viewed windows to the correct size",
    "",
    "-- move focus up or down the window stack",
    "mod-Tab        Move focus to the next window",
    "mod-Shift-Tab  Move focus to the previous window",
    "mod-j          Move focus to the next window",
    "mod-k          Move focus to the previous window",
    "mod-m          Move focus to the master window",
    "",
    "-- modifying the window order",
    "mod-Return   Swap the focused window and the master window",
    "mod-Shift-j  Swap the focused window with the next window",
    "mod-Shift-k  Swap the focused window with the previous window",
    "",
    "-- resizing the master/slave ratio",
    "mod-h  Shrink the master area",
    "mod-l  Expand the master area",
    "",
    "-- floating layer support",
    "mod-t  Push window back into tiling; unfloat and re-tile it",
    "",
    "-- increase or decrease number of windows in the master area",
    "mod-comma  (mod-,)   Increment the number of windows in the master area",
    "mod-period (mod-.)   Deincrement the number of windows in the master area",
    "",
    "-- quit, or restart",
    "mod-Shift-q  Quit xmonad",
    "mod-q        Restart xmonad",
    "mod-[1..9]   Switch to workSpace N",
    "",
    "-- Workspaces & screens",
    "mod-Shift-[1..9]   Move client to workspace N",
    "mod-{w,e,r}        Switch to physical/Xinerama screens 1, 2, or 3",
    "mod-Shift-{w,e,r}  Move client to screen 1, 2, or 3",
    "",
    "-- Mouse bindings: default actions bound to mouse events",
    "mod-button1  Set the window to floating mode and move by dragging",
    "mod-button2  Raise the window to the top of the stack",
    "mod-button3  Set the window to floating mode and resize by dragging"]
