VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Bola rebotando"
   ClientHeight    =   3630
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4935
   LinkTopic       =   "Form1"
   ScaleHeight     =   3630
   ScaleWidth      =   4935
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Iniciar"
      Height          =   375
      Left            =   2160
      TabIndex        =   0
      Top             =   2160
      Width           =   975
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   2
      Left            =   2520
      Top             =   1560
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2
      Left            =   1920
      Top             =   1560
   End
   Begin VB.Shape bola 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00400040&
      Height          =   615
      Left            =   120
      Shape           =   3  'Circle
      Top             =   120
      Width           =   855
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
End Sub

Private Sub Form_Load()
Form1.Height = 4770
Form1.Width = 5865
bola.Top = 0
bola.Left = 0
            End Sub


Private Sub Timer1_Timer()
If Timer1.Interval = 1 Then
bola.Left = bola.Left - 40
If bola.Left < -100 Then
Timer1.Interval = 2
Else
bola.Left = bola.Left - 40
End If
End If
If Timer1.Interval = 2 Then
bola.Left = bola.Left + 40
If bola.Left > 4790 Then
Timer1.Interval = 1
Else
bola.Left = bola.Left + 40
End If
End If
End Sub


Private Sub Timer2_Timer()
If Timer2.Interval = 1 Then
bola.Top = bola.Top - 40
If bola.Top = 0 Then
Timer2.Interval = 2
Else
bola.Top = bola.Top - 40
End If
End If
If Timer2.Interval = 2 Then
bola.Top = bola.Top + 40
If bola.Top = 3480 Then
Timer2.Interval = 1
Else
bola.Top = bola.Top + 40
End If
End If
End Sub
