Viewing & Searching Files

🎯 **Scenario:**  
You are a **detective**. Files hold secrets, and you need tools to read and search inside them.

✅ **Objectives / Use Cases:**  
- View file contents quickly  
- Show first/last few lines  
- Search for keywords  
- Find files by name  

🖥️ **Commands to Try**
```bash
cat notes.bak        # Show whole file
head notes.bak       # First lines
tail notes.bak       # Last lines
grep "Hello" notes.bak  # Search text
find . -name "*.txt"    # Find files
```

🏆 **Mini-Challenge:**  
Search for the word “Linux” in your diary:  
```bash
grep "Linux" diary/day1.txt
```