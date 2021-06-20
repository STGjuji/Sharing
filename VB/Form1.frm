VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6585
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12840
   LinkTopic       =   "Form1"
   ScaleHeight     =   6585
   ScaleWidth      =   12840
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Clear"
      Height          =   735
      Left            =   8160
      TabIndex        =   10
      Top             =   960
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Decimal til hex"
      Height          =   435
      Left            =   6240
      TabIndex        =   9
      Top             =   840
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   2
      Left            =   5160
      TabIndex        =   7
      Top             =   1680
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   1
      Left            =   3960
      TabIndex        =   6
      Top             =   1680
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Index           =   0
      Left            =   2760
      TabIndex        =   5
      Top             =   1680
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Hex til decimal"
      Height          =   495
      Left            =   6480
      TabIndex        =   4
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   2
      Left            =   5160
      TabIndex        =   3
      Top             =   720
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   1
      Left            =   3960
      TabIndex        =   2
      Top             =   720
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Index           =   0
      Left            =   2760
      TabIndex        =   1
      Top             =   720
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Hexdecimal"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1320
      TabIndex        =   8
      Top             =   1560
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Decimal"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1560
      TabIndex        =   0
      Top             =   600
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim HexValue As String
Private Sub Command1_Click()
For i = 0 To 2
    HexValue = Text2(i).Text
    Text1(i).Text = (Val("&H" + HexValue))
Next i

End Sub

Private Sub Command2_Click()
For i = 0 To 2
    If n <= 255 Then
        n = Val(Text1(i).Text)
        Text2(i).Text = Hex(n)
    Else
    End If
Next i


End Sub

Private Sub Command3_Click()
For i = 0 To 2
    Text1(i).Text = ""
    Text2(i).Text = ""
Next i

End Sub

