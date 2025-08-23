File Operations

🎯 **Scenario:**  
Now you’re an **architect** in the Linux world. You’ll build houses (files), make copies, move them, or demolish them.

✅ **Objectives / Use Cases:**  
- Create new folders/files  
- Copy files for backup  
- Rename or move files  
- Delete files when done  

🖥️ **Commands to Try**
```bash
mkdir myfolder         # Create folder
touch notes.txt        # Create file
cp notes.txt notes.bak # Copy file
mv notes.txt journal.txt # Rename file
rm journal.txt         # Delete file
```

🏆 **Mini-Challenge:**  
Make a secret diary:  
```bash
mkdir diary
echo "Today I learned Linux!" > diary/day1.txt
cat diary/day1.txt
```