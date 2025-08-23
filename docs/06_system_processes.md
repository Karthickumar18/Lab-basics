System Info & Processes

🎯 **Scenario:**  
You’re now an **engineer** monitoring a factory (the computer). Let’s check its storage and processes.

✅ **Objectives / Use Cases:**  
- Check disk usage  
- Check folder space usage  
- Monitor running processes  
- Find memory-heavy apps  

🖥️ **Commands to Try**
```bash
df -h                   # Disk space
du -sh .                # Folder size
top                     # Running processes
ps aux --sort=-%mem | head -n 3  # Top 3 memory apps
```

🏆 **Mini-Challenge:**  
Run `top` and find which process uses the most CPU. Can you identify it?