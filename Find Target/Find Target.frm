VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Lockating Transmition"
   ClientHeight    =   7980
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11040
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Find Target.frx":0000
   ScaleHeight     =   7980
   ScaleWidth      =   11040
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   480
      Top             =   1200
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Our Satelites found multiple Terrorist Satellite Transmitions..."
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4335
   End
   Begin VB.Line X 
      BorderColor     =   &H00000000&
      BorderStyle     =   5  'Dash-Dot-Dot
      X1              =   0
      X2              =   9240
      Y1              =   3360
      Y2              =   3360
   End
   Begin VB.Line Y 
      BorderColor     =   &H00000000&
      BorderStyle     =   5  'Dash-Dot-Dot
      X1              =   5640
      X2              =   5640
      Y1              =   0
      Y2              =   8280
   End
   Begin VB.Shape Target 
      BackColor       =   &H0000C000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      FillColor       =   &H000000FF&
      Height          =   255
      Left            =   5520
      Shape           =   3  'Circle
      Top             =   3240
      Width           =   255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Sup boyz and girlz?
'this is another simple prog i made for fun....
'have nice bombing! lol
'umm my msn is evil_brute@hotmail.com
'the Picture of the Globe isnt mine i borrowed it from
'http://www.Planet-Source-Code.com/vb/scripts/ShowCode.asp?txtCodeId=56101&lngWId=1
'the rest of the stuff is completely mine!
'no copyrights no shit....use it as you wish ... claim that is yours
'it is fine with me...
'till next time .... cyaz
'Eimai enas ellhnas!!!!!!
Dim Step As Single
Dim Step2 As Single
Dim Old As Single
Dim Old2 As Single
Dim O1 As Single
Dim O2 As Single


Private Sub Form_Load()
On Error Resume Next
Dim FIlE As String

X.Y1 = Me.ScaleHeight \ 2
X.Y2 = X.Y1
Y.X1 = Me.ScaleWidth \ 2
Y.X2 = Me.ScaleWidth \ 2
'we make sure we can divide it with 5
'cuz step is 5
Old = Int(Rnd * Me.Height)
Old2 = Int(Rnd * Me.Width)
Old = Mid$(Old, 1, Len(Old) - 1) & "0"
Old2 = Mid$(Old2, 1, Len(Old2) - 1) & "0"
Target.Top = Old
Target.Left = Old2
Target.Visible = False

End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button <> 1 Then Exit Sub
If Target.Visible = True Then Exit Sub
Target.Top = Y - 120
Target.Left = X - 120
End Sub

Private Sub Form_Resize()
Y.Y2 = Me.ScaleHeight
X.X2 = Me.ScaleWidth


End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub Timer1_Timer()
On Error Resume Next
'Me.Caption = Target.Top + 120 & " -- " & Target.Left + 120 & " -- " & X.Y1 & " -- " & Y.X1
If X.Y1 = Target.Top + 120 Then
If Y.X1 = Target.Left + 120 Then
Randomize
Me.Caption = "Transmition Lockated"
Target.Visible = True
'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
'just a little pause...
For i = 0 To 400000
DoEvents
Next
Target.BackColor = &HFF&
Me.Caption = "Transmition Blocked"
For i = 0 To 200000
DoEvents
Next
Target.BackColor = &HC000&
'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Old = Int(Rnd * (Me.Height - Target.Height))
Old2 = Int(Rnd * (Me.Width - Target.Width))
'we make sure we can divide it with 5
'cuz step is 5
Old = Mid$(Old, 1, Len(Old) - 1) & "0"
Old2 = Mid$(Old2, 1, Len(Old2) - 1) & "0"
Target.Top = Old
Target.Left = Old2
Target.Visible = False
'you might wanna know where target is
Debug.Assert Old & " -- " & Old2
Debug.Print Old & " -- " & Old2
End If
End If

If X.Y1 < Target.Top + 120 Then
Step = "+5"
Else
Step = "-5"
End If
If Y.X1 < Target.Left + 120 Then
Step2 = "+5"
Else
Step2 = "-5"
End If
If X.Y1 = Target.Top + 120 Then
Me.Caption = "Locking on Transmition"
Y.X1 = Y.X1 + Step2
Y.X2 = Y.X1
Exit Sub
End If
If Y.X1 = Target.Left + 120 Then
Me.Caption = "Locking on Transmition"
X.Y1 = X.Y1 + Step
X.Y2 = X.Y1
Exit Sub
End If
Me.Caption = "Lockating Transmition"
Old = Target.Top
Old2 = Target.Left
If X.Y1 <> Target.Top + 120 Then X.Y1 = X.Y1 + Step: X.Y2 = X.Y1
If Y.X1 <> Target.Left + 120 Then Y.X1 = Y.X1 + Step2: Y.X2 = Y.X1
End Sub
