VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7125
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4545
   LinkTopic       =   "Form1"
   ScaleHeight     =   7125
   ScaleWidth      =   4545
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command8 
      Caption         =   "Guardar"
      Height          =   495
      Left            =   3240
      TabIndex        =   18
      Top             =   4080
      Width           =   855
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Next"
      Height          =   495
      Left            =   3600
      TabIndex        =   17
      Top             =   5880
      Width           =   615
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Prev"
      Height          =   495
      Left            =   240
      TabIndex        =   16
      Top             =   5880
      Width           =   615
   End
   Begin VB.Data Data1 
      Caption         =   "Clientes"
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
      RecordSource    =   "Clientes"
      Top             =   6000
      Width           =   2535
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Siguiente"
      Height          =   495
      Left            =   2520
      TabIndex        =   15
      Top             =   5040
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Anterior"
      Height          =   495
      Left            =   960
      TabIndex        =   14
      Top             =   5040
      Width           =   735
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Modificar"
      Height          =   495
      Left            =   1200
      TabIndex        =   13
      Top             =   4080
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Eliminar"
      Height          =   495
      Left            =   2280
      TabIndex        =   12
      Top             =   4080
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Nuevo"
      Height          =   495
      Left            =   240
      TabIndex        =   11
      Top             =   4080
      Width           =   735
   End
   Begin VB.TextBox Text5 
      DataField       =   "Direcciòn"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   10
      Top             =   1920
      Width           =   2295
   End
   Begin VB.TextBox Text4 
      DataField       =   "Telèfono"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   9
      Top             =   2400
      Width           =   2295
   End
   Begin VB.TextBox Text3 
      DataField       =   "NIT"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   8
      Top             =   2880
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      DataField       =   "Nombre"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   7
      Top             =   1440
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      DataField       =   "Codigo"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1920
      TabIndex        =   6
      Top             =   960
      Width           =   2295
   End
   Begin VB.Label Label3 
      Caption         =   "Nombre"
      Height          =   255
      Index           =   4
      Left            =   240
      TabIndex        =   5
      Top             =   1440
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "Direccion"
      Height          =   255
      Index           =   3
      Left            =   240
      TabIndex        =   4
      Top             =   1920
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "Telefono"
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   3
      Top             =   2400
      Width           =   735
   End
   Begin VB.Label Label6 
      Caption         =   "NIT"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   2
      Top             =   2880
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Codigo"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   735
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Clientes"
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
      TabIndex        =   0
      Top             =   240
      Width           =   1245
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Data1.Recordset.AddNew
End Sub

Private Sub Command2_Click()
Me.Hide
Form5.Show

End Sub

Private Sub Command3_Click()
Data1.Recordset.Delete
End Sub

Private Sub Command4_Click()
Data1.Recordset.Edit
End Sub

Private Sub Command5_Click()
Me.Hide
Form2.Show
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
