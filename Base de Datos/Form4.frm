VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   6480
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4410
   LinkTopic       =   "Form4"
   ScaleHeight     =   6480
   ScaleWidth      =   4410
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command8 
      Caption         =   "Guardar"
      Height          =   495
      Left            =   3240
      TabIndex        =   18
      Top             =   3960
      Width           =   855
   End
   Begin VB.TextBox Text1 
      DataField       =   "Codigo"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   11
      Top             =   840
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      DataField       =   "Modelo"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   10
      Top             =   1320
      Width           =   2295
   End
   Begin VB.TextBox Text3 
      DataField       =   "Cantidad"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   9
      Top             =   2760
      Width           =   2295
   End
   Begin VB.TextBox Text4 
      DataField       =   "Marca"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   8
      Top             =   2280
      Width           =   2295
   End
   Begin VB.TextBox Text5 
      DataField       =   "Año"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   7
      Top             =   1800
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Nuevo"
      Height          =   495
      Left            =   360
      TabIndex        =   6
      Top             =   3960
      Width           =   615
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Eliminar"
      Height          =   495
      Left            =   2280
      TabIndex        =   5
      Top             =   3960
      Width           =   735
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Modificar"
      Height          =   495
      Left            =   1200
      TabIndex        =   4
      Top             =   3960
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Anterior"
      Height          =   495
      Left            =   960
      TabIndex        =   3
      Top             =   4920
      Width           =   735
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Siguiente"
      Height          =   495
      Left            =   2520
      TabIndex        =   2
      Top             =   4920
      Width           =   855
   End
   Begin VB.Data Data1 
      Caption         =   "Vehiculos"
      Connect         =   "Access"
      DatabaseName    =   "C:\Users\GODINEZ\Documents\Brandon\Práctica\Base de Datos\Almacen.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   375
      Left            =   960
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Vehìculos"
      Top             =   5880
      Width           =   2535
   End
   Begin VB.CommandButton Command6 
      Caption         =   "An"
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   5760
      Width           =   495
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Si"
      Height          =   495
      Left            =   3600
      TabIndex        =   0
      Top             =   5760
      Width           =   495
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Vehiculos"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   17
      Top             =   120
      Width           =   1485
   End
   Begin VB.Label Label2 
      Caption         =   "Codigo"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   16
      Top             =   840
      Width           =   735
   End
   Begin VB.Label Label6 
      Caption         =   "Cantidad"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   15
      Top             =   2760
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "Marca"
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   14
      Top             =   2280
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "Año"
      Height          =   255
      Index           =   3
      Left            =   240
      TabIndex        =   13
      Top             =   1800
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "Modelo"
      Height          =   255
      Index           =   4
      Left            =   240
      TabIndex        =   12
      Top             =   1320
      Width           =   735
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Data1.Recordset.AddNew
End Sub

Private Sub Command2_Click()
Me.Hide
Form3.Show

End Sub

Private Sub Command3_Click()
Data1.Recordset.Delete
End Sub

Private Sub Command4_Click()
Data1.Recordset.Edit
End Sub

Private Sub Command5_Click()
Me.Hide
Form5.Show
End Sub

Private Sub Command6_Click()
Data1.Recordset.MovePrevious
If Data1.Recordset.BOF Then
Data1.Recordset.MoveLast
End If
End Sub

Private Sub Command7_Click()
Data1.Recordset.MoveNext
If Data1.Recordset.EOF Then
Data1.Recordset.MoveFirst
End If
End Sub

Private Sub Command8_Click()
Data1.Recordset.Update
End Sub
