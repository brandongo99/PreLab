VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Form1"
   ClientHeight    =   4455
   ClientLeft      =   120
   ClientTop       =   390
   ClientWidth     =   6165
   FillStyle       =   6  'Cross
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4455
   ScaleWidth      =   6165
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Interval        =   10
      Left            =   3720
      Top             =   1920
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   3720
      Top             =   1320
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Detener"
      Height          =   495
      Left            =   2520
      TabIndex        =   1
      Top             =   1920
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000080&
      Caption         =   "Iniciar "
      Height          =   495
      Left            =   2520
      MaskColor       =   &H00FFFFFF&
      TabIndex        =   0
      Top             =   1320
      Width           =   1095
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00400000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000080&
      BorderStyle     =   2  'Dash
      BorderWidth     =   4
      Height          =   855
      Left            =   195
      Shape           =   5  'Rounded Square
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Timer1.Enabled = True
Timer2.Enabled = True
If Shape1.Left < 120 Then
Timer1.Enabled = False
End If
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
Timer2.Enabled = False
End Sub

Private Sub Timer1_Timer()
Timer1.Enabled = True
Shape1.Top = Shape1.Top + 100
If Shape1.Top > 3200 Then
Shape1.Top = 3200
End If
If Shape1.Top = 3200 Then
Shape1.Left = Shape1.Left + 100
End If
If Shape1.Left > 5000 Then
Shape1.Left = 5000
End If
If Shape1.Left = 5000 Then
Timer1.Enabled = False
End If
Timer2.Enabled = True
End Sub

Private Sub Timer2_Timer()
Timer2.Enabled = True
Shape1.Top = Shape1.Top - 100
If Shape1.Top < 200 Then
Shape1.Top = 200
End If
If Shape1.Top = 200 Then
Shape1.Left = Shape1.Left - 100
End If
If Shape1.Left < 120 Then
Shape1.Left = 120
End If
If Shape1.Left = 120 Then
Timer2.Enabled = False
End If
Timer1.Enabled = True
End Sub
