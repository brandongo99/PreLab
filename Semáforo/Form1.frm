VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6585
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5355
   LinkTopic       =   "Form1"
   ScaleHeight     =   6585
   ScaleWidth      =   5355
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Left            =   4680
      Top             =   3120
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Left            =   4680
      Top             =   3600
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Iniciar"
      Height          =   375
      Left            =   1920
      TabIndex        =   1
      Top             =   5160
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Left            =   4680
      Top             =   4080
   End
   Begin VB.PictureBox Picture1 
      Height          =   3735
      Left            =   600
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   3675
      ScaleWidth      =   3675
      TabIndex        =   0
      Top             =   960
      Width           =   3735
      Begin VB.Shape Shape3 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         Height          =   975
         Left            =   1440
         Shape           =   3  'Circle
         Top             =   2520
         Width           =   855
      End
      Begin VB.Shape Shape2 
         BackColor       =   &H0000FFFF&
         BackStyle       =   1  'Opaque
         Height          =   975
         Left            =   1440
         Shape           =   3  'Circle
         Top             =   1560
         Width           =   855
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H0000FF00&
         BackStyle       =   1  'Opaque
         FillColor       =   &H00FFFFFF&
         Height          =   975
         Left            =   1440
         Shape           =   3  'Circle
         Top             =   480
         Width           =   855
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Form_Load()
Shape1.BackColor = &HFF00&
Shape2.BackColor = &HFFFF&
Shape3.BackColor = &HFF&
Timer1.Interval = 2000
Timer2.Interval = 2000
Timer3.Interval = 2000
End Sub

Private Sub Timer1_Timer()
Timer3.Enabled = False
If Timer1.Enabled = True Then
Shape1.BackColor = &HFF00&
Shape2.BackColor = Black
Shape3.BackColor = Black
Timer2.Enabled = True
End If
End Sub

Private Sub Timer2_Timer()
Timer1.Enabled = False
If Timer2.Enabled = True Then
Shape1.BackColor = Black
Shape2.BackColor = &HFFFF&
Shape3.BackColor = Black
Timer3.Enabled = True
End If
End Sub

Private Sub Timer3_Timer()
Timer2.Enabled = False
If Timer3.Enabled = True Then
Shape1.BackColor = Black
Shape2.BackColor = Black
Shape3.BackColor = &HFF&
Timer1.Enabled = True
End If
End Sub
