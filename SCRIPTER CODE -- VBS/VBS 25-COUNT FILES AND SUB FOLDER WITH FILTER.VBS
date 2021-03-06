DIM objStartFolder
DIM objFolder
DIM I_COUNT
DIM VAR_PATH_SCANNER

Dim FSO
Set FSO = CreateObject("Scripting.FileSystemObject")
Set objFSO = CreateObject("Scripting.FileSystemObject")

FOLDER_PATH="D:\DSC\2015-2018\2018 CyberShot HX60V\DCIM\WORK"
'FOLDER_PATH="D:\DSC\z compare\NIKON TOTAL"

IF FSO.FolderExists(FOLDER_PATH)=FALSE THEN 
	MSGBOX "FOLDER NOT EXIST"
	Wscript.QUIT
END IF

'Call the Search subroutine to start the recursive search.
Search objFSO.GetFolder(FOLDER_PATH)

MSGBOX "FILE COUNT FILTERING _ " & CSTR(I_COUNT) 

SET objFSO = NOTHING
Wscript.QUIT
'-------------------------------------------------------------------
'-------------------------------------------------------------------

'------------------------------------------------
Sub Search(Folder)
'------------------------------------------------
	ON ERROR RESUME NEXT
	
	ERR.CLEAR
	for each file in Folder.Files
		IF ERR.NUMBER=0 THEN 
			SET_GO=FALSE
			IF instr(UCASE(file.NAME),".JPG")>0 THEN SET_GO=TRUE
			IF instr(file.PATH,"\DOC")>0 THEN SET_GO=FALSE
			IF instr(file.PATH,"\_gsdata_")>0 THEN SET_GO=FALSE
			IF SET_GO=TRUE THEN 
				I_COUNT=I_COUNT+1
			END IF
		END IF
	NEXT

	'Find EACH SUBFOLDER.
	For Each subFolder In Folder.SubFolders

		'Call the Search subroutine to start the recursive search on EACH SUBFOLDER.
		Search objFSO.GetFolder(subFolder.Path)
	Next

End Sub
		

'---------
' REFERANCE
'---------
' How Can I Get a List of All the Files in a Folder and Its Subfolders? – Hey, Scripting Guy! Blog
' https://blogs.technet.microsoft.com/heyscriptingguy/2004/10/20/how-can-i-get-a-list-of-all-the-files-in-a-folder-and-its-subfolders/
' ----

' ----
' windows - VBS to Search for Multiple Files Recursively in C:\Users - Stack Overflow
' https://stackoverflow.com/questions/25658004/vbs-to-search-for-multiple-files-recursively-in-c-users
' ----

' THIS PROJECT USING THIS CODE
' ----
' vbscript - Read files in subfolders - Stack Overflow
' https://stackoverflow.com/questions/16905278/read-files-in-subfolders
' ----