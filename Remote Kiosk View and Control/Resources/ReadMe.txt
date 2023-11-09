Set Device to accept remote connections first.

1. Go to Registry Editor.
2. File > Connect Network Registry.
3. Add name of PC you want to connect to.
4. Navigate to "(PC Name)\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services"

If "Shadow" exists {
	Double click and change Value to "2"

Else {
	Right Click > New > DWORD > Name it "Shadow" and set Value to "2"