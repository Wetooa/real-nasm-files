global _start

section .data
  
  turnedOn: dd 0
  temperature: dd 0
  swingLouver: dd 0
  fanSpeed: dd 0
  timer: dd 0
  mode: dd 0

  headerLine: db 10, "Program Name: Aircon Remote Controller", 10,
              db "Programmer Name: Adrian Sajulga", 10,
              db "Date: 14/12/2023", 10, 10
              db "========== WELCOME TO AIRCON EXPRESS ==========", 10
  headerLineLen: equ $-headerLine

  mainMenuLine: db 10, 10, "====== AIRCON MENU ======",
                db 10, "-- 1. Turn on",
                db 10, "-- 2. Turn off",
                db 10, "-- 3. Set Temperature",
                db 10, "-- 4. Set Swing Louver",
                db 10, "-- 5. Set Fan Speed",
                db 10, "-- 6. Set Timer",
                db 10, "-- 7. Set mode",
                db 10, "-- 8. Display",
                db 10, "-- 9. Exit",
                db 10, 10, "Enter choice: "
  mainMenuLineLen: equ $-mainMenuLine

  ; TURNING ON
  turnedOnLine: db "​", 10, " ----- TURNED AIRCON ON ----- "
  turnedOnLineLen: equ $-turnedOnLine
  airconAlreadyOnLine: db "​", 10, ">>> AIRCON IS ALREADY ON <<<"
  airconAlreadyOnLineLen: equ $-airconAlreadyOnLine

  ; TURNING OFF
  turnedOffLine: db "​", 10, " ----- TURNED AIRCON OFF ----- "
  turnedOffLineLen: equ $-turnedOffLine
  airconAlreadyOffLine: db "​", 10, ">>> AIRCON IS ALREADY OFF <<<"
  airconAlreadyOffLineLen: equ $-airconAlreadyOffLine

  ; SETTING TEMP
  settingTemperatureInputLine: db "​", 10, "Enter temperature to set (10 - 30): "
  settingTemperatureInputLineLen: equ $-settingTemperatureInputLine
  settingTemperatureStateLine: db " >>> Current Temperature: "
  settingTemperatureStateLineLen: equ $-settingTemperatureStateLine

  ; SWING LOUVER
  settingSwingLouverOpeningLine: db "​", 10, "----- TOGGLING SWING LOUVER -----"
  settingSwingLouverOpeningLineLen: equ $-settingSwingLouverOpeningLine
  swingLouverStateLine: db 10, " >>> Current Swing Louver State: "
  swingLouverStateLineLen: equ $-swingLouverStateLine

  ; FAN SPEED
  settingFanSpeedInputLine: db "​", 10, "Enter fan speed (1 - 5): "
  settingFanSpeedInputLineLen: equ $-settingFanSpeedInputLine
  fanSpeedStateLine: db 10, " >>> Current Fan Speed: "
  fanSpeedStateLineLen: equ $-fanSpeedStateLine

  ; TIMER
  settingTimerInputLine: db "​", 10, "Enter timer (0 - 60): "
  settingTimerInputLineLen: equ $-settingTimerInputLine
  timerStateLine: db 10, " >>> Current Timer: "
  timerStateLineLen: equ $-timerStateLine

  ; MODE
  settingModeOpeningLine: db "​", 10, " ----- TOGGLING MODE ----- "
  settingModeOpeningLineLen: equ $-settingModeOpeningLine
  modeCurrentStateLine: db 10, " >>> Current mode: "
  modeCurrentStateLineLen: equ $-modeCurrentStateLine


  ; DISPLAY
  onLine: db "On"
  onLineLen: equ $-onLine
  offLine: db "Off"
  offLineLen: equ $-offLine
  fanLine: db "Fan"
  fanLineLen: equ $-fanLine
  coolLine: db "Cool"
  coolLineLen: equ $-coolLine

  displayOpeningLine: db 10, 10, "===================="
  displayOpeningLineLen: equ $-displayOpeningLine

  lblTitleLine: db 10, "| AIRCON STATUS"
  lblTitleLineLen: equ $-lblTitleLine
  
  lblPowerLine: db 10, "| Power: "
  lblPowerLineLen: equ $-lblPowerLine
  
  lblTemperatureLine: db 10, "| Temperature: "
  lblTemperatureLineLen: equ $-lblTemperatureLine

  lblSwingLouverLine: db 10, "| Swing Louver: "
  lblSwingLouverLineLen: equ $-lblSwingLouverLine
  
  lblFanSpeedLine: db 10, "| Fan Speed: "
  lblFanSpeedLineLen: equ $-lblFanSpeedLine
  
  lblFanTimerLine: db 10, "| Timer: "
  lblFanTimerLineLen: equ $-lblFanTimerLine
  
  lblModeLine: db 10, "| Mode: "
  lblModeLineLen: equ $-lblModeLine
  
  displayEndingLine: db 10, "===================="
  displayEndingLineLen: equ $-displayEndingLine

  ; EXIT
  exitLine: db "​", 10, " ====== THANK YOU FOR USING AIRCON EXPRESS ====== ", 10
  exitLineLen: equ $-exitLine

  ; WARNINGS
  errAirconTurnedOffLine: db "​", 10, " <<>> AIRCON IS TURNED OFF <<>> "
  errAirconTurnedOffLineLen: equ $-errAirconTurnedOffLine

  errExitingWhileOnLine: db "​", 10, " <<>> PLEASE TURN OFF AIRCON FIRST <<>> "
  errExitingWhileOnLineLen: equ $-errExitingWhileOnLine
  
  errInvalidChoiceLine: db "​", 10, " <<>> INVALID USER INPUT <<>> "
  errInvalidChoiceLineLen: equ $-errInvalidChoiceLine

  errCantSetTempInFanModeLine: db "​", 10, " <<>> CANNOT SET TEMPERATURE IN FAN MODE <<>>"
  errCantSetTempInFanModeLineLen: equ $-errCantSetTempInFanModeLine


