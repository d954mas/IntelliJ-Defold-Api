---Sound API documentation
---Functions and messages for controlling sound components and
---mixer groups.
---@class sound
local sound = {}
---Get mixer group gain
---
--- Note that gain is in linear scale, between 0 and 1.
---To get the dB value from the gain, use the formula 20 * log(gain).
---Inversely, to find the linear value from a dB value, use the formula
---10db/20.
---@param group string | hash group name
---@return gain number gain in linear scale
function sound.get_group_gain(group) end
---Get a mixer group name as a string.
---
--- This function is to be used for debugging and
---development tooling only. The function does a reverse hash lookup, which does not
---return a proper string value when the game is built in release mode.
---@param group string | hash group name
---@return name string group name
function sound.get_group_name(group) end
---Get a table of all mixer group names (hashes).
---@return groups table table of mixer group names
function sound.get_groups() end
---Get peak value from mixer group.
---
--- Note that gain is in linear scale, between 0 and 1.
---To get the dB value from the gain, use the formula 20 * log(gain).
---Inversely, to find the linear value from a dB value, use the formula
---10db/20.
---Also note that the returned value might be an approximation and in particular
---the effective window might be larger than specified.
---@param group string | hash group name
---@param window number window length in seconds
---@return peak_l number peak value for left channel
---@return peak_r number peak value for right channel
function sound.get_peak(group, window) end
---Get RMS (Root Mean Square) value from mixer group. This value is the
---square root of the mean (average) value of the squared function of
---the instantaneous values.
---
---For instance: for a sinewave signal with a peak gain of -1.94 dB (0.8 linear),
---the RMS is 0.8 × 1/sqrt(2) which is about 0.566.
---
--- Note the returned value might be an approximation and in particular
---the effective window might be larger than specified.
---@param group string | hash group name
---@param window number window length in seconds
---@return rms_l number RMS value for left channel
---@return rms_r number RMS value for right channel
function sound.get_rms(group, window) end
---Checks if background music is playing, e.g. from iTunes.
---
--- On non mobile platforms,
---this function always return false.
---@return playing boolean 
function sound.is_music_playing() end
---Checks if a phone call is active. If there is an active phone call all
---other sounds will be muted until the phone call is finished.
---
--- On non mobile platforms,
---this function always return false.
---@return call_active boolean 
function sound.is_phone_call_active() end
---Set mixer group gain
---
--- Note that gain is in linear scale, between 0 and 1.
---To get the dB value from the gain, use the formula 20 * log(gain).
---Inversely, to find the linear value from a dB value, use the formula
---10db/20.
---@param group string | hash group name
---@param gain number gain in linear scale
function sound.set_group_gain(group, gain) end

return sound