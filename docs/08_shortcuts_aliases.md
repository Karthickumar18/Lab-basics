# Section 8: Shortcuts, History & Aliases

🎯 **Scenario:**  
You are a **time wizard**. Reuse old spells (commands) and create magic shortcuts.

✅ **Objectives / Use Cases:**  
- Reuse past commands  
- Run last command instantly  
- Create handy aliases  
- Write custom functions  

🖥️ **Commands to Try**
```bash
history      # Show history
!!           # Repeat last command
alias ll="ls -la"   # Create shortcut
echo "alias ll='ls -la'" >> ~/.bashrc
source ~/.bashrc
greet() { echo "Hello, $1!"; }
greet Alice
```

🏆 **Mini-Challenge:**  
Create an alias called `hi` that runs:  
```bash
echo "Hi, Linux World!"
```  
Try it out!  
