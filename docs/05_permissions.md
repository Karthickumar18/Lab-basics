# Section 5: Permissions & Ownership

🎯 **Scenario:**  
You are the **security guard** of your Linux world. Permissions decide who can read, write, or enter.

✅ **Objectives / Use Cases:**  
- Check file permissions  
- Restrict access for privacy  
- Give read access to others  
- Change ownership (with admin powers)  

🖥️ **Commands to Try**
```bash
ls -l notes.bak       # See permissions
chmod 600 notes.bak   # Owner only
chmod 644 notes.bak   # Owner + read for others
sudo chown root notes.bak # Change owner
```

🏆 **Mini-Challenge:**  
Protect your diary:  
```bash
chmod 600 diary/day1.txt
ls -l diary/day1.txt
```  