section .bss
  buffer: resb 16
  input: resb 16
  isNegative: resd 2
  slotNumber: resd 2


section .text
_start:

  mov eax, 4
  mov ebx, 1
  mov ecx, headerLine
  mov edx, headerLineLen
  int 80h

mainLoop:

  mov eax, 4
  mov ebx, 1
  mov ecx, mainMenuLine
  mov edx, mainMenuLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h
  lea ecx, [input]
  call toInt

  cmp eax, 1
  je turnOn

  cmp eax, 2
  je turnOff

  cmp eax, 8
  je displayStatus

  cmp eax, 9
  je exit

  mov ebx, dword [turnedOn]
  cmp ebx, 1
  je allowedOperation
  cmp eax, 3
  jge airconTurnedOff
  allowedOperation:

  cmp eax, 3
  je setTemperature

  cmp eax, 4
  je setSwingLouver

  cmp eax, 5
  je setFanSpeed

  cmp eax, 6
  je setTimer

  cmp eax, 7
  je setMode

  jmp invalidChoice

endMainLoop:
  mov eax, 4
  mov ebx, 1
  mov ecx, exitLine
  mov edx, exitLineLen
  int 80h
  mov eax, 1
  mov ebx, 0
  int 80h

toInt:
  xor ebx, ebx
  xor eax, eax
  
  toIntLoop:
    movzx edx, byte [ecx]
    cmp edx, 0xA
    je endToIntLoop
  
    cmp edx, 0x2D
    jne notNegToInt
  
    mov ebx, 1
    inc ecx
    jmp toIntLoop
  
    notNegToInt:
    imul eax, 10
    sub edx, '0'
    add eax, edx
    inc ecx
    jmp toIntLoop
  endToIntLoop:
  
  cmp ebx, 1
  jne return
  neg eax
  jmp return
  
toStr:
  xor ebx, ebx
  mov dword [isNegative], ebx
  cmp eax, 0
  jge notNegToStr
  neg eax
  mov ebx, 1
  mov dword [isNegative], ebx
  notNegToStr:
  
  toStrLoop:
    xor edx, edx 
    mov ebx, 10
    div ebx
    add edx, '0'
    mov [ecx], dl
    dec ecx
  
    test eax, eax
    jnz toStrLoop
   
  mov ebx, dword [isNegative]
  cmp ebx, 1
  jne endToStr
  mov ebx, '-'
  mov [ecx], bl
  dec ecx
  endToStr:
  inc ecx
  jmp return
  
return:
  ret


turnOn:
  mov eax, dword [turnedOn]
  cmp eax, 1
  je alreadyOn
  mov eax, 4
  mov ebx, 1
  mov ecx, turnedOnLine
  mov edx, turnedOnLineLen
  int 80h
  jmp endAlreadyOn
  alreadyOn:
  mov eax, 4
  mov ebx, 1
  mov ecx, airconAlreadyOnLine
  mov edx, airconAlreadyOnLineLen
  int 80h
  endAlreadyOn:

  mov eax, 1
  mov dword [turnedOn], eax
  jmp mainLoop

turnOff:
  mov eax, dword [turnedOn]
  cmp eax, 0
  je alreadyOff
  mov eax, 4
  mov ebx, 1
  mov ecx, turnedOffLine
  mov edx, turnedOffLineLen
  int 80h
  jmp endAlreadyOff
  alreadyOff:
  mov eax, 4
  mov ebx, 1
  mov ecx, airconAlreadyOffLine
  mov edx, airconAlreadyOffLineLen
  int 80h
  endAlreadyOff:

  mov eax, 0
  mov dword [turnedOn], eax
  jmp mainLoop

setTemperature:

  mov eax, dword [mode]
  cmp eax, 1
  je settingTempAllowed
  mov eax, 4
  mov ebx, 1
  mov ecx, errCantSetTempInFanModeLine
  mov edx, errCantSetTempInFanModeLineLen
  int 80h
  jmp mainLoop
  settingTempAllowed:

  mov eax, 4
  mov ebx, 1
  mov ecx, settingTemperatureInputLine
  mov edx, settingTemperatureInputLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h
  call toInt

  cmp eax, 10
  jl invalidChoice
  cmp eax, 30
  jg invalidChoice

  mov dword [temperature], eax
  mov eax, 4
  mov ebx, 1
  mov ecx, settingTemperatureStateLine
  mov edx, settingTemperatureStateLineLen
  int 80h
  mov eax, dword [temperature]
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80
  jmp mainLoop

setSwingLouver:
  mov eax, 4
  mov ebx, 1
  mov ecx, settingSwingLouverOpeningLine
  mov edx, settingSwingLouverOpeningLineLen
  int 80h
  mov eax, dword [swingLouver]
  xor eax, 1
  mov dword [swingLouver], eax
  mov eax, 4
  mov ebx, 1
  mov ecx, swingLouverStateLine
  mov edx, swingLouverStateLineLen
  int 80h

  mov eax, dword [swingLouver]
  cmp eax, 0
  jne swingOn
  mov eax, 4
  mov ebx, 1
  mov ecx, offLine
  mov edx, offLineLen
  int 80h
  jmp mainLoop
  swingOn:
  mov eax, 4
  mov ebx, 1
  mov ecx, onLine
  mov edx, onLineLen
  int 80h
  jmp mainLoop

setFanSpeed:
  mov eax, 4
  mov ebx, 1
  mov ecx, settingFanSpeedInputLine
  mov edx, settingFanSpeedInputLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h
  call toInt
 
  cmp eax, 1
  jl invalidChoice
  cmp eax, 5
  jg invalidChoice

  mov dword [fanSpeed], eax
  mov eax, 4
  mov ebx, 1
  mov ecx, fanSpeedStateLine
  mov edx, fanSpeedStateLineLen
  int 80h
  mov eax, dword [fanSpeed]
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80
  jmp mainLoop

setTimer:
  mov eax, 4
  mov ebx, 1
  mov ecx, settingTimerInputLine
  mov edx, settingTimerInputLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h
  call toInt
 
  cmp eax, 0
  jl invalidChoice
  cmp eax, 60
  jg invalidChoice

  mov dword [timer], eax
  mov eax, 4
  mov ebx, 1
  mov ecx, timerStateLine
  mov edx, timerStateLineLen
  int 80h
  mov eax, dword [timer]
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80
  jmp mainLoop

setMode:
  mov eax, 4
  mov ebx, 1
  mov ecx, settingModeOpeningLine
  mov edx, settingModeOpeningLineLen
  int 80h
  mov eax, dword [mode]
  xor eax, 1
  mov dword [mode], eax
  mov eax, 4
  mov ebx, 1
  mov ecx, modeCurrentStateLine
  mov edx, modeCurrentStateLineLen
  int 80h

  mov eax, dword [mode]
  cmp eax, 0
  jne isCool
  mov eax, 4
  mov ebx, 1
  mov ecx, fanLine
  mov edx, fanLineLen
  int 80h
  jmp mainLoop
  isCool:
  mov eax, 4
  mov ebx, 1
  mov ecx, coolLine
  mov edx, coolLineLen
  int 80h
  jmp mainLoop

displayStatus:
  mov eax, 4
  mov ebx, 1
  mov ecx, displayOpeningLine
  mov edx, displayOpeningLineLen
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, lblTitleLine
  mov edx, lblTitleLineLen
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, lblPowerLine
  mov edx, lblPowerLineLen
  int 80h
  mov eax, dword [turnedOn]
  cmp eax, 1
  je on
  mov eax, 4
  mov ebx, 1
  mov ecx, offLine
  mov edx, offLineLen
  int 80h
  jmp endOn
  on:
  mov eax, 4
  mov ebx, 1
  mov ecx, onLine
  mov edx, onLineLen
  int 80h
  endOn:

  mov eax, 4
  mov ebx, 1
  mov ecx, lblTemperatureLine
  mov edx, lblTemperatureLineLen
  int 80h
  mov eax, dword [temperature]
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, lblSwingLouverLine
  mov edx, lblSwingLouverLineLen
  int 80h
  mov eax, dword [swingLouver]
  cmp eax, 1
  je swing
  mov eax, 4
  mov ebx, 1
  mov ecx, offLine
  mov edx, offLineLen
  int 80h
  jmp endSwing
  swing:
  mov eax, 4
  mov ebx, 1
  mov ecx, onLine
  mov edx, onLineLen
  int 80h
  endSwing:

  mov eax, 4
  mov ebx, 1
  mov ecx, lblFanSpeedLine
  mov edx, lblFanSpeedLineLen
  int 80h
  mov eax, dword [fanSpeed]
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, lblFanTimerLine
  mov edx, lblFanTimerLineLen
  int 80h
  mov eax, dword [timer]
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, lblModeLine
  mov edx, lblModeLineLen
  int 80h
  mov eax, dword [mode]
  cmp eax, 1
  je cool
  mov eax, 4
  mov ebx, 1
  mov ecx, fanLine
  mov edx, fanLineLen
  int 80h
  jmp endCool
  cool:
  mov eax, 4
  mov ebx, 1
  mov ecx, coolLine
  mov edx, coolLineLen
  int 80h
  endCool:

  mov eax, 4
  mov ebx, 1
  mov ecx, displayEndingLine
  mov edx, displayEndingLineLen
  int 80h

  jmp mainLoop

exit:
  mov eax, dword [turnedOn]
  cmp eax, 0
  je endMainLoop

  mov eax, 4
  mov ebx, 1
  mov ecx, errExitingWhileOnLine
  mov edx, errExitingWhileOnLineLen
  int 80h
  jmp mainLoop


airconTurnedOff:
  mov eax, 4
  mov ebx, 1
  mov ecx, errAirconTurnedOffLine
  mov edx, errAirconTurnedOffLineLen
  int 80h
  jmp mainLoop


invalidChoice:
  mov eax, 4
  mov ebx, 1
  mov ecx, errInvalidChoiceLine
  mov edx, errInvalidChoiceLineLen
  int 80h
  jmp mainLoop